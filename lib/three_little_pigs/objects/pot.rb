module ThreeLittlePigs
  class Pot
    attr_accessor :contents

    def initialize
      @contents = []
    end

    def water
      contents.find { |item| item.kind_of?(Water) }
    end

    def raise_temperature
      contents.each { |item| item.boil }
    end
  end
end
