module ThreeLittlePigs
  class Fire
    def raise_temperature_of(objects)
      objects.each { |object| object.raise_temperature }
    end
  end
end
