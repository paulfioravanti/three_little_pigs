module ThreeLittlePigs
  module Income
    module_function

    def level(level)
      case level
      when "Low" then 0
      when "Medium" then 1
      when "High" then 2
      else -1
      end
    end
  end
end
