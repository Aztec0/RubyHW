# frozen_string_literal: true

require_relative 'tamagochi'

class Control < Pet
  
  def start
    @pet = Pet.new
    p 'Вам було сумно і ви вирішили забрати з притулку собі улюбленця'
    p 'Оберіть тип вашого улюбленця'
    p '1 - Кіт, 2 - Пес, 3 - Кролик, 4 - Капібара, 5 - Гекон'
    @type = gets.to_i
    case type
    when 1
      @type = 'Кіт'
    when 2
      @type = 'Пес'
    when 3
      @type = 'Кролик'
    when 4
      @type = 'Капібара'
    when 5
      @type = 'Гекон'
    end

    p 'Введіть імʼя вашого улюбленця:'
    @name = gets.capitalize.chomp
    p "#{@name} радий що ви обрали його!"
    p '_________'
    p 'Натисніть 1 до 5 щоб виконати прешу дію з вашим новим улюбленцем'
    command = gets.to_i
    control(command)
  end

  def stats
    p "Імʼя: #{@name}"
    p "Тип: #{@type}"
    p "День: #{@day}"
    p "Здоровʼя: #{@health} "
    p "Ситість: #{@food}"
    p "Щастя: #{@happiness}"
    p "Чистота #{@cleanness}"
    "Енергія: #{@energy}"
  end

  def control(command)
    until command == 8
      case command
      when 1
        p pass_time(command)
        p '------'
        p check_health
        p check_food
        p check_happiness
        p check_cleanness
        p check_energy
        p '------'
        p menu

      when 2
        p pass_time(command)
        p '------'
        p check_health
        p check_food
        p check_happiness
        p check_cleanness
        p check_energy
        p '------'
        p menu
      when 3
        p pass_time(command)
        p '------'
        p check_health
        p check_food
        p check_happiness
        p check_cleanness
        p check_energy
        p '------'
        p menu
      when 4
        p pass_time(command)
        p '------'
        p check_health
        p check_food
        p check_happiness
        p check_cleanness
        p check_energy
        p '------'
        p menu
      when 5
        p pass_time(command)
        p '------'
        p "Ігрових днів проведено: #{@day}"
        p '------'
        p check_health
        p check_food
        p check_happiness
        p check_cleanness
        p check_energy
        p '------'
        p menu
      when 6
        p spotting(rand(1..40))
      when 7
        p stats
      else
        p 'Оберіть від 1 до 7 і 8 для зевершення'
      end
      command = gets.to_i
      p "Ігрових днів проведено: #{@day}" if command == 8
    end
  end

  private

  def pass_time(command)
    case command
    when 1
      @food += rand(-12..5)
      @happiness += rand(-12..5)
      @cleanness += rand(-12..5)
      @energy += rand(-12..0)
      "Ви вилікували улюбленця, очків здоровʼя: #{@health += rand(1..15)}"
    when 2
      @health += rand(-12..5)
      @happiness += rand(-12..5)
      @cleanness += rand(-12..5)
      @energy += rand(-12..0)
      "Ви погодували улюбленця, очків cитості: #{@food += rand(1..15)}"
    when 3
      @health += rand(-12..5)
      @food += rand(-12..5)
      @cleanness += rand(-12..5)
      @energy += rand(-12..0)
      "Ви погралися з улюбленцем, очків щастя: #{@happiness += rand(1..15)}"
    when 4
      @health += rand(-12..5)
      @happiness += rand(-12..5)
      @food += rand(-12..5)
      @energy += rand(-12..0)
      "Ви помили улюбленця, очків чистоти #{@cleanness += rand(1..15)}"
    when 5
      @health += rand(-12..5)
      @food += rand(-12..5)
      @happiness += rand(-12..5)
      @cleanness += rand(-12..5)
      @day += 1
      "Ви поклали спати улюбленця, очків енергії: #{@energy += rand(40..60)}"
    end
  end

  def menu
    p 'Нажміть 1 щоб вилікувати'
    p 'Нажміть 2 щоб покормити'
    p 'Нажміть 3 щоб ощасливити вашу тваринку'
    p 'Нажміть 4 шоб покупати улюбленця'
    p 'Нажміть 5 щоб поповнити енергію'
    p 'Нажміть 6 щоб щоб спостерігати за улюбленцем'
    p 'Нажміть 7 щоб побачити характеристики'
    'Нажміть 8 щоб вийти(прогрес не збережеться)'
  end
end

Control.new.start
