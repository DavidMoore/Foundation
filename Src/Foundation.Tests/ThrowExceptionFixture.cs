using System;
using NUnit.Framework;

namespace Foundation.Tests
{
    [TestFixture]
    public class AssertionFixture
    {
        [Test, ExpectedException(typeof(FoundationException), "Expected exception message")]
        public void Is_false_assertion_throws_invalid_operation_exception_when_false()
        {
            ThrowException.IfTrue(true, "Expected exception message");
        }

        [Test, ExpectedException(typeof(FoundationException), "Expected exception message")]
        public void Is_true_assertion_throws_invalid_operation_exception_when_false()
        {
            ThrowException.IfFalse(false, "Expected exception message");
        }

        [Test, ExpectedException(typeof(ArgumentNullException))]
        public void Throws_ArgumentNullException_on_null_argument_check()
        {
            string test = null;
            ThrowException.IfArgumentIsNull("test", test);
        }

        [Test, ExpectedException(typeof(ArgumentNullException))]
        public void Throws_ArgumentNullException_on_not_null_or_empty_argument_check_when_argument_is_null()
        {
            ThrowException.IfArgumentIsNullOrEmpty("param1", null);
        }

        [Test, ExpectedException(typeof(ArgumentException))]
        public void Throws_ArgumentException_on_not_null_or_empty_argument_check_when_argument_is_empty_string()
        {
            ThrowException.IfArgumentIsNullOrEmpty("param1", string.Empty);
        }

        [Test, ExpectedException(typeof(ArgumentException))]
        public void Throws_ArgumentException_on_not_null_or_empty_argument_check_when_argument_is_whitespace_string()
        {
            ThrowException.IfArgumentIsNullOrEmpty("param1", "\t  ");
        }

        [Test, ExpectedException(typeof(NullReferenceException), "The passed value is null")]
        public void Throws_Exception_if_passed_value_is_null()
        {
            ThrowException.IfNull(null, "The passed value is null");
        }

        [Test, ExpectedException(typeof(NullReferenceException), "The passed value called \"test\" is null")]
        public void ThrowException_IfNull_allows_string_format_parameters()
        {
            ThrowException.IfNull(null, "The passed value called \"{0}\" is null", "test");
        }

        [Test, ExpectedException(typeof(InvalidOperationException))]
        public void ThrowException_throws_specified_exception_type_when_generic_IfTrue_is_used()
        {
            ThrowException.IfTrue<InvalidOperationException>(true);
        }

        [Test, ExpectedException(typeof(InvalidOperationException), "Test exception message")]
        public void Generic_IfTrue_can_throw_specified_exception_with_specified_message()
        {
            ThrowException.IfTrue<InvalidOperationException>(true, "Test exception message");
        }

        [Test]
        public void Generic_IfTrue_should_not_throw_exception_if_passed_value_is_false()
        {
            ThrowException.IfTrue<InvalidOperationException>(false);
        }

        [Test]
        public void Generic_IfNull_should_not_throw_exception_if_passed_value_is_not_null()
        {
            ThrowException.IfNull<InvalidOperationException>( new object() );
        }
    }
}