require 'spec_helper'
require 'kitten'

describe Kitten do
  describe "#new" do
    it 'creates a kitten with a name and a position' do
      kitten = Kitten.new('Skardian', 0, 0)

      expect(kitten.name).to eq 'Skardian'
    end
  end

  describe "#identifier" do
    it 'returns a letter to represent the kitten' do
      kitten = Kitten.new('Skardian', 0, 0)

      expect(kitten.identifier).to eq 'S'
    end
  end
end

