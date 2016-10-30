require "ostruct"
require "yaml"
require "pry"

module ThreeLittlePigs
  module Story
    extend SingleForwardable

    def_delegator :story, :houses

    module_function

    def tell
      Chapters.all.each { |chapter| chapter.tell(story) }
      story
    end

    def so_far(until_chapter: Chapters::OnceUponATime)
      Chapters.upto(until_chapter).each_with_object(story) do |chapter, story|
        chapter.tell(story)
      end
    end

    def story
      @story ||= OpenStruct.new
    end
    private_class_method :story
  end
end
