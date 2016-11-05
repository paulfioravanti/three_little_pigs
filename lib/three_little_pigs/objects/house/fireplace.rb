module ThreeLittlePigs
  class House
    class Fireplace
      attr_reader :chimney
      attr_accessor :hearth, :lit

      def initialize
        @chimney = Chimney.new
        @hearth = nil
        @lit = false
      end

      def light_fire
        self.lit = true
        hearth.each(&:raise_temperature)
      end

      def lit?
        lit
      end
    end
  end
end
