require "ostruct"
require "yaml"
require "pry"

module ThreeLittlePigs
  module Story
    extend SingleForwardable

    CHAPTERS = YAML.load_file(File.join(__dir__, "chapters.yml"))
    private_constant :CHAPTERS

    def_delegator :story, :houses

    module_function

    def tell
      CHAPTERS.each { |chapter| const_get(chapter).tell(story) }
      story
    end

    def so_far(until_chapter: OnceUponATime)
      chapter = demodulize(until_chapter)
      chapters_so_far = chapters_up_to(chapter)
      chapters_so_far.each_with_object(story) do |the_chapter, the_story|
        const_get(the_chapter).tell(the_story)
      end
    end

    def story
      @story ||= OpenStruct.new
    end
    private_class_method :story

    def demodulize(chapter)
      chapter.to_s.split("::").last
    end
    private_class_method :demodulize

    def chapters_up_to(chapter)
      CHAPTERS.slice(0...CHAPTERS.index(chapter))
    end
    private_class_method :chapters_up_to
  end
end
