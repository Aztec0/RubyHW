p "Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными."    
    arr = [ 2, 6, -9, 3, 1, 1, 23, -5, 4, 23, -7, -8, -9, 16, 1, 4 ] 
    p arr.partition.with_index { |e, i| i.odd? }.flatten
