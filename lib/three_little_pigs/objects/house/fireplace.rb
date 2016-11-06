module ThreeLittlePigs
  class House
    class Fireplace
      extend Forwardable

      attr_reader :chimney
      attr_accessor :lit

      def_delegator :@chimney, :hearth

      def initialize
        @chimney = Chimney.new
        @lit = false
      end

      def hearth=(object)
        chimney.hearth = object
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
