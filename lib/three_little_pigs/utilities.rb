module ThreeLittlePigs
  module Utilities
    ROOM_TEMPERATURE = 20 # °C

    module_function

    def demodulize(mod)
      mod.to_s.split("::").last
    end
  end
end
