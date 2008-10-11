using System.Collections.Generic;
using Castle.ActiveRecord;
using Castle.Components.Validator;
using Foundation.Data.ActiveRecord;
using Foundation.Services;
using Foundation.Services.Repository;
using Foundation.Services.Validation;
using NUnit.Framework;

namespace Foundation.Tests.Services.Validation
{
    [TestFixture]
    public class ActiveRecordValidatorTestCase : DatabaseFixtureBase
    {
        [ActiveRecord]
        internal class MockInvalidTestObject
        {
            [PrimaryKey]
            public int MockObjectId { get; set; }

            [ValidateNonEmpty, Property]
            public string Name { get; set; }

            [ValidateEmail, Property]
            public string Email { get; set; }
        }

        public ActiveRecordValidatorTestCase()
        {
            Ioc.Initialize();
        }

        public override void RegisterTypes()
        {
            base.RegisterTypes();

            RegisterTypes(typeof(MockInvalidTestObject));
        }

        [Test]
        public void Can_get_list_of_errors_for_specific_property()
        {
            var value = new MockInvalidTestObject {Name = null, Email = "invalid"};

            IValidationErrors errors = new ActiveRecordModelValidator().GetValidationErrors(value);

            IList<IValidationPropertyError> propErrors = errors.ErrorsForProperty("Name");

            Assert.IsNotNull(propErrors);
            Assert.AreEqual(1, propErrors.Count);
            Assert.AreEqual(propErrors[0].PropertyName, "Name");
        }

        [Test]
        public void Can_get_validation_errors_object_for_model()
        {
            var value = new MockInvalidTestObject {Name = "Test", Email = "valid_emai@email.com"};

            var validator = new ActiveRecordModelValidator();
            IValidationErrors errors = validator.GetValidationErrors(value);

            Assert.IsNotNull(errors);
        }

        [Test]
        public void Invalid_property_count_matches_for_invalid_model()
        {
            var value = new MockInvalidTestObject {Name = null, Email = "invalid"};

            var validator = new ActiveRecordModelValidator();
            IValidationErrors errors = validator.GetValidationErrors(value);

            Assert.AreEqual(2, errors.Count);
        }

        [Test]
        [ExpectedException(typeof(ModelValidationException))]
        public void Validation_associates_with_repository_and_throws_exception_for_invalid_model_when_saved()
        {
            IRepository<MockInvalidTestObject> repository =
                new ActiveRecordRepository<MockInvalidTestObject>(new ActiveRecordModelValidator());

            var value = new MockInvalidTestObject {Name = null, Email = "invalidEmail"};
            repository.Save(value);
        }

        [Test]
        [ExpectedException(typeof(ModelValidationException))]
        public void Validation_exception_thrown_when_invalid_property_encountered()
        {
            var value = new MockInvalidTestObject {Name = null, Email = string.Empty};
            new ActiveRecordModelValidator().Validate(value);
        }

        [Test]
        public void Validation_succeeds_for_valid_properties()
        {
            var value = new MockInvalidTestObject {Name = "Test", Email = "valid_emai@email.com"};
            new ActiveRecordModelValidator().Validate(value);
        }
    }
}