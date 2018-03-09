require "spec_helper"

RSpec.describe Everlog::Log do
  subject(:log) { described_class.new(n, activity) }

  let(:n) { 1 }
  let(:activity) { "some activity" }

  it "has a number" do
    expect(log).to respond_to(:number) 
  end

  it "has an activity" do
    expect(log).to respond_to(:activity)
  end
end
