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

      alias_method :endpoint, :hearth
    end
  end
end
