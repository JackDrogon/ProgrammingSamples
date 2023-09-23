// https://www.informit.com/articles/article.aspx?p=1381876&seqNum=5
import std.algorithm, std.ctype, std.regex,
   std.range, std.stdio, std.string;

struct PersonaData {
   uint totalWordsSpoken;
   uint[string] wordCount;
}

void main() {
   // Accumulates information about dramatic personae
   PersonaData[string] info;
   // Fill info
   string currentParagraph;
   foreach (line; stdin.byLine()) {
       if (line.startsWith("   ")
             && line.length > 4
             && isalpha(line[4])) {
          // Persona is continuing a line
          currentParagraph ~= line[3 .. $];
       } else if (line.startsWith(" ")
             && line.length > 2
             && isalpha(line[2])) {
          // Persona just started speaking
          addParagraph(currentParagraph, info);
          currentParagraph = line[2 .. $].idup;
       }
   }
   // Done, now print collected information
   printResults(info);
}

void addParagraph(string line, ref PersonaData[string] info) {
   // Figure out persona and sentence
   line = strip(line);
   auto sentence = line.find(". ");
   if (sentence.empty) {
      return;
   }
   auto persona = line[0 .. $ - sentence.length];
   sentence = tolower(strip(sentence[2 .. $]));
   // Get the words spoken
   auto words = split(sentence, regex("[ \t,.;:?]+"));
   // Insert or update information
   auto data = persona in info;
   if (data) {
      // heard this persona before
      data.totalWordsSpoken += words.length;
      foreach (word; words) ++data.wordCount[word];
   } else {
      // first time this persona speaketh
      PersonaData newData;
      newData.totalWordsSpoken = words.length;
      foreach (word; words) newData.wordCount[word] = 1;
      info[persona] = newData;
   }
}

void printResults(PersonaData[string] info) {
   foreach (persona, data; info) {
      writefln("%20s %6u %6u", persona, data.totalWordsSpoken,
         data.wordCount.length);
   }
}
