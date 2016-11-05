module ThreeLittlePigs
  class House
    class Fireplace
      extend Forwardable

      attr_reader :chimney, :hearth

      def_delegator :@hearth, :<<

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
