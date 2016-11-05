module ThreeLittlePigs
  class House
    class Fireplace
      attr_reader :chimney, :hearth

      def initialize
        @chimney = Chimney.new
        @hearth = Hearth.new
      end

      def fire
        hearth.find { |item| item.kind_of?(Fire) }
      end
    end
  end
end
