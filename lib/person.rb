# your code goes here
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    @happiness = if num > 10
                      10
                    elsif num < 0
                      0
                    else
                      num
                  end
  end

  def hygiene
    if @hygiene > 10
      10
    elsif @hygiene < 0
      0
    else
      @hygiene
    end
  end

  def clean?
    hygiene > 7
  end

  def happy?
    happiness > 7
  end

  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name.chomp()}! It's #{name.chomp()}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      [self, friend].each{|person| person.happiness -= 2}
      # self.happiness -= 2
      # friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end

user1 = Person.new("Blake")
user2 = Person.new("Stella")
user1.happiness = 10
user1.hygiene = 10
user2.happiness

user1.start_conversation(user2, "weather")
