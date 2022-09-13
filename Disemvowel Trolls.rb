# https://www.codewars.com/kata/52fba66badcd10859f00097e/train/ruby
# Trolls are attacking your comment section!
#
# A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.
#
# Your task is to write a function that takes a string and return a new string with all vowels removed.
#
# For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".
#
# Note: for this kata y isn't considered a vowel.
#
#
#
def disemvowel(str)
  str.delete ("aeiouAEIOU") # AH: все ок
end

# Второе решение
# def disemvowel(str)
#   str.gsub(/[aeiouAEIOU]/, '')
# end
#
#
# Решения codewars
#
# Реш 1
# def disemvowel(str)
#   str.tr('aeouiAEOUI', '') # tr - возвращает копию строки, заменяя символы 'aeouiAEOUI' на пустой символ ''
# end
