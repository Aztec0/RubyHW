# frozen_string_literal: true

p 'Дано целое число. Найти произведение его цифр.'
num = 2_354_358_239
p num.to_s.chars.map(&:to_i).inject(:*)
