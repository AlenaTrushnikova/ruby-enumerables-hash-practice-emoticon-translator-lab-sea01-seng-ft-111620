# require modules here
require 'pry'
require 'yaml'

def load_library(path)
  # code goes here
  emoticons = YAML.load(File.read(path))
  emoticon_hash = {}
  
  emoticons.map {|key, value| [key.to_sym, value]}.to_h
  
  binding.pry
  #emoticon_data = emoticons.each do |key.to_sym, value|
 #binding.pry
  
 
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