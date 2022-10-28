
class Pet

    def initialize(name, type)
        @health = @food = @energy = @happiness = @cleanness = 50
        @name = name
        @type = type
        @day = 1
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
                p "------"
                p check_health
                p check_food
                p check_happiness
                p check_cleanness
                p check_energy
                p "------"
                p menu
                
            when 2
                p pass_time(command)
                p "------"
                p check_health
                p check_food
                p check_happiness
                p check_cleanness
                p check_energy
                p "------"
                p menu
            when 3
                p pass_time(command)
                p "------"
                p check_health
                p check_food
                p check_happiness
                p check_cleanness
                p check_energy
                p "------"
                p menu
            when 4
                p pass_time(command)
                p "------"
                p check_health
                p check_food
                p check_happiness
                p check_cleanness
                p check_energy
                p "------"
                p menu
            when 5 
                p pass_time(command)
                p "------"
                p stats
                p "------"
                p check_health
                p check_food
                p check_happiness
                p check_cleanness
                p check_energy
                p "------"
                p menu
            when 6
                p spotting(num = rand(1..40))
            when 7
                p stats
            else
                p "Оберіть від 1 до 7 і 8 для зевершення"    
            end
            command = gets.to_i
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

    def spotting(num)
        if num == 40
            p "Ваш улюбленець раптово помер від невідомої хвороби"
            exit
        elsif  num < 40 && num >= 35
            @health = @food = @energy = @happiness = @cleanness = 19
            @day += 2
            p "#{@name} раптово побіг в невідомому напрямку і знайшовся через 2 дні"
            p "Його стан досить важкий чи зможете ви врятувати його?"
            p "------"
            menu
        elsif num < 35 && num >= 20
            p "#{@name} побіг на кухню і вкрав щось з стола"
            @food += 20
            p "Тепер ситий і не хоче їсти"
            p "------"
            menu
        elsif num < 20 && num > 5
            @cleanness = 14
            p "#{@name} побіг на вулицю і весь вимазався"
            p "------"
            menu
        elsif num <= 5 && num > 1 
            p "#{@name} щось знайшов на підлогі і зʼїв"
            @happiness = @energy += 30
            p "Тепер він енергічний і веселий, дивно що то за пігулка була"
            p "------"
            menu
        else
            @health = @food = @energy = @happiness = @cleanness = 60
            p "Чудом всі проблеми #{@name} вирішились, тепер він почуває себе чулово"
            p "------"
            menu
        end
    end

    def check_health
        if @health > 150
            p "Із за надлишку здоровʼя, імунна система перестала функціонувати"
            "Здоровʼя понижено до: #{@health = 30}"
        elsif (@health >= 25 && @health <= 150) 
            "Все добре, тваринка здорова"
        elsif (@health < 25 && @health >= 15)
            "Щось не так ваша тваринка ось ось захворіє"
        elsif (@health < 15 && @health > 0)
            "Ваш улюбленець захворів, потрібно терміново до лікаря"
        else
            p "Хвороба забрала вашого улюбленця"
            exit
        end
    end

    def check_food
        if @food > 150
            p "Улюбленець переїв і лікар порекомендував дієту"
            "Ситість понижена до: #{@food = 30}"
        elsif (@food >= 25 && @food <= 150)
            "Все добре, тваринка сита"
        elsif (@food < 25 && @food >= 15)
            "Тваринка їсть не достатньо, слід її погодувати"
        elsif (@food < 15 && @food > 0)
            "Улюбленець геть голодний, хутчіш погодуй його"
        else
            p "Улюбленець втік в пошуках їжі"
            exit
        end   
    end    
    
    def check_happiness
        if @happiness > 150
            "Улюбленець так загрався, що не помітив і травмував себе"
            p "Щастя понижено до: #{@happiness = 30}"
        elsif (@happiness >= 25 && @happiness <= 150)
            "Все добре, тваринка щаслива"
        elsif (@happiness < 25 && @happiness >= 15)
            "Улюбленець сумує за вами"
        elsif (@happiness < 15 && @happiness > 0)
            "Улюбленець відчуває себе одиноко без вас і скоро втіче від вас"
        else
            p "Улюбленцю було самотньо і він пішов до іншого хазяїна"
            exit
        end
    end

    def check_cleanness
        if @cleanness > 150 
            "Надмірна охайність призводить до великих проблем"
            p "Щастя понижено до: #{@cleanness = 30}"
        elsif (@cleanness >= 25 && @cleanness <= 150)
            "Все добре, тваринка чиста"
        elsif (@cleanness < 25 && @cleanness >= 15)
            "Улюбленець трішки забруднився"
        elsif (@cleanness < 15 && @cleanness > 0)
            "Улюбленець геть брудний, потрібно помити його"
        else
            p "Улюбленець не витримав і втік митися але не повернувся"
            exit
        end
    end

    def check_energy
        if @energy > 25
            "Все добре, тваринка повна енергії"
        elsif (@energy <= 25 && @energy > 15)
            "Улюбленець cтомився і скоро захоче спати"
        elsif (@energy <= 15 && @energy > 0)
            "Скоро улюбленець зовсім втратить сили"
        else
            p "Улюбленець втік, щоб виспатись і не повернувся"
            exit
        end
    end

    def menu
        p 'Нажміть 1 щоб вилікувати'
        p 'Нажміть 2 щоб покормити'
        p 'Нажміть 3 щоб ощасливити вашу тваринку'
        p 'Нажміть 4 шоб покупати улюбленця'
        p 'Нажміть 5 щоб поповнити енергію'
        p 'Нажміть 6 щоб щоб спостерігати за улюбленцем'
        p "Нажміть 7 щоб побачити характеристики"
        "Нажміть 8 щоб вийти(прогрес не збережеться)"
    end

end

p 'Вам було сумно і ви вирішили забрати з притулку собі улюбленця'
p "Оберіть тип вашого улюбленця"
p "1 - Кіт, 2 - Пес, 3 - Кролик, 4 - Капібара, 5 - Гекон"
type = gets.to_i
case type
when 1
    type = "Кіт"
when 2
    type = "Пес"
when 3
    type = "Кролик"
when 4
    type = "Капібара"
when 5
    type = "Гекон"
end

p "Введіть імʼя вашого улюбленця:"   
name = gets.capitalize.chomp
p "#{name} радий що ви обрали його!"
p "_________"
pet = Pet.new(name, type)
p "Натисніть 1 до 5 щоб виконати прешу дію з вашим новим улюбленцем"
command = gets.to_i
p pet.control(command)
