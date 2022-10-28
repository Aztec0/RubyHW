arr = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 
446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]

p "– дізнатись кількість елементів в масиві;"
p arr.size
p "--------------"

p "– перевернути масив;"
p arr.reverse
p "--------------"

p "– знайти найбільше число;"
p arr.max
p "--------------"

p "– знайти найменше число;"
p arr.min
p "--------------"

p "– відсортувати від меншого до більшого;"
p arr.sort
p "--------------"

p "– відсортувати від більшого до меншого;"
p arr.sort.reverse
p "--------------"

p "– видалити всі непарні числа;"
p arr.reject{|a| a.odd? }
p "--------------"

p "– залишити тільки ті числа, які без остачі ділятся на 3;"
p arr.select{|a| a % 3 == 0}
p "--------------"

p "– видалити з масиву числа, які повторюються (тобто, потрібно вивести масив, в якому немає повторень);"
p arr.uniq
p "--------------"

p "– розділити кожен елемент на 10, в результаті елементи не мають бути округленими до цілого;"
p arr.map{|a| a / 10.0 }
p "--------------"

p "– необхідно знайти три найменших елементи."
p arr.min(3)
p "--------------"

p "– знайти елементи, які знаходяться перед мінімальним числом в масиві;"
p arr[0...arr.index(arr.min)]
p "--------------"

p "– змінити місцями мінімальний і максимальний елементи масиву;"
a = arr.each_with_index.min[1]
b = arr.each_with_index.max[1]
arr[a],arr[b]=arr[b],arr[a]
p arr
p "--------------"

p "– отримати новий масив, який би містив в собі ті літери англійського алфавіту, порядковий номер яких є в нашому масиві;"
arr1 = arr.select { |a| a <= 26 && a >= 1 }.sort
arr2 = ('a'..'z').to_a
p arr1.map { |i| arr2[i - 1] }