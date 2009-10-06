using System.Collections;
using System.Collections.Generic;
using System.IO;
using Lucene.Net.Analysis;
using Lucene.Net.Analysis.Snowball;
using Lucene.Net.Analysis.Standard;

namespace Foundation.Lucene
{
    /// <summary>Filters {@link StandardTokenizer} with {@link StandardFilter}, {@link
    /// LowerCaseFilter}, {@link StopFilter} and {@link SnowballFilter}.
    /// 
    /// Available stemmers are listed in {@link SF.Snowball.Ext}.  The name of a
    /// stemmer is the part of the class name before "Stemmer", e.g., the stemmer in
    /// {@link EnglishStemmer} is named "English".
    /// </summary>
    public class SnowballAnalyzer : Analyzer
    {
        protected const string defaultStemmerName = "English";

        /// <summary>
        /// Parameterless constructor, defaulting the stemmer to English
        /// </summary>
        public SnowballAnalyzer() : this(defaultStemmerName) {}

        /// <summary>
        /// Creates the analyzer with the specified language stemmer
        /// </summary>
        /// <param name="stemmerName"></param>
        public SnowballAnalyzer(string stemmerName)
        {
            StemmerName = stemmerName;
        }

        /// <summary>
        /// Creates the analyzer with the specified language stemmer
        /// </summary>
        /// <param name="stemmerName"></param>
        /// <param name="stopWords"></param>
        public SnowballAnalyzer(string stemmerName, string[] stopWords) : this(stemmerName, stopWords, null) {}

        /// <summary>Builds the named analyzer with the given stop words. </summary>
        /// <param name="stemmerName"></param>
        /// <param name="stopWords"></param>
        /// <param name="textFields"></param>
        public SnowballAnalyzer(string stemmerName, string[] stopWords, IList<string> textFields) : this(stemmerName)
        {
            if( stopWords != null ) StopWords = StopFilter.MakeStopSet(stopWords);
            TextFields = textFields;
        }

        /// <summary>
        /// The name of the language stemmer to use for the Snowball filter
        /// </summary>
        public string StemmerName { get; set; }

        /// <summary>
        /// Names of fields classified as text, so that they can have
        /// the filters applied automatically
        /// </summary>
        public IList<string> TextFields { get; set; }

        /// <summary>
        /// Collection of junk words to ignore
        /// </summary>
        public Hashtable StopWords { get; set; }

        /// <summary>Constructs a {@link StandardTokenizer} filtered by a {@link
        /// StandardFilter}, a {@link LowerCaseFilter} and a {@link StopFilter}. 
        /// </summary>
        public override TokenStream TokenStream(string fieldName, TextReader reader)
        {
            TokenStream result = new StandardTokenizer(reader);

            if( TextFields == null || TextFields.Count == 0 || TextFields.Contains(fieldName) )
            {
                result = new StandardFilter(result);
                result = new LowerCaseFilter(result);
                if( StopWords != null ) result = new StopFilter(result, StopWords);
                result = new SnowballFilter(result, StemmerName);
            }

            return result;
        }
    }
}