module ThreeLittlePigs
  class Wealth
    include Comparable

    attr_reader :level

    def self.level(level)
      level =
        case level
        when :low then 1
        when :medium then 2
        when :high then 3
        else 0
        end
      new(level)
    end

    private_class_method :new

    def initialize(level)
      @level = level
    end

    def <=>(other)
      level <=> other.level
    end
  end
end
