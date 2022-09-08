
# Make a program that filters a list of strings and returns a list with only your friends name in it.
#
# If a name has exactly 4 letters in it, you can be sure that it has to be a friend of yours! Otherwise, you can be sure he's not...
#
# Ex: Input = ["Ryan", "Kieran", "Jason", "Yous"], Output = ["Ryan", "Yous"]
#
# i.e.
#
# friend ["Ryan", "Kieran", "Mark"] `shouldBe` ["Ryan", "Mark"]
# Note: keep the original order of the names in the output.

#  Решение 1 - тесты прошли, но как по мне оно не соотв условию "exactly 4 letters"
def friend(friends)
  friends.delete_if { |x| x.length != 4 } # AH: на самом деле, тесты не предусматривают проверку на небуквенныеы значения в строке
end

# Нерабочие варианты - я так и не нашла решение с "exactly 4 letters"
# def friend(friends)
#   friends.delete_if { |x| x.length != 4 && ("0".."9").in? friends }
# end

# def friend(friends)
#   friends.delete_if { |x| x.length != 4 && x.to_i == x }
# end

# def friend(friends)
#   friends.delete_if { |x| x.length != 4 && x != x.chars }
# end

# Решения codewars
#
# Реш 1 - как мое но через select
# def friend(friends)
#   friends.select { |name| name.length == 4 }
# end
#
# Pеш 2 - через регулярку, но я в такое не умею
# def friend(friends)
#   friends.grep(/\A.{4}\z/)
# end
#
# Реш 3
# def friend(friends)
#   AH: на самом деле алгоритм тот же что и с delet_if или select, просто без их использования:)
#   friend_array = []
#   friends.each { |name|
#     if name.length == 4
#       friend_array << name
#     end
#   }
#   return friend_array
# end
#
# Итог - даже на codewars никто не сделал решения чтобы прошел тест где в массиве есть значение "1234"
