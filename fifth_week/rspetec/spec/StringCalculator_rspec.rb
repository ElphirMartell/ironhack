require_relative "../StringCalculator"
require "spec_helper"

describe "StringCalculator" do 
  it "returns 0 for an empty string" do
    expect(StringCalculator.new.add("")).to eq(0)
  end    
end
