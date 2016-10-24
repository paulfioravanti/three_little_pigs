module ThreeLittlePigs
  class House
    attr_accessor :occupants

    def initialize(occupants: [])
      @occupants = occupants
    end
  end
end
