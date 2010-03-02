using System.Drawing;

namespace Foundation.Media
{
    public interface IThumbnailGenerator
    {
        ThumbnailOptions Options { get; set; }

        /// <summary>
        /// Cache provider for caching thumbnails, preventing the expensive cost of regenerating thumbnails every time
        /// </summary>
        IThumbnailCache Cache { get; }

        void Generate(string fileName, string destinationFileName);

        Rectangle CalculateSourceRectangle(int originalWidth, int originalHeight, int thumbWidth, int thumbHeight);
    }
}