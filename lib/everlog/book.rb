module Everlog
  class Book
    attr_reader :activities

    def initialize
      @activities = []
    end

    def record(activity)
      activities << Log.new(activities.size + 1, activity)
    end
  end
end
