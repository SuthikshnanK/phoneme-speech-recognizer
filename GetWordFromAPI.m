%{
    This function queries the Meriam Webster Dictionary API using our
    personal key and takes the output and turns it into a readable
    structure.
%} 

function Word = GetWordFromAPI(Word)
api = 'https://www.dictionaryapi.com/api/v3/references/collegiate/json/';
Key = ''; % Requires a Dictionary API Key, place here in the ' '.
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