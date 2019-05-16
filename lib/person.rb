# your code goes here
# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account , :happiness , :hygiene
    
    def initialize(name , money = 25 , _happiness = 8, _hygiene = 8)
      @name = name
      @bank_account = money
      @happiness = _happiness
      @hygiene = _hygiene
    end
    
    def bank_account
      @bank_account
    end
    
    def happiness
      @happiness.clamp(0, 10)
    end
    
    def happy?
      @happiness > 7 ?  true :  false
    end
    
    def hygiene
      @hygiene.clamp(0 , 10)
    end

    def hygiene=(num)
      @hygiene = num.clamp(0 , 10)
    end

    def clean?
      @hygiene > 7 ? true : false
    end
    
    def get_paid(salary)
      @bank_account += salary
      return "all about the benjamins"
    end
    
    def take_bath
      #puts @hygiene

      self.hygiene += 4
      #puts @hygiene
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      #@hygiene -= 3 # get this to work with :hygiene=
      self.hygiene -= 3
      self.happiness += 2

      return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
      self.happiness += 3
      person.happiness += 3
      return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person , topic)
      if topic == "politics"
        person.happiness -= 2
        self.happiness -=2
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        person.happiness += 1
        self.happiness += 1
        return "blah blah sun blah rain"
      else
        return "blah blah blah blah blah"
      end
    end

  end