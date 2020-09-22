# require modules here
require 'pry'
require 'yaml'

def load_library(path)
  # code goes here
  emoticons = YAML.load(File.read(path))
  emoticon_hash = {}
  
  emoticons.each do |english_word, emoticon_set|
    #binding.pry
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