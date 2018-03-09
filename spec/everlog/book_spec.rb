require "spec_helper"

RSpec.describe Everlog::Book do
  subject(:book) { described_class.new }

  describe "#record" do
    let(:activity) { "some activity" }

    it "generates a new log" do
      expect { book.record(activity) }.to change {
        book.activities.size
      }.from(0).to(1)
    end

    it "increments the log number" do
      book.record(activity)
      book.record(activity)

      expect(book.activities[0].number).to eq(1)
      expect(book.activities[1].number).to eq(2)
    end
  end
end
