# require modules here
require 'pry'
require 'yaml'

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  emoticon_hash = {}

  emoticons.each do |english_word, emoticon_set|
        emoticon_hash[english_word] = {:english => emoticon_set.first, :japanese => emoticon_set.last}
  end
  emoticon_hash
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  emoticon_hash = load_library(path)
  result = nil
  
  emoticon_hash.each do |english_word,emoticon_dictionary|
    if emoticon_dictionary[:english] == emoticon
      result = emoticon_dictionary[:japanese]
    end
  end
    if result == nil
    result = "Sorry, that emoticon was not found" 
    end
  result 
end

def get_english_meaning(path, emoticon)
  # code goes here
  emoticon_hash = load_library(path)
  
  result = nil
  emoticon_hash.each do |english_word, emoticon_dictionary|
    if emoticon_dictionary[:japanese] == emoticon
      result = english_word 
    end
  end
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end