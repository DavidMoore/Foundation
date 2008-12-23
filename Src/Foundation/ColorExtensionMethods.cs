using System.Drawing;

namespace Foundation
{
    public static class ColorExtensionMethods
    {
        public static string ToHtml(this Color colour)
        {
            return ColorTranslator.ToHtml(colour);
        }
    }
}