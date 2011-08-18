using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Services;
using System.Linq;
using System.Reflection;
using NHibernate;

namespace Foundation.Data.Hibernate
{
    /// <summary>
    /// NHibernate reflection data context for use in things like WCF Data Services.
    /// </summary>
    public class HibernateDataContext : IUpdatable
    {
        readonly List<object> entityToRemove = new List<object>();
        readonly List<object> entityToUpdate = new List<object>();
        
        public virtual ISession Session { get; protected set; }

        public HibernateDataContext(ISession session)
        {
            Session = session;
        }
        
        /// <summary>
        /// Creates the resource of the given type and belonging to the given container
        /// </summary>
        /// <param name="containerName">container name to which the resource needs to be added</param>
        /// <param name="fullTypeName">full type name i.e. Namespace qualified type name of the resource</param>
        /// <returns>object representing a resource of given type and belonging to the given container</returns>
        object IUpdatable.CreateResource(string containerName, string fullTypeName)
        {
            Type t = Type.GetType(fullTypeName, true);
            object resource = Activator.CreateInstance(t);

            entityToUpdate.Add(resource);

            return resource;
        }

        /// <summary>
        /// Gets the resource of the given type that the query points to
        /// </summary>
        /// <param name="query">query pointing to a particular resource</param>
        /// <param name="fullTypeName">full type name i.e. Namespace qualified type name of the resource</param>
        /// <returns>object representing a resource of given type and as referenced by the query</returns>
        object IUpdatable.GetResource(IQueryable query, string fullTypeName)
        {
            object resource = null;

            foreach (object item in query)
            {
                if (resource != null)
                {
                    throw new DataServiceException("The query must return a single resource");
                }
                resource = item;
            }

            if (resource == null)
                throw new DataServiceException(404, "Resource not found");

            // fullTypeName can be null for deletes
            if (fullTypeName != null && resource.GetType().FullName != fullTypeName)
                throw new Exception("Unexpected type for resource");

            return resource;
        }


        /// <summary>
        /// Resets the value of the given resource to its default value
        /// </summary>
        /// <param name="resource">resource whose value needs to be reset</param>
        /// <returns>same resource with its value reset</returns>
        public object ResetResource(object resource)
        {
            return resource;
        }

        /// <summary>
        /// Sets the value of the given property on the target object
        /// </summary>
        /// <param name="targetResource">target object which defines the property</param>
        /// <param name="propertyName">name of the property whose value needs to be updated</param>
        /// <param name="propertyValue">value of the property</param>
        public void SetValue(object targetResource, string propertyName, object propertyValue)
        {
            PropertyInfo propertyInfo = targetResource.GetType().GetProperty(propertyName);
            propertyInfo.SetValue(targetResource, propertyValue, null);

            if (!entityToUpdate.Contains(targetResource))
                entityToUpdate.Add(targetResource);
        }

        /// <summary>
        /// Gets the value of the given property on the target object
        /// </summary>
        /// <param name="targetResource">target object which defines the property</param>
        /// <param name="propertyName">name of the property whose value needs to be updated</param>
        /// <returns>the value of the property for the given target resource</returns>
        public object GetValue(object targetResource, string propertyName)
        {
            PropertyInfo propertyInfo = targetResource.GetType().GetProperty(propertyName);
            return propertyInfo.GetValue(targetResource, null);
        }

        /// <summary>
        /// Sets the value of the given reference property on the target object
        /// </summary>
        /// <param name="targetResource">target object which defines the property</param>
        /// <param name="propertyName">name of the property whose value needs to be updated</param>
        /// <param name="propertyValue">value of the property</param>
        public void SetReference(object targetResource, string propertyName, object propertyValue)
        {
            ((IUpdatable) this).SetValue(targetResource, propertyName, propertyValue);
        }

        /// <summary>
        /// Adds the given value to the collection
        /// </summary>
        /// <param name="targetResource">target object which defines the property</param>
        /// <param name="propertyName">name of the property whose value needs to be updated</param>
        /// <param name="resourceToBeAdded">value of the property which needs to be added</param>
        public void AddReferenceToCollection(object targetResource, string propertyName, object resourceToBeAdded)
        {
            PropertyInfo pi = targetResource.GetType().GetProperty(propertyName);
            if (pi == null)
                throw new Exception("Can't find property");

            var collection = (IList) pi.GetValue(targetResource, null);
            collection.Add(resourceToBeAdded);

            if (!entityToUpdate.Contains(targetResource))
                entityToUpdate.Add(targetResource);
        }

        /// <summary>
        /// Removes the given value from the collection
        /// </summary>
        /// <param name="targetResource">target object which defines the property</param>
        /// <param name="propertyName">name of the property whose value needs to be updated</param>
        /// <param name="resourceToBeRemoved">value of the property which needs to be removed</param>
        public void RemoveReferenceFromCollection(object targetResource, string propertyName, object resourceToBeRemoved)
        {
            PropertyInfo pi = targetResource.GetType().GetProperty(propertyName);
            if (pi == null)
                throw new Exception("Can't find property");
            var collection = (IList) pi.GetValue(targetResource, null);
            collection.Remove(resourceToBeRemoved);

            if (!entityToUpdate.Contains(targetResource))
                entityToUpdate.Add(targetResource);
        }

        /// <summary>
        /// Delete the given resource
        /// </summary>
        /// <param name="targetResource">resource that needs to be deleted</param>
        public void DeleteResource(object targetResource)
        {
            entityToRemove.Add(targetResource);
        }

        /// <summary>
        /// Saves all the pending changes made till now
        /// </summary>
        public void SaveChanges()
        {
            using (ITransaction transaction = Session.BeginTransaction())
            {
                Session.FlushMode = FlushMode.Commit;

                foreach (object entity in entityToUpdate)
                {
                    Session.SaveOrUpdate(entity);
                }

                foreach (object entity in entityToRemove)
                {
                    Session.Delete(entity);
                }

                transaction.Commit();
            }
        }

        /// <summary>
        /// Returns the actual instance of the resource represented by the given resource object
        /// </summary>
        /// <param name="resource">object representing the resource whose instance needs to be fetched</param>
        /// <returns>The actual instance of the resource represented by the given resource object</returns>
        public object ResolveResource(object resource)
        {
            return resource;
        }

        /// <summary>
        /// Revert all the pending changes.
        /// </summary>
        public void ClearChanges() {}
    }
}