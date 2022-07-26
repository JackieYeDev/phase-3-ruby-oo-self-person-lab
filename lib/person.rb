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

    def name
        @name
    end
    
    def bank_account
        @bank_account
    end

    def happiness=(happiness)
        @happiness = happiness.clamp(0,10)
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0,10)
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid (amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene = @hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        self.hygiene = @hygiene
        @happiness += 2
        self.happiness = @happiness
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        @happiness += 3
        self.happiness = @happiness
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -=2
            friend.happiness -=2
            'blah blah partisan blah lobbyist'
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end
end