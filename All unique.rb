# Write a program to determine if a string contains only unique characters. Return true if it does and false otherwise.
#
#   The string may contain any of the 128 ASCII characters. Characters are case-sensitive, e.g. 'a' and 'A' are considered different characters.
#
def unique_chars?(str)
  str.chars.uniq == str.chars # AH: хорошее решение. Если помнишь в прошлой задаче вместо .chars использовали .split('')
end

# Решения codewars
#
# Реш 1 - нужна помощь в понимании что тут произошло
# def unique_chars?(str)
#   chars = Hash.new(false) # AH: создали хэшик, в будущем ключами здесь будут выступать буквы, а значениями - true/false
#   str.each_char do |c| # AH: проходимя по каждому символу
#     if chars[c]
#       return false # AH: если в хэше есть ключ = символ c, у которогоо значение = true, значит такая буква уже попадалась и мы вылетаем из функции с false
#     else
#       chars[c] = true # AH: если же в хэше нет ключа с этим символом, то мы как бы создаем пару ключ значение, к примеру, chars['a'] = true. То есть мы как бы вложили нашу букву в chars и повторений быть не должно
#     end
#   end
#   true
# end
#
# Реш 2 - и вот тут
# def unique_chars?(str)
#   str.chars.uniq! ? false : true # AH: тут можно было сделать еще круче: !str.chars.uniq!
# end
#
# + Реш 3 с похожей логикой
# def unique_chars?(str)
#   str.chars.uniq!.nil? # AH: это решение, как и решение 2 основываются на том что возвращает .uniq!. Проэкспериментируй с ним
# end
