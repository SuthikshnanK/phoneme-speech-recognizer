
function [phenome,possibleLetters,ClosestGuess]  = decidePhenome(phenomeErrorArray)

[M,I] = min(phenomeErrorArray);

ClosestGuess = I(1);


   switch(ClosestGuess)
   case 1 
      phenome = "/b/";
      possibleLetters = ["b","bb"];
   case 2 
      phenome = "/d/";
      possibleLetters = ["d","dd","ed"];
   case 3 
      phenome = "/f/";
      possibleLetters = ["f", "ff", "ph", "gh", "lf", "ft"];
   case 4
       phenome = "/g/";
       possibleLetters = ["g", "gg", "gh","gu","gue"];
   case 5 
       phenome = "/h/";
       possibleLetters = ["h", "wh"];
   case 6    
       phenome = "/j/";
       possibleLetters = ["j", "ge", "g", "dge", "di", "gg"];
   case 7
       phenome = "/k/";
       possibleLetters = ["k", "c", "ch", "cc", "lk", "qu" ,"q(u)", "ck", "x"];
   case 8 
       phenome = "/l/";
       possibleLetters = ["l", "ll"];
   case 9 
       phenome = "/m/";
       possibleLetters = ["m", "mm", "mb", "mn", "lm"];
   case 10
       phenome = "/n/";
       possibleLetters = ["n", "nn","kn", "gn", "pn", "mn"];
   case 11 
      phenome = "/p/";
      possibleLetters = ["p", "pp"];
   case 12 
      phenome = "/r/";
      possibleLetters = ["r", "rr", "wr", "rh"];
   case 13 
      phenome = "/s/";
      possibleLetters = ["s", "ss", "c", "sc", "ps", "st", "ce", "se"];
   case 14
       phenome = "/t/";
       possibleLetters = ["t", "tt", "th", "ed"];
   case 15 
       phenome = "/v/";
       possibleLetters = ["v", "f", "ph", "ve"];
   case 16    
       phenome = "/w/";
       possibleLetters = ["w", "wh", "u", "o"];
   case 17
       phenome = "/z/";
       possibleLetters = ["z", "zz", "s", "ss", "x", "ze", "se"];
   case 18 
       phenome = "/s2/";
       possibleLetters = ["s", "si", "z"];
   case 19 
       phenome = "/ch/";
       possibleLetters = ["ch", "tch", "tu", "ti", "te"];
   case 20
       phenome = "/sh/";   
       possibleLetters = ["sh", "ce", "s", "ci", "si", "ch", "sci", "ti"];
   case 21 
      phenome = "/th/";
      possibleLetters = ["th"];
   case 22 
      phenome = "/th2/";
      possibleLetters = ["th"];
   case 23 
      phenome = "/ng/";
      possibleLetters = ["ng", "n", "ngue"];
   case 24
       phenome = "/j2/";
       possibleLetters = ["y", "i", "j"];
   case 25 
       phenome = "/ae/";
       possibleLetters = ["a", "ai", "au"];
   case 26    
       phenome = "/eI/";
       possibleLetters = ["a", "ai", "eigh", "aigh", "ay", "er", "et", "ei", "au", "a_e", "ea", "ey"];
   case 27
       phenome = "/e/";
       possibleLetters = ["e", "ea", "u", "ie", "ai", "a","eo", "ei", "ae"];
   case 28 
       phenome = "/i:/";
       possibleLetters = ["e", "ee", "ea", "y", "ey", "oe", "ie", "i", "ei", "eo", "ay"];
   case 29 
       phenome = "/I/";
       possibleLetters = ["i", "e", "o", "u", "ui", "y", "ie"];
   case 30
       phenome = "/aI/";
       possibleLetters = ["i", "y", "igh", "ie", "uy", "ye", "ai", "is", "eigh", "i_e"];
   case 31 
      phenome = "/a/";
      possibleLetters = ["a", "ho", "au", "aw", "ough"];
   case 32 
      phenome = "/ou/";
      possibleLetters = ["o", "oa", "o_e", "oe", "ow", "ough", "eau", "oo","ew"];
   case 33 
      phenome = "/u/";
      possibleLetters = ["o", "oo", "u","ou"];
   case 34
       phenome = "/^/";
       possibleLetters = ["u","o", "oo", "ou"];
   case 35 
       phenome = "/u:/";
       possibleLetters = ["o","oo", "ew", "ue", "u_e", "oe", "ough", "ui", "oew", "ou"];
   case 36    
       phenome = "/OI/";
       possibleLetters = ["oi", "oy", "uoy"];
   case 37
       phenome = "/aU/"; 
       possibleLetters = ["ow", "ou", "ough"];
   case 38 
       phenome = "/e2/";
       possibleLetters = ["a", "er", "i", "ar", "our", "ur"];
   case 39 
       phenome = "/ea2/";
       possibleLetters = ["air", "are", "ear", "ere", "eir", "ayer"];
   case 40
       phenome = "/a:/"; 
       possibleLetters = ["a"];
   case 41
       phenome = "/er/";   
       possibleLetters = ["ir", "er", "ur", "ear", "or", "our", "yr"];
   case 42
       phenome = "/0:/";   
       possibleLetters = ["aw", "a", "or", "oor", "ore", "oar", "our", "augh", "ar", "ough", "au"];
   case 43
       phenome = "/ear/";  
       possibleLetters = ["ear", "eer", "ere", "ier"];
   case 44 
       phenome = "/ure/"; 
       possibleLetters = ["ure","our"];
   otherwise
      fprintf('Invalid' );
      possibleLetters = "none";
   end
end






