module ThreeLittlePigs
  module Wealth
    module_function

    def level(level)
      case level
      when :enough then 1
      else 0
      end
    end
  end
end
