class Person
  attr_accessor :dollars, :happiness_points, :hygiene_points  
  attr_reader :name
  attr_writer
  
  
  
  def get_paid (salary)
    bank account += salary 
    return "all about the benjamins"
  end
  
  def take_bath
    hygiene_points += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫".
  end 
  
  def work_out 
    happiness_points += 3
    return "♪ another one bites the dust ♫"
  
  def call_friend (friend, person)
    happiness_points += 3 
    return "Hi #{friend}! It's #{person}. How are you?"
  end 
  
  def start_conversation (person, topic)
    if topic == politics 
      return "blah blah partisan blah lobbyist"
    elsif topic == weather 
      "blah blah sun blah rain"
    else 
      
  end 
  

  
end 
