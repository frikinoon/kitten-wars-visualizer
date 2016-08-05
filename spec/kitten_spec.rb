require 'spec_helper'
require 'kitten'

describe Kitten do
  describe "#new" do
    it 'creates a kitten with a name' do
      kitten = Kitten.new('Skardian')

      expect(kitten.name).to eq 'Skardian'
    end
  end

  describe "#figure" do
    it 'returns a letter to represent the kitten' do
      kitten = Kitten.new('Skardian')

      expect(kitten.figure).to eq 'S'
    end
  end
end

