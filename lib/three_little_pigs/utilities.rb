module ThreeLittlePigs
  module Utilities
    module_function

    def demodulize(mod)
      mod.to_s.split("::").last
    end
  end
end
