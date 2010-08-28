namespace Foundation
{
    /// <summary>
    /// Marks a type that should be initialized after
    /// construction by calling <see cref="Initialize"/>.
    /// </summary>
    public interface ICanInitialize
    {
        /// <summary>
        /// Initializes this instance.
        /// </summary>
        void Initialize();
    }
}