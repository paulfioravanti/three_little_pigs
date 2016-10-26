module ThreeLittlePigs
  class Pig
    attr_reader :children

    def initialize(children: [])
      @children = children
    end
  end
end
