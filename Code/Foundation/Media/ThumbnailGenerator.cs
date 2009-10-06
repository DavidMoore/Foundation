using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;

namespace Foundation.Media
{
    public class ThumbnailGenerator : IThumbnailGenerator
    {
        const int DefaultHeight = 200;
        const int DefaultWidth = 200;

        public ThumbnailGenerator()
        {
            Options = new ThumbnailOptions {Width = DefaultWidth, Height = DefaultHeight};
            Cache = new ThumbnailCache();
        }

        public ThumbnailOptions Options { get; set; }

        public IThumbnailCache Cache { get; set; }

        public void Generate(string filename, string destinationFilename)
        {
            ThrowException.IfArgumentIsNullOrEmpty("filename", filename);

            var file = new FileInfo(filename);

            ThrowException.IfFalse<FileNotFoundException>(file.Exists, "The image filename {0} couldn't be found.", filename);

//            // See if the file exists in the cache
//            var cacheVersion = Cache.GetCacheFile(filename);
//
//            // If we have a cached version, copy it to the destination
//            if( cacheVersion != null)
//            {
//                cacheVersion.CopyTo(destinationFilename, true);
//                return;
//            }

            using( var source = new Bitmap(file.FullName) )
            using( var destination = new Bitmap(Options.Width, Options.Height, PixelFormat.Format24bppRgb) )
            using( var graphics = Graphics.FromImage(destination) )
            {
                destination.SetResolution(72, 72); // 72dpi is standard screen resolution

                graphics.SmoothingMode = SmoothingMode.HighQuality;
                graphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
                graphics.PixelOffsetMode = PixelOffsetMode.HighQuality;

                var srcRect = CalculateSourceRectangle(source.Width, source.Height, Options.Width, Options.Height);
                var destRect = new Rectangle(0, 0, Options.Width, Options.Height);

                graphics.DrawImage(source, destRect, srcRect, GraphicsUnit.Pixel);
                graphics.Flush();

                destination.Save(destinationFilename, ImageFormat.Png);

                // Add to the cache
                Cache.Add(filename, Options.Width, Options.Height);
            }
        }

        public Size CalculateSourceDimensions(int originalWidth, int originalHeight, int thumbWidth, int thumbHeight)
        {
            var sourceAspectRatio = originalWidth / (double)originalHeight;
            var thumbAspectRatio = thumbWidth / (double)thumbHeight;

            // If both aspect ratios are the same, we don't need to do any cropping
            if (sourceAspectRatio == thumbAspectRatio) return new Size(originalWidth, originalHeight);

            var sourceWidth = originalWidth;
            var sourceHeight = originalHeight;

            if (thumbAspectRatio > sourceAspectRatio)
            {
                // Crop vertically
                sourceHeight = (int)(originalWidth * (thumbHeight / (double)thumbWidth));
            }
            else if (thumbAspectRatio < sourceAspectRatio)
            {
                // Crop horizontally
                sourceWidth = (int)(originalHeight * thumbAspectRatio);
            }

            return new Size(sourceWidth, sourceHeight);
        }

        public Rectangle CalculateSourceRectangle(int originalWidth, int originalHeight, int thumbWidth, int thumbHeight)
        {
            var size = CalculateSourceDimensions(originalWidth, originalHeight, thumbWidth, thumbHeight);

            // Center the cropped image, so equal parts are trimmed from the top and bottom,
            // or left and right sides (if needed)
            var x = (size.Width == originalWidth) ? 0 : (originalWidth - size.Width) / 2;
            var y = (size.Height == originalHeight) ? 0 : (originalHeight - size.Height) / 2;

            return new Rectangle(x, y, size.Width, size.Height);
        }
    }
}