require "ostruct"

module ThreeLittlePigs
  module Story
    module_function

    def tell
      OnceUponATime.tell(story)
      story
    end

    def story
      @story ||= OpenStruct.new
    end
    private_class_method :story
  end
end
