require "ostruct"

module ThreeLittlePigs
  module Story
    module_function

    def tell
      OnceUponATime.tell(story)
      story
    end

    def beginning
      OpenStruct.new
    end

    def story
      @story ||= beginning
    end
    private_class_method :story
  end
end
