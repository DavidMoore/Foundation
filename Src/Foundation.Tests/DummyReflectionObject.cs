namespace Foundation.Tests
{
    [DummyReflectionAttribute]
    internal class DummyReflectionObject
    {
        [DummyReflectionAttribute]
        public string StringProperty { get; set; }

        [DummyReflectionAttribute]
        public int IntegerProperty { get; set; }

        [DummyReflectionAttribute]
        protected string ProtectedProperty { get; set; }

        [DummyReflectionAttribute]
        string PrivateProperty { get; set; }
    }
}