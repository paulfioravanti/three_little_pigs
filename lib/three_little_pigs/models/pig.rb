module ThreeLittlePigs
  class Pig
    attr_reader :name, :children

    def initialize(name: nil, children: [])
      @name = name
      @children = children
    end
  end
end
