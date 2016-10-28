module ThreeLittlePigs
  module Bundle
    module_function

    def of(material)
      Array.new(10, const_get("ThreeLittlePigs::#{material.capitalize}").new)
    end
  end
end
