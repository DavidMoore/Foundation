namespace Foundation.Services
{
    /// <summary>
    /// Denotes the intended audience for a message.
    /// </summary>
    public enum MessageAudience
    {
        /// <summary>
        /// The message doesn't have a set audience,
        /// so a default audience can be used, or the message
        /// not shown in the UI.
        /// </summary>
        None = 0,

        /// <summary>
        /// Message is intended to be seen by developers.
        /// </summary>
        Developer,

        /// <summary>
        /// Message is intended for testers.
        /// </summary>
        Tester,

        /// <summary>
        /// Message is intended to be seen by the end user.
        /// </summary>
        User
    }
}