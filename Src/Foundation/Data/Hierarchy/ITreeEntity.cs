using Foundation.Services.Security;

namespace Foundation.Data.Hierarchy
{
    /// <summary>
    /// Marks an entity as having tree hierarchy info
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public interface ITreeEntity<T> where T : class, ITreeEntity<T>, IEntity
    {
        TreeInfo<T> TreeInfo { get; set; }
    }
}