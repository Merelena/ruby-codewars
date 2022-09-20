# https://www.codewars.com/kata/5266876b8f4bf2da9b000362/train/ruby
#
# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.
#
#   Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:
#
#                                                                                                                                                   []                                -->  "no one likes this"
# ["Peter"]                         -->  "Peter likes this"
# ["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
# ["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
# ["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"
#
def likes(names)
  num = names.count
  case num
  when 0
    "no one likes this"
  when 1
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{num - 2} others like this"
  end
end

# + решение через if
# def likes(names)
#     num = names.count
#     if num == 1
#       "#{names[0]} likes this"
#     elsif num == 2
#       "#{names[0]} and #{names[1]} like this"
#     elsif num == 3
#       "#{names[0]}, #{names[1]} and #{names[2]} like this"
#     elsif num > 3
#       "#{names[0]}, #{names[1]} and #{num - 2} others like this"
#     else
#       "no one likes this"
#     end
# end

#
# Решения codewars
#
# Реш 1 - как это работет?
# def likes(names)
#   AH: это все интерполяция, доку скидывала в прошлой задаче
#   case names.length
#   when 0
#     "no one likes this"
#   when 1
#     "%s likes this" % names
#   when 2
#     "%s and %s like this" % names
#   when 3
#     "%s, %s and %s like this" % names
#   else
#     "%s, %s and %d others like this" %
#       [names[0], names[1], names.length - 2]
#   end
# end
#
# Реш 2 - когда я пробовала писать выражения с if и условиями типа names.length == 0, мне писало ошибку - NoMethodError (undefined method `length=' for ["Peter"]:Array)
# AH: вероятно, где-то был прописан не ==, а один =, поэтому и возмущался
# def likes(names)
#   return "no one likes this" if names.length == 0
#   return "#{names.first} likes this" if names.length == 1
#   return "#{names.first} and #{names.last} like this" if names.length == 2
#   return "#{names.first}, #{names[1]} and #{names.last} like this" if names.length == 3
#   return "#{names.first}, #{names[1]} and #{names.length-2} others like this"
# end
