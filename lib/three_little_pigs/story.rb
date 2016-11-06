require "ostruct"
require "yaml"
require "pry"

module ThreeLittlePigs
  module Story
    extend SingleForwardable

    def_delegator :story, :houses

    module_function

    def tell(chapters = Chapters.all)
      chapters.each_with_object(story) do |(chapter, text), story|
        puts text
        chapter.tell(story)
      end
    end

    def so_far(until_chapter: Chapters::OnceUponATime)
      tell(Chapters.upto(until_chapter))
    end

    def kill(character)
      story.public_send("#{character.slug}=", nil)
    end

    def story
      @story ||= OpenStruct.new
    end
    private_class_method :story
  end
end
