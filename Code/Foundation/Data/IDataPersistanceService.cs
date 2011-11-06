namespace Foundation.Data
{
    public interface IDataPersistanceService
    {
        T Save<T>(T data);
    }
}