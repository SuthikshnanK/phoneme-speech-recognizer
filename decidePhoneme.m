
%Takes a size 44 array of errors in phoneme comparison and determines the
%index of the the minimum error and returns the associated phoneme
%information(ID,character representation,

function [guessID,phoneme,possibleLetters]  = decidePhoneme(phonemeErrorArray) 

[M,I] = min(phonemeErrorArray); %Find the min error of the phonemeErrorArray

guessID = I(1); 


   switch(guessID) %Get the associated information from phoneme ID
   case 1 
      phoneme = "/b/";
      possibleLetters = ["b","bb"];
   case 2 
      phoneme = "/d/";
      possibleLetters = ["d","dd","ed"];
   case 3 
      phoneme = "/f/";
      possibleLetters = ["f", "ff", "ph", "gh", "lf", "ft"];
   case 4
       phoneme = "/g/";
       possibleLetters = ["g", "gg", "gh","gu","gue"];
   case 5 
       phoneme = "/h/";
       possibleLetters = ["h", "wh"];
   case 6    
       phoneme = "/j/";
       possibleLetters = ["j", "ge", "g", "dge", "di", "gg"];
   case 7
       phoneme = "/k/";
       possibleLetters = ["k", "c", "ch", "cc", "lk", "qu" ,"q(u)", "ck", "x"];
   case 8 
       phoneme = "/l/";
       possibleLetters = ["l", "ll"];
   case 9 
       phoneme = "/m/";
       possibleLetters = ["m", "mm", "mb", "mn", "lm"];
   case 10
       phoneme = "/n/";
       possibleLetters = ["n", "nn","kn", "gn", "pn", "mn"];
   case 11 
      phoneme = "/p/";
      possibleLetters = ["p", "pp"];
   case 12 
      phoneme = "/r/";
      possibleLetters = ["r", "rr", "wr", "rh"];
   case 13 
      phoneme = "/s/";
      possibleLetters = ["s", "ss", "c", "sc", "ps", "st", "ce", "se"];
   case 14
       phoneme = "/t/";
       possibleLetters = ["t", "tt", "th", "ed"];
   case 15 
       phoneme = "/v/";
       possibleLetters = ["v", "f", "ph", "ve"];
   case 16    
       phoneme = "/w/";
       possibleLetters = ["w", "wh", "u", "o"];
   case 17
       phoneme = "/z/";
       possibleLetters = ["z", "zz", "s", "ss", "x", "ze", "se"];
   case 18 
       phoneme = "/s2/";
       possibleLetters = ["s", "si", "z"];
   case 19 
       phoneme = "/ch/";
       possibleLetters = ["ch", "tch", "tu", "ti", "te"];
   case 20
       phoneme = "/sh/";   
       possibleLetters = ["sh", "ce", "s", "ci", "si", "ch", "sci", "ti"];
   case 21 
      phoneme = "/th/";
      possibleLetters = ["th"];
   case 22 
      phoneme = "/th2/";
      possibleLetters = ["th"];
   case 23 
      phoneme = "/ng/";
      possibleLetters = ["ng", "n", "ngue"];
   case 24
       phoneme = "/j2/";
       possibleLetters = ["y", "i", "j"];
   case 25 
       phoneme = "/ae/";
       possibleLetters = ["a", "ai", "au"];
   case 26    
       phoneme = "/eI/";
       possibleLetters = ["a", "ai", "eigh", "aigh", "ay", "er", "et", "ei", "au", "a_e", "ea", "ey"];
   case 27
       phoneme = "/e/";
       possibleLetters = ["e", "ea", "u", "ie", "ai", "a","eo", "ei", "ae"];
   case 28 
       phoneme = "/i:/";
       possibleLetters = ["e", "ee", "ea", "y", "ey", "oe", "ie", "i", "ei", "eo", "ay"];
   case 29 
       phoneme = "/I/";
       possibleLetters = ["i", "e", "o", "u", "ui", "y", "ie"];
   case 30
       phoneme = "/aI/";
       possibleLetters = ["i", "y", "igh", "ie", "uy", "ye", "ai", "is", "eigh", "i_e"];
   case 31 
      phoneme = "/a/";
      possibleLetters = ["a", "ho", "au", "aw", "ough"];
   case 32 
      phoneme = "/ou/";
      possibleLetters = ["o", "oa", "o_e", "oe", "ow", "ough", "eau", "oo","ew"];
   case 33 
      phoneme = "/u/";
      possibleLetters = ["o", "oo", "u","ou"];
   case 34
       phoneme = "/^/";
       possibleLetters = ["u","o", "oo", "ou"];
   case 35 
       phoneme = "/u:/";
       possibleLetters = ["o","oo", "ew", "ue", "u_e", "oe", "ough", "ui", "oew", "ou"];
   case 36    
       phoneme = "/OI/";
       possibleLetters = ["oi", "oy", "uoy"];
   case 37
       phoneme = "/aU/"; 
       possibleLetters = ["ow", "ou", "ough"];
   case 38 
       phoneme = "/e2/";
       possibleLetters = ["a", "er", "i", "ar", "our", "ur"];
   case 39 
       phoneme = "/ea2/";
       possibleLetters = ["air", "are", "ear", "ere", "eir", "ayer"];
   case 40
       phoneme = "/a:/"; 
       possibleLetters = ["a"];
   case 41
       phoneme = "/er/";   
       possibleLetters = ["ir", "er", "ur", "ear", "or", "our", "yr"];
   case 42
       phoneme = "/0:/";   
       possibleLetters = ["aw", "a", "or", "oor", "ore", "oar", "our", "augh", "ar", "ough", "au"];
   case 43
       phoneme = "/ear/";  
       possibleLetters = ["ear", "eer", "ere", "ier"];
   case 44 
       phoneme = "/ure/"; 
       possibleLetters = ["ure","our"];
   otherwise
      fprintf('Invalid' );
      possibleLetters = "none";
   end
end






