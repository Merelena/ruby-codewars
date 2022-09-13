# https://www.codewars.com/kata/54ff3102c1bad923760001f3/train/ruby
# Return the number (count) of vowels in the given string.
#
#   We will consider a, e, i, o, u as vowels for this Kata (but not y).
#
#   The input string will only consist of lower case letters and/or spaces.
#
# sub заменяет только первое вхождение указанного шаблона, тогда как gsub делает это для всех вхождений (т.е. заменяет глобально)
# g обозначает глобальное значение, как и в глобальном (все)
def get_count(input_str)
  input_str.gsub(/[^aeiou]/, '').length # AH: отлично
end

# Решения codewars
#
# Реш 1 - лучшее
# def getCount(inputStr)
#   inputStr.count("aeiou")
# end
#
# Реш 2
# def getCount(inputStr)
#   AH: https://stackoverflow.com/questions/7993662/whats-the-difference-between-scan-and-match-on-ruby-string
#   inputStr.scan(/[aeiou]/).count  - scan возвращает все, что соответствует регулярному выражению.
# end
