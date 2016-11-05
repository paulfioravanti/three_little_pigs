module ThreeLittlePigs
  class Pot
    extend Forwardable

    attr_reader :contents

    def_delegators :@contents, :<<, :each

    def initialize
      @contents = []
    end

    def water
      contents.find { |item| item.kind_of?(Water) }
    end
  end
end
