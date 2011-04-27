namespace Foundation.Windows
{
    public interface IProcessResult
    {
        string StandardOutput { get; }
        string StandardError { get; }
        int ExitCode { get; }
    }
}