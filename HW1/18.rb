p "Дан целочисленный массив. Найти минимальный нечетный элемент."
arr = [ 2, 6, -9, 3, 1, 1, 23, -5, 4, -10, 23, -7, -8, -9, 16, 1, 4 ] 
    p arr.select{|i| i.odd? }.min

