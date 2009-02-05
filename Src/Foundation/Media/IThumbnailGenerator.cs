using System.Drawing;

namespace Foundation.Media
{
    public interface IThumbnailGenerator
    {
        ThumbnailOptions Options { get; set; }

        void Generate(string filename, string destinationFilename);

        Rectangle CalculateSourceRectangle(int originalWidth, int originalHeight, int thumbWidth, int thumbHeight);
    }
}