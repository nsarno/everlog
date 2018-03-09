module Everlog
  class Log
    attr_reader :number
    attr_reader :activity

    def initialize(n, activity)
      @number = n
      @activity = activity
    end
  end
end
