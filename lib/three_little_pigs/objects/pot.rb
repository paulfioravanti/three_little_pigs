module ThreeLittlePigs
  class Pot
    extend Forwardable

    attr_reader :contents

    def_delegators :@contents, :each

    def initialize
      @contents = []
    end

    def water
      contents.find { |item| item.kind_of?(Water) }
    end

    def <<(object)
      contents << object
      if water&.boiling?
        Story.kill(contents.delete(object))
      end
    end
  end
end
