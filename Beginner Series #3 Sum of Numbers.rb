# Given two integers a and b, which can be positive or negative, find the sum of all the integers between and including them and return it. If the two numbers are equal return a or b.
#
#   Note: a and b are not ordered!

def get_sum(a,b)
  # AH: ты пошла по хорошему алгоритму, чутка не хватило знаний о функциях, а так все ок:) В приниципе я откомментила все возможные поправки в решениях ниже, идеальное из среди них - 5.
  arr = [a, b]
  x = arr.max
  y = arr.min
  a != b ? (y..x).sum : a
end

# Ниже мои неправильные решения
# неправильно потому что если b < a то (a..b).sum не работает
# def get_sum(a,b)
#   a != b ? (a..b).sum : a
# end
#
# def get_sum(a,b)
#   if a != b
#     sum = 0
#     for i in (a..b)
#       sum += i
#     end
#     sum
#   else
#     a
#   end
# end

# def get_sum(a,b)
#   enu = (a..b)
#   enu.sort
#   a != b ? enu.sum : a
# end
#
#
# Решения codewars
#  Bопрос - тут ни в каких решениях нету проверки на условие "If the two numbers are equal return a or b" и тем не менее все эт решения правильные. Наверное я что то недопонимаю
#  AH: они просто сыграли на том, что сумма между одинаковыми числами равна самому числу, то есть (5..5).reduce => 5

# Реш 1 - reduce a list of numbers into a single value by adding them together
# Вопрос - как можно самому найти такое решение?
# AH: на самом деле тут у кого-то в памяти были нужные функции, алгоритмы выше с циклами просто повторяют их, и что сумма между одинаковыми числами равна самому числу
# def get_sum(a,b)
#   return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+)  # reduce(:+) = (a..b).reduce { |sum, n| sum + n } 
# end
#
# Реш 2
# def get_sum(a,b)
#   c, d = [a, b].sort
#   AH: inject(:+) = reduce(:+) = sum
#   (c..d).inject(:+) # как я поняла inject то же самое что и reduce
# end
#
# Реш 3 - то к чему стремилась
# def get_sum(a,b)
#   AH: тут как раз очередная интересность - параллельное присваивание, теперь ты увидела это в оочую:) Еще пример:  a, b = 1, 'b'
#   smaller, higher = [a, b].sort
#
#   (smaller..higher).sum
# end
#
# Реш 4  - как мое но короче намного
# def get_sum(a,b)
#   AH: ты могла обратить внимание, что часто где используются диапазоны и слайсы, (а..б) и [а..б]. Это как раз очередной пример как с их помощью можно укоротить решение
#   ([a,b].min..[a,b].max).sum
# end
#
# Реш 5
# def get_sum(a,b)
#   AH: по сути как решение 1, но еще красивее
#   (a <= b ? a..b : b..a).sum
# end
