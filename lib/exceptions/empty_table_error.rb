class EmptyTableError < StandardError
    MESSAGE = "Oh no, I'm sorry, there are no words for this game!"
        
    def initialize(msg = MESSAGE)
        super
    end
end