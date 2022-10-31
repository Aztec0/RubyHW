# frozen_string_literal: true

class Pet
    attr_accessor :name, :type, :day, :health, :food, :energy, :happiness, :cleanness
  
    def initialize(name = "aaa", type = "qqqq")
      @health = @food = @energy = @happiness = @cleanness = 50
      @name = name
      @type = type
      @day = 1
    end
  
private
  
    def spotting(num)
      if num == 40
        p 'Ваш улюбленець раптово помер від невідомої хвороби'
        p "Ігрових днів проведено: #{@day}"
        exit
      elsif  num < 40 && num >= 35
        @health = @food = @energy = @happiness = @cleanness = 19
        @day += 2
        p "#{@name} раптово побіг в невідомому напрямку і знайшовся через 2 дні"
        p 'Його стан досить важкий чи зможете ви врятувати його?'
        p '------'
        menu
      elsif num < 35 && num >= 20
        p "#{@name} побіг на кухню і вкрав щось з стола"
        @food += 20
        p 'Тепер ситий і не хоче їсти'
        p '------'
        menu
      elsif num < 20 && num > 5
        @cleanness = 14
        p "#{@name} побіг на вулицю і весь вимазався"
        p '------'
        menu
      elsif num <= 5 && num > 1
        p "#{@name} щось знайшов на підлогі і зʼїв"
        @happiness = @energy += 30
        p 'Тепер він енергічний і веселий, дивно що то за пігулка була'
        p '------'
        menu
      else
        @health = @food = @energy = @happiness = @cleanness = 60
        p "Чудом всі проблеми #{@name} вирішились, тепер він почуває себе чулово"
        p '------'
        menu
      end
    end
  
    def check_health
      if @health > 150
        p 'Із за надлишку здоровʼя, імунна система перестала функціонувати'
        "Здоровʼя понижено до: #{@health = 30}"
      elsif @health >= 25 && @health <= 150
        'Все добре, тваринка здорова'
      elsif @health < 25 && @health >= 15
        'Щось не так ваша тваринка ось ось захворіє'
      elsif @health < 15 && @health.positive?
        'Ваш улюбленець захворів, потрібно терміново до лікаря'
      else
        p 'Хвороба забрала вашого улюбленця'
        p "Ігрових днів проведено: #{@day}"
        exit
      end
    end
  
    def check_food
      if @food > 150
        p 'Улюбленець переїв і лікар порекомендував дієту'
        "Ситість понижена до: #{@food = 30}"
      elsif @food >= 25 && @food <= 150
        'Все добре, тваринка сита'
      elsif @food < 25 && @food >= 15
        'Тваринка їсть не достатньо, слід її погодувати'
      elsif @food < 15 && @food.positive?
        'Улюбленець геть голодний, хутчіш погодуй його'
      else
        p 'Улюбленець втік в пошуках їжі'
        p "Ігрових днів проведено: #{@day}"
        exit
      end
    end
  
    def check_happiness
      if @happiness > 150
        p 'Улюбленець так загрався, що не помітив і травмував себе'
        p "Щастя понижено до: #{@happiness = 30}"
      elsif @happiness >= 25 && @happiness <= 150
        'Все добре, тваринка щаслива'
      elsif @happiness < 25 && @happiness >= 15
        'Улюбленець сумує за вами'
      elsif @happiness < 15 && @happiness.positive?
        'Улюбленець відчуває себе одиноко без вас і скоро втіче від вас'
      else
        p 'Улюбленцю було самотньо і він пішов до іншого хазяїна'
        p "Ігрових днів проведено: #{@day}"
        exit
      end
    end
  
    def check_cleanness
      if @cleanness > 150
        p 'Надмірна охайність призводить до великих проблем'
        p "Щастя понижено до: #{@cleanness = 30}"
      elsif @cleanness >= 25 && @cleanness <= 150
        'Все добре, тваринка чиста'
      elsif @cleanness < 25 && @cleanness >= 15
        'Улюбленець трішки забруднився'
      elsif @cleanness < 15 && @cleanness.positive?
        'Улюбленець геть брудний, потрібно помити його'
      else
        p 'Улюбленець не витримав і втік митися але не повернувся'
        p "Ігрових днів проведено: #{@day}"
        exit
      end
    end
  
    def check_energy
      if @energy > 150
        @energy = @health = 22
        'Із за надлишку енегрії тваринка перестала себе контролювати і бігала як навіжена, а потім ще й поранилась'
      elsif @energy > 25
        'Все добре, тваринка повна енергії'
      elsif @energy <= 25 && @energy > 15
        'Улюбленець cтомився і скоро захоче спати'
      elsif @energy <= 15 && @energy.positive?
        'Скоро улюбленець зовсім втратить сили'
      else
        p 'Улюбленець втік, щоб виспатись і не повернувся'
        p "Ігрових днів проведено: #{@day}"
        exit
      end
    end
end
  