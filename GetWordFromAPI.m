function Word = GetWordFromAPI(Word)
api = 'https://www.dictionaryapi.com/api/v3/references/collegiate/json/';
Key = '?key=78a49613-2600-4e65-8649-e9ea965d4719';
Api = strcat(api,Word);
Api = strcat(Api,Key);
WordRead = webread(Api);

if(isstruct(WordRead{1})) 
    for j =1: size(WordRead())
    Word(j) = WordRead{j,1}.hwi.hw;
    end
else
    
Word = WordRead;
end



end