# frozen_string_literal: true
require "yaml"

module ThreeLittlePigs
  module Chapters
    CHAPTERS = YAML.load_file(File.join(__dir__, "chapters.yml"))
    private_constant :CHAPTERS

    module_function

    def all
      get_consts
    end

    def upto((chapter_name, _chapter_text))
      chapter_name = Utilities.demodulize(chapter_name)
      row = CHAPTERS.find { |name, _content| name == chapter_name }
      get_consts(chapters_upto(row))
    end

    def get_consts(chapters = CHAPTERS)
      chapters.map { |name, content| [const_get(name), content] }
    end

    def chapters_upto(chapter)
      CHAPTERS.slice(0...CHAPTERS.index(chapter))
    end
    private_class_method :chapters_upto
  end
end
