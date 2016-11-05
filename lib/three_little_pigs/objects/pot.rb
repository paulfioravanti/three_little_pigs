module ThreeLittlePigs
  class Pot
    extend Forwardable

    attr_accessor :contents

    def_delegator :@contents, :<<

    def initialize
      @contents = []
    end

    def water
      contents.find { |item| item.kind_of?(Water) }
    end

    def raise_temperature
      contents.each { |item| item.raise_temperature }
    end
  end
end
