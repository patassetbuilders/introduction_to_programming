# Exersize 1
# Given  

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          
# fine immediate family
          
immediate_family =  family.select do |k,v|
   k == :sisters || k== :brothers
 end
 
 arr = immediate_family.values.flatten
 
 arr.each do |x|
   p x
 end
 
 # Exersize 2
 hashA = { "dog" => "bark", "Cat" => "meaou", "Bird" => "Tweat", "Snake" => "Hiss"}
 hashB = { "dog" => "bone", "Cat" => "ball", "Bird" => "Bell" , "Tiger" => "big ball"}
 
 hashC = hashA.merge(hashB)
 puts "hashC #{hashC}"
 puts "hashA #{hashA}"
 puts "hashA #{hashB}"
 
 #merge returns a new hash, that combines both parent hashes, both parents remain unchanged
 #merge A.merge(B) where B has a key that exists in A, B's value replaces A's
 
 hashD = { "dog" => "bark", "Cat" => "meaou", "Bird" => "Tweat", "Snake" => "Hiss"}
 hashE = { "dog" => "bone", "Cat" => "ball", "Bird" => "Bell" , "Tiger" => "big ball"}
 
 hashF = hashD.merge!(hashE)
 puts "hashF #{hashF}"
 puts "hashD #{hashD}"
 puts "hashE #{hashE}"
 
 #merge! mutates the caller
 
 
 # Eversize 3
 boat = { "momo hull" => "simgle hull", "catamaran" => "two hulls", "tri-maran" => "three hulls"}
 
 #printing all of the keys
  pkeys = boat.keys
  p pkeys
  
  #alternate
  boat.each_key do |key|
    puts key
  end
  
  #print all the values
  pvalues = boat.values
    p pvalues
  
  #alternate
  boat.each_value do |value|
    puts value
  end    
  
  #print both keys and value
  p boat.to_a
  
  #alternate
  boat.each do |k,v|
    puts "Boat #{k} has #{v}"
  end
  
  
  #Exersize 4
  #given 
  person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
  #access name
  puts person[:name]
  
  #Exersize 5 
  #check for a specifiv value
  hashA = { "dog" => "bark", "Cat" => "meaou", "Bird" => "Tweat", "Snake" => "Hiss"}
  puts hashA.has_value? "Tweat"
  
  #exersize 6
  #given 
  words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
            'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
            'flow', 'neon']
  #find annagrams
  #solution os of the form
  #key (letters sorted alphabetically) and a array of values[word, word]
  #sort letters in each word to make comparisions easier
  #this becomes the key, 
  #than compare the key with the sorted word
  #if they compare store the word
  #then compare 
  #make a hash with the new word and use the has_key? to compare each word
  
  result = {}
  
  words.each do |word|
    key = word.split('').sort.join #letters sorted a-z
    if result.has_key?(key) #if result already has the key then add the word to the key's array
      result[key].push(word)
    else
      result[key] = [word] #add a new key value pair to the hash
    end
  end
    
  puts "#{result}"  #checking that this works
  
  result.each do |k,v|
    puts "key #{k} | Values #{v}"
    puts "========"
    puts "this really make short work of this problem but had to understand hash syntax"
  end
  
  #exersize 7 one uses a symbol :x as the key  and can retrieve the value with my_hash[:x]
  #the other uses a local variable x which has been assigned a  string
  # the value can be retrieved by using my_hash2[x] or my_hash2["hi there"]
  
  #exersize  8 
  #b the error says it all, also arrays dont have hey value pairs 