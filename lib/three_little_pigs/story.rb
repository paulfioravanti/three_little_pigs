require "ostruct"
require "yaml"
require "pry"

module ThreeLittlePigs
  module Story
    CHAPTERS = YAML.load_file(File.join(__dir__, "chapters.yml"))
    private_constant :CHAPTERS

    module_function

    def tell
      CHAPTERS.each { |chapter| const_get(chapter).tell(story) }
      story
    end

    def so_far(until_chapter: OnceUponATime)
      chapter = until_chapter.to_s.split("::").last
      chapters_so_far = CHAPTERS.slice(0...CHAPTERS.index(chapter))
      chapters_so_far.each_with_object(story) do |the_chapter, the_story|
        const_get(the_chapter).tell(the_story)
      end
    end

    def house_belonging_to(owner)
      story.houses.find {|house| house.owner == owner }
    end

    def story
      @story ||= OpenStruct.new
    end
    private_class_method :story
  end
end
