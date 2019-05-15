# your code goes here
class Person


  attr_reader :name, :bank_account, :happiness, :hygiene, :topic
  attr_writer :bank_account

  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
    @friends_happiness = 0
    @callee_happiness = 0
    @topic = ""
  end


  def happiness=(num)
    @happiness = num
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end


  def hygiene=(num)
    @hygiene = num
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def work_out
    self.happiness += 2

    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    new_friend = Person.new(friend)
    friend.happiness += 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(callee, topic)
    new_friend = Person.new(callee)
    if topic == "politics"
      callee.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      callee.happiness += 1
      self.happiness += 1

      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
