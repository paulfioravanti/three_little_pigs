# frozen_string_literal: true

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

      def close
        self.status = :closed
      end

      def closed?
        status == :closed
      end
    end
  end
end
