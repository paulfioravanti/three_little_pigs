# Only run coverage when running spec suite outside of Guard
# unless ENV["NO_COVERAGE"]
#   unless SimpleCov.running
#     SimpleCov.start do
#       add_filter "/test/"
#       add_filter "/spec/"
#       SimpleCov.minimum_coverage 100
#     end
#   end
# end
