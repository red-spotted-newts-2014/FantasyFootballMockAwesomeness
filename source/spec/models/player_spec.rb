require 'spec_helper'

describe Player do
  #it "is valid with firstname, lastname, position, rank, byeweek, ADP" do

  it "is invalid without first_name" do
    expect(Player.new(first_name: nil)).to_not be_valid
  end
  # it "is invalid without lastname"
  # it "is invalid without rank"
  # it "is invalid without position"
  # it "is invalid without rank"
  # it "is invalid without byeweek"
  # it "is invalid without ADP"
end
