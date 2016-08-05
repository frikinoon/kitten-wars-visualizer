require 'spec_helper'
require 'kitten'

describe Kitten do
  describe "#new" do
    it 'Creates a kitten with a name' do
      kitten = Kitten.new('Skardian')

      expect(kitten.name).to eq 'Skardian'
    end
  end
end

