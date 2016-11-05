module ThreeLittlePigs
  class House
    class Part
      attr_accessor :status

      def initialize
        @status = :open
      end

      def open?
        status == :open
      end

      def closed?
        status == :closed
      end
    end
    Door = Part
    Windows = Part
    Chimney = Part
  end
end
