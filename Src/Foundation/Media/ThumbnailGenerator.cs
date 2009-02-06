using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using Foundation.Media;

namespace Foundation.Media
{
    public class ThumbnailGenerator : IThumbnailGenerator
    {
        const int DefaultWidth = 200;
        const int DefaultHeight = 200;

        public ThumbnailGenerator()
        {
            Options = new ThumbnailOptions {Width = DefaultWidth, Height = DefaultHeight};
        }

        public ThumbnailOptions Options { get; set; }

        public void Generate(string filename, string destinationFilename)
        {
            ThrowException.IfArgumentIsNullOrEmpty("filename", filename);

            var file = new FileInfo(filename);

            ThrowException.IfFalse<FileNotFoundException>( file.Exists, "The image filename {0} couldn't be found.", filename );

            using( var source = new Bitmap(file.FullName))
            using( var destination = new Bitmap(Options.Width, Options.Height))
            using( var graphics = Graphics.FromImage(destination))
            {
                graphics.InterpolationMode = InterpolationMode.HighQualityBicubic;

                var srcRect = CalculateSourceRectangle( source.Width, source.Height, Options.Width, Options.Height  );
                var destRect = new Rectangle(0, 0, Options.Width, Options.Height);

                graphics.DrawImage(source, destRect, srcRect, GraphicsUnit.Pixel );
                graphics.Flush();
                graphics.Flush(FlushIntention.Sync);
                graphics.Flush(FlushIntention.Flush);

                destination.Save( destinationFilename, ImageFormat.Png);
            }
        }

        public Rectangle CalculateSourceRectangle(int originalWidth, int originalHeight, int thumbWidth, int thumbHeight)
        {
            var sourceAspectRatio = originalWidth / (double)originalHeight;
            var thumbAspectRatio = thumbWidth / (double) thumbHeight;

            // If both aspect ratios are the same, we don't need to do cropping
            if( sourceAspectRatio == thumbAspectRatio ) return new Rectangle(0, 0, originalWidth, originalHeight);

            if( sourceAspectRatio > 1)
            {
                // Image is wider than it is tall
                if (thumbAspectRatio > sourceAspectRatio)
                {
                    var sourceHeight = (int)(originalWidth / thumbAspectRatio);
                    var x = 0;
                    var y = (originalHeight - sourceHeight) / 2;
                    var sourceWidth = originalWidth;

                    return new Rectangle(x, y, sourceWidth, sourceHeight);
                }
                else
                {
                    var sourceWidth = (int) (thumbAspectRatio * originalHeight);
                    var y = 0;
                    var x = (originalWidth - sourceWidth) / 2;
                    var sourceHeight = originalHeight;

                    return new Rectangle(x, y, sourceWidth, sourceHeight);
                }
            }

            if( sourceAspectRatio < 1)
            {
                // Image is taller than it is wide
                var sourceHeight = (int)((thumbHeight / (double)thumbWidth) * originalWidth);
                var x = 0;
                var y = (originalHeight - sourceHeight) / 2;
                var sourceWidth = originalWidth;

                return new Rectangle(x, y, sourceWidth, sourceHeight);
            }

            // Image is square
            if (thumbAspectRatio > sourceAspectRatio)
            {
                // Thumbnail aspect ratio is wider than original
                var sourceHeight = (int)(originalWidth / thumbAspectRatio);
                var x = 0;
                var y = (originalHeight - sourceHeight) / 2;
                var sourceWidth = originalWidth;

                return new Rectangle(x, y, sourceWidth, sourceHeight);
            }
            else
            {
                var sourceWidth = (int) (thumbAspectRatio * originalHeight);
                var y = 0;
                var x = (originalWidth - sourceWidth) / 2;
                var sourceHeight = originalHeight;

                return new Rectangle(x, y, sourceWidth, sourceHeight);
            }
        }
    }
}