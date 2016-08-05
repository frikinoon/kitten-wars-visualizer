require 'spec_helper'
require 'board'

describe Board do
  describe "#new" do
    it 'Creates a 16x16 board' do
      board = Board.new(16,16)

      expect(board.x).to eq 16
      expect(board.y).to eq 16
    end
  end

end
