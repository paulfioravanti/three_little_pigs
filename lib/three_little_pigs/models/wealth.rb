module ThreeLittlePigs
  module Wealth
    module_function

    def level(level)
      case level
      when :low then 1
      when :medium then 2
      when :high then 3
      else 0
      end
    end
  end
end
