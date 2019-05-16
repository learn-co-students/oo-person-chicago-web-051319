# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name,:happiness,:hygiene

  def initialize(name)
    @name=name
    @bank_account=25
    @happiness=8
    @hygiene=8
  end

  def happiness=(happiness)
    @happiness=range_comparison(happiness)
  end

  def hygiene=(hygiene)
    @hygiene=range_comparison(hygiene)
  end

  def happy?
    status_check(self.happiness)
  end

  def clean?
    status_check(self.hygiene)
  end

  def get_paid(salary)
    self.bank_account+=salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene+=4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    self.hygiene-=3
    self.happiness+=2
     "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness+=3
    self.happiness+=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend,topic)
    if topic=="politics"
      self.happiness-=2
      friend.happiness-=2
      "blah blah partisan blah lobbyist"
    elsif topic=="weather"
      self.happiness+=1
      friend.happiness+=1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end

  private
  def range_comparison(num)
    if (0..10).to_a.include?(num)
      num
    elsif num<0
      num=0
    else
      num=10
    end
  end

  def status_check(num)
    if num>7
      true
    else
      false
    end
  end
end
