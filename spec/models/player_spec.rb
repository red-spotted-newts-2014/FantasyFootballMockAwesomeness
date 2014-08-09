require 'spec_helper'

describe Player do
   it "is valid player" do
    player = (Player.new(rank: 7, first_name: "Anthony", last_name: "Edwards", position: "QB", bye_week: 7, ADP: 3.55))
    expect(player).to be_valid
  end

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

  it "returns first_name as a string" do
    player = (Player.new(rank: 7, first_name: "Anthony", last_name: "Edwards", position: "QB", bye_week: 7, ADP: 3.55))
    expect(player.first_name).to eq("Anthony")
  end

end
