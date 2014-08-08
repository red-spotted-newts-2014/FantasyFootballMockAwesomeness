require 'spec_helper'

describe Player do

  it "is invalid without first_name" do
    expect(Player.new(first_name: nil)).to_not be_valid
  end

  it "is invalid without last_name" do
    expect(Player.new(last_name: nil)).to_not be_valid
  end

  it "is invalid without rank" do
   expect(Player.new(rank: nil)).to_not be_valid
  end

  it "is invalid without position" do
   expect(Player.new(position: nil)).to_not be_valid
  end

  it "is invalid without byeweek" do
    expect(Player.new(bye_week: nil)).to_not be_valid
  end

  it "is invalid without ADP" do
   expect(Player.new(ADP: nil)).to_not be_valid
  end

end
