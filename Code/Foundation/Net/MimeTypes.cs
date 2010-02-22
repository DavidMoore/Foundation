using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Reflection;

namespace Foundation.Net
{
    /// <summary>
    /// Defines common Internet media types
    /// </summary>
    public static class MimeTypes
    {
        /// <summary>
        /// Cached collection of all the Internet media types
        /// </summary>
        static IEnumerable<MimeType> all;

        /// <summary>
        /// Image Internet media types
        /// </summary>
        public static class Image
        {
            static IList<MimeType> all;

            public static IEnumerable<MimeType> All
            {
                get { return all ?? (all = GetMimeTypes(typeof (Image))); }
            }

            public static readonly MimeType Jpeg = new MimeType("JPEG", new[] {"jpg", "jpeg", "jpe","jif","jfif","jfi"}, "image/jpeg");
        }

        /// <summary>
        /// Video Internet media types
        /// </summary>
        public static class Video
        {
            static IList<MimeType> all;

            public static IEnumerable<MimeType> All
            {
                get { return all ?? (all = GetMimeTypes(typeof(Video))); }
            }

            [SuppressMessage("Microsoft.Naming", "CA1704:IdentifiersShouldBeSpelledCorrectly", MessageId = "Avi")]
            public readonly static MimeType Avi = new MimeType("AVI", new[] { "avi" }, "video/avi");
            public readonly static MimeType Flash = new MimeType("Flash Video", new[] { "flv" }, "video/x-flv");
            [SuppressMessage("Microsoft.Naming", "CA1704:IdentifiersShouldBeSpelledCorrectly", MessageId = "Matroska")]
            public readonly static MimeType Matroska = new MimeType("Matroska Video", new[] { "mkv" }, "video/x-mkv");
            public readonly static MimeType Mpeg = new MimeType("MPEG", new[] { "mpg", "mpeg", "mpe", "m1v", "m2v", "mpv2", "mp2v", "ts", "tp", "tpr", "pva", "pss", "m2ts", "m2t", "mts", "evo" }, "video/mpeg");
            public readonly static MimeType Mpeg4 = new MimeType("MPEG4", new[] { "mp4", "m4v", "hdmov", "3gp", "3gpp" }, "video/mp4");
            [SuppressMessage("Microsoft.Naming", "CA1704:IdentifiersShouldBeSpelledCorrectly", MessageId = "Ogg")]
            public readonly static MimeType Ogg = new MimeType("Ogg Media", new[] { "ogm", "ogv" }, "video/ogg");
            public readonly static MimeType DivX = new MimeType("DivX", new[] { "divx" }, "video/x-divx");
            public readonly static MimeType Quicktime = new MimeType("Quicktime", new[] { "mov", "qt", "amr", "3g2", "3gp2" }, "video/quicktime");
            public readonly static MimeType WindowsMedia = new MimeType("WindowsMedia", new[] { "wmv", "wmp", "wm", "asf" }, "video/x-ms-wmv");
            public readonly static MimeType RealMedia = new MimeType("RealMedia", new[] { "rm","rmm" }, "application/vnd.rn-realmedia");
            public readonly static MimeType RealVideo = new MimeType("RealVideo", new[] { "rv" }, "video/vnd.rn-realvideo");
        }

        static List<MimeType> GetMimeTypes(Type type)
        {
            var fields = type.GetFields(BindingFlags.Static | BindingFlags.Public ).ToList();
            var results = fields.ConvertAll(fieldInfo => (MimeType) fieldInfo.GetValue(null));
            return results;
        }

        /// <summary>
        /// Collection of all the defined Internet media types
        /// </summary>
        public static IEnumerable<MimeType> All
        {
            get
            {
                return all ?? (all = Video.All.Union(Image.All));
            }
        }
    }
}