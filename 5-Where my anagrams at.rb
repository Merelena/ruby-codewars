# https://www.codewars.com/kata/523a86aa4230ebb5420001e1/train/ruby
#
# Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:
#
#                                                                                                                                                                                                                                anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']
#
# anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']
#
# anagrams('laser', ['lazing', 'lazy',  'lacer']) => []

#  Я не додумалась как через условие удалить элемент
def anagrams(word, words)
  words.map { |x| x.chars.sort == word.chars.sort ? x : '' }.delete_if {|a| a.empty?}
end

# Решения codewars
#
# Реш 1 - через select конечно покрасивше
# def anagrams(word, words)
#   words.select { |w| w.chars.sort == word.chars.sort }
# end
#
# Реш 2 - sum возвращает контрольную сумму - надо разобраться как считает
# def anagrams(word, words)
# AH: положение в ISO-8859-1
#   words.select{|w| w.sum == word.sum}
# end
#
# Реш 3 - permutation - считывает все возможные перестановки
# включает ли перестановка символов в слове word , слова которые находятся в words
#
# require 'set' # это подключение какого то гема?
#
# def anagrams(word, words)
#   words.select {|w| word.chars.permutation.include? w.chars}
# end
