p "Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными."
arr = [ 2, 6, -9, 3, 23, -5, 4, 23, -7, -8, -9, 16, 1, 4 ]
p arr.partition.with_index { |e, i| i.even? }.flatten