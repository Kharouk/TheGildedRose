require File.join(File.dirname(__FILE__), '../gilded_rose')
require 'rspec'
require 'spec_helper'

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("Brie", 0, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].name).to eq "Brie"
    end

    it "updates quality based on sell_in number" do
      items = [Item.new('Test', 1, 5)]
      GildedRose.new(items).update_quality
      expect(items[0].sell_in).to eq 0
    end
  end

end
