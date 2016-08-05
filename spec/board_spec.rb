require 'spec_helper'
require 'board'

describe Board do
  describe "#new" do
    it 'Creates a 16x16 board' do
      board = Board.new(16,16)

      expect(board.x).to eq 16
      expect(board.y).to eq 16
    end

    it 'Creates a board with a different size' do
      board = Board.new(32,32)

      expect(board.x).to eq 32
      expect(board.y).to eq 32
    end
  end

  describe "#draw" do
    it 'Paints a 2x2 board' do
      board = Board.new(2,2)
      drawing = <<-END.gsub(/^ +/, "")
      +--+
      |··|
      |··|
      +--+
      END

      expect(board.draw).to eq drawing
    end

    it 'Paints a 3x3 board' do
      board = Board.new(3,3)
      drawing = <<-END.gsub(/^ +/, "")
      +---+
      |···|
      |···|
      |···|
      +---+
      END

      expect(board.draw).to eq drawing
    end

    it 'Paints a board with a kitten' do
      board = Board.new(3,3)
      kitten = Kitten.new("Skardian")
      board.add(kitten, 0, 0)
      drawing = <<-END.gsub(/^ +/, "")
      +---+
      |S··|
      |···|
      |···|
      +---+
      END

      expect(board.draw).to eq drawing
    end
  end

  describe "#add" do
    it 'Adds a kitten to the board on a given position' do
      board = Board.new(3, 3)
      kitten = Kitten.new("Skardian")

      board.add(kitten, 0, 0)
      expect(board.kittens).to include("Skardian" => [kitten, 0, 0])
    end

    it 'Keeps every kitten added to the board' do
      board = Board.new(3, 3)
      kitten = Kitten.new("Skardian")
      new_kitten = Kitten.new("NotSkardian")

      board.add(kitten, 0, 0)
      expect(board.kittens).to include("Skardian" => [kitten, 0, 0])

      board.add(new_kitten, 1, 1)
      expect(board.kittens).to include("Skardian" => [kitten, 0, 0])
      expect(board.kittens).to include("NotSkardian" => [new_kitten, 1, 1])
    end
  end

end
