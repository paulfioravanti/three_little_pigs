module ThreeLittlePigs
  module Utilities
    module_function

    def primary_class_from(collection)
      collection.group_by(&:class).values.max do |a, b|
        a.size <=> b.size
      end.first.class
    end

    def demodulize(mod)
      mod.to_s.split("::").last
    end
  end
end
