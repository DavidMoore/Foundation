using System;
using System.Collections.Generic;
using System.IO;

namespace Foundation.ExtensionMethods
{
    public static class StreamExtensions
    {
        /// <summary>
        /// Reads in the contents of the stream in chunks, yielding
        /// each chunk per iteration until the end of the stream is reached.
        /// </summary>
        /// <param name="stream">The stream to read.</param>
        /// <param name="chunkSize">Size of the chunks to read.</param>
        /// <returns></returns>
        public static IEnumerable<byte[]> ReadChunks(this Stream stream, int chunkSize)
        {
            var buffer = new byte[chunkSize];
            int bytesRead;
            while( (bytesRead = stream.Read(buffer, 0, chunkSize)) > 0 )
            {
                if (bytesRead == chunkSize)
                {
                    yield return buffer;
                }
                else
                {
                    var smallerBuffer = new byte[bytesRead];
                    Array.Copy(buffer,smallerBuffer,bytesRead);
                    yield return smallerBuffer;
                }
            }
        }

        /// <summary>
        /// Writes the passed bytes to the specified stream.
        /// </summary>
        /// <param name="stream">The stream to write to.</param>
        /// <param name="bytes">The bytes to write.</param>
        public static void Write(this Stream stream, byte[] bytes)
        {
            stream.Write(bytes, 0, bytes.Length);
        }

        /// <summary>
        /// Reads all the bytes from stream <paramref name="input"/> and
        /// writes them to <paramref name="output"/>.
        /// </summary>
        /// <param name="input">The input stream.</param>
        /// <param name="output">The output stream to write all bytes from <paramref name="input"/> stream to.</param>
        public static void Write(this Stream input, Stream output)
        {
            foreach(var chunk in input.ReadChunks(9012)) output.Write(chunk);
        }
    }
}