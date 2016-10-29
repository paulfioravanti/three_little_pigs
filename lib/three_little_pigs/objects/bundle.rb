module ThreeLittlePigs
  module Bundle
    module_function

    def of(material)
      Array.new(
        10,
        Module.const_get("#{Module.nesting.last}::#{material.capitalize}").new
      )
    end
  end
end
