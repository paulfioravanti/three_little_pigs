module ThreeLittlePigs
  class House
    class Chimney < Part
      attr_accessor :hearth

      def initialize
        super
        @hearth = []
      end

      def <<(object)
        hearth << object
      end

      alias endpoint hearth
    end
  end
end
