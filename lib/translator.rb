# require modules here
require 'pry'
require 'yaml'

def load_library
  # code goes here
  emoticons = yaml.load_file(./lib/emoticons.yml)
  emoticon_hash = {}
  
  emoticon_hash["get_emoticon"] = {}
  emoticon_hash["get_meaning"] = {}
 
  emoticons.each do |english_word, emoticon_set|
    emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
    emoticon_hash["get_meaning"][emoticon_set.last] = english_word
  end
  emoticon_hash  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end