require "yaml"

module ThreeLittlePigs
  module Chapters
    CHAPTERS = YAML.load_file(File.join(__dir__, "chapters.yml"))
    private_constant :CHAPTERS

    module_function

    def all
      upto(CHAPTERS.last)
    end

    def upto(chapter_name)
      chapter_name = Utilities.demodulize(chapter_name)
      chapters_upto(chapter_name).map { |chapter| const_get(chapter) }
    end

    def chapters_upto(chapter)
      CHAPTERS.slice(0...CHAPTERS.index(chapter))
    end
    private_class_method :chapters_upto
  end
end
