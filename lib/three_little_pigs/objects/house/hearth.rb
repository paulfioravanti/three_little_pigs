module ThreeLittlePigs
  class House
    class Hearth
      extend Forwardable

      attr_accessor :contents

      def_delegators :@contents, :find

      def initialize
        @contents = []
      end

      def <<(object)
        if (fire = object).kind_of?(Fire)
          fire.raise_temperature_of(contents)
        end
        contents << object
      end
    end
  end
end
