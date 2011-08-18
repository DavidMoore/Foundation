namespace Foundation.Data
{
    /// <summary>
    /// A model mapper, that is responsible for mapping from one model type to another.
    /// For example, you may want to map from a DTO to an entity model, or vice versa.
    /// </summary>
    /// <typeparam name="TInput">The type to map from.</typeparam>
    /// <typeparam name="TOutput">The type to map to.</typeparam>
    public interface IDTOMapper<in TInput, out TOutput>
    {
        TOutput Map(TInput input);
    }
}