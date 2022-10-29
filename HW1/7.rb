# frozen_string_literal: true

p 'Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
arr = [2, 6, -9, 3, 1, 1, 23, -5, 4, 23, -7, -8, -9, 16, 1, 4]
p arr.map { |a| a.positive? ? arr.min : a }
