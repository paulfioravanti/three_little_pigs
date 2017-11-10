# frozen_string_literal: true

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
        puts green(text)
        chapter.tell(story)
      end
    end

    def beginning
      tell(Chapters.upto(Chapters::OnceUponATime))
    end

    def until_chapter(chapter)
      tell(Chapters.upto(chapter))
    end

    def kill(character)
      story.public_send("#{character.slug}=", nil)
    end

    def story
      @story ||= OpenStruct.new
    end
    private_class_method :story

    def green(text)
      "\e[32m#{text}\e[0m"
    end
    private_class_method :green
  end
end
