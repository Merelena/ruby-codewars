# Usually when you buy something, you're asked whether your credit card number,
# phone number or answer to your most secret question is still correct.
# However, since someone could look over your shoulder,
# you don't want that shown on your screen. Instead, we mask it.
#
#   Your task is to write a function maskify, which changes all but the last four characters into '#'.
#
# Решение - берем все буквы от 0 до -5 и меняем их на #
def maskify(cc)
  cc[0..-5] = '#' * cc[0..-5].length # AH: отличное решение! Не придерешься
  cc
end

# но в таком случае проходил только первый тест
# def maskify(cc)
#   cc[0..-5] = '#' * (cc.length - 4) # AH: потому что нельзя определить количество отрицательным числом
#   cc
# end
#
#
# Решения codewars
#
#реш1
# def maskify(cc)
#   cc.size <= 4 ? cc : "#" * (cc.length-4) + cc[-4..-1] # AH: тут как раз исправлена ошибочка с отрицательным количеством, но операций уже больше, это не гуд
# end
#
# реш2
# Хотелось бы послушать что тут сделали
# def maskify(cc)
#   cc.gsub(/.(?=.{4})/, "#") 
# end
#
# реш3
# def maskify(cc)
#   return cc if cc.length <= 4
#   cc.split('').fill('#', 0...cc.length - 4).join # AH: .split('') можно заменить на .chars, .fill тут тоже ничего работает
# end
#
# реш4
# def maskify(cc)
#   for i in 0..cc.length
#       cc[i] = '#' unless i>=cc.length-4. # AH: суть в общем-то как и у решений 1, 2 и 3
#   end
#   cc
# end
