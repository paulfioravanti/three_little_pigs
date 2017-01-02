# frozen_string_literal: true
module ThreeLittlePigs
  class Pot
    extend Forwardable

    attr_reader :contents

    def_delegators :@contents, :each

    def initialize
      @contents = []
    end

    def water
      contents.find { |item| item.is_a?(Water) }
    end

    def <<(object)
      contents << object
      # rubocop:disable Style/GuardClause
      # NOTE: Can't really be converted to a guard clause as the first line
      # needs to have happened before the following conditional.
      if water&.boiling?
        Story.kill(contents.delete(object))
      end
      # rubocop:enable Style/GuardClause
    end
  end
end
