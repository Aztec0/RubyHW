p "Дано целое число. Найти сумму его цифр."
num = 2354358239
p num.to_s.chars.map(&:to_i).inject(:+)