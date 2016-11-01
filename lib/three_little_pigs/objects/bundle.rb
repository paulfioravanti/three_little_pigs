module ThreeLittlePigs
  module Bundle
    module_function

    def of(material)
      material = material.to_s.capitalize.tr("s", "")
      Array.new(
        10,
        Module.const_get("#{Module.nesting.last}::#{material}").new
      )
    end
  end
end
