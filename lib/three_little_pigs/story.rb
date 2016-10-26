require "ostruct"
require "yaml"

module ThreeLittlePigs
  module Story
    CHAPTERS = YAML.load_file(File.join(__dir__, "chapters.yml"))
    private_constant :CHAPTERS

    module_function

    def tell
      OnceUponATime.tell(story)
      story
    end

    def so_far(until_chapter: "OnceUponATime")
      chapter = until_chapter.split("::").last
      chapters_so_far = CHAPTERS.slice(0...CHAPTERS.index(chapter))
      chapters_so_far.each_with_object(story) do |the_chapter, the_story|
        const_get(the_chapter).tell(the_story)
      end
    end

    def story
      @story ||= OpenStruct.new
    end
    private_class_method :story
  end
end
