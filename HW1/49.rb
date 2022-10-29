# frozen_string_literal: true

p "Дан целочисленный массив. Вывести номер первого из тех его элементов,
которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ]."
arr = [2, 6, -9, 3, 1, 1, 23, -5, 4, 23, -7, -8, -9, 16, 1, 4]
i = arr.rindex { |el| arr.first < el && el < arr.last }
p i || []
