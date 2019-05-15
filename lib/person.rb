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
  
  def call_friend (friend)
    happiness_points += 3 
  end 
  
  def start_conversation
  end 
  
  def clean? 
  end 
  
  def happy?
  end 
  
end 
