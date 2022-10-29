# frozen_string_literal: true

p 'Дан целочисленный массив. Проверить, чередуются ли в нем положительные и отрицательные числа.'
arr = [2, 6, -9, 3, 1, 1, 23, -5, 4, 23, -7, -8, -9, 16, 1, 4]
p(1...arr.size - 1).all? do |i|
  ((arr[i - 1]).negative? && (arr[i + 1]).negative?) || ((arr[i - 1]).positive? && (arr[i + 1]).positive?)
end
