using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Foundation.Interop.Opera
{
    class FileFormat
    {
        UInt32 FileVersionNumber { get; set; }

        
        UInt32 AppVersionNumber { get; set; }

        /// <summary>
        /// Number of bytes in the id tag, presently 1.
        /// </summary>
        UInt16 IdTagLength { get; set; }
        
        /// <summary>
        /// Number of bytes in the length part of a record, presently 2.
        /// </summary>
        UInt16 LengthLength { get; set; }

        /// <summary>
        /// Array of records, number determined by length of file.
        /// </summary>
        List<Record> Items { get; set; }
    }

    class Record
    {
        // application specific tag to identify content type
        int RecordType { get; set; }

        // length of payload
        int Length { get; set; }

        byte[] Payload { get; set; }
    }
}