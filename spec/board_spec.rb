require 'spec_helper'
require 'board'

describe Board do
  describe "#new" do
    it 'creates a 16x16 board' do
      board = Board.new(16,16)

      expect(board.x).to eq 16
      expect(board.y).to eq 16
    end

    it 'creates a board with a different size' do
      board = Board.new(32,32)

      expect(board.x).to eq 32
      expect(board.y).to eq 32
    end
  end

  describe "#draw" do
    it 'draws a 2x2 board' do
      board = Board.new(2,2)
      drawing = <<-END.gsub(/^ +/, "")
      +--+
      |··|
      |··|
      +--+
      END

      expect(board.draw).to eq drawing
    end

    it 'draws a 3x3 board' do
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

    it 'draws a board with a kitten' do
      board = Board.new(3,3)
      kitten = Kitten.new("Skardian", 0, 0)
      board.add(kitten)
      drawing = <<-END.gsub(/^ +/, "")
      +---+
      |S··|
      |···|
      |···|
      +---+
      END

      expect(board.draw).to eq drawing
    end

    it 'draws a board with multiple kittens' do
      board = Board.new(3,3)
      kitten = Kitten.new("Skardian", 0, 0)
      new_kitten = Kitten.new("NotSkardian", 1, 1)
      board.add(kitten)
      board.add(new_kitten)
      drawing = <<-END.gsub(/^ +/, "")
      +---+
      |S··|
      |·N·|
      |···|
      +---+
      END

      expect(board.draw).to eq drawing
    end
  end

  describe "#add" do
    it 'adds a kitten to the board on a given position' do
      board = Board.new(3, 3)
      kitten = Kitten.new("Skardian", 0, 0)

      board.add(kitten)
      expect(board.kittens).to include("S" => kitten)
    end

    it 'keeps every kitten added to the board' do
      board = Board.new(3, 3)
      kitten = Kitten.new("Skardian", 0, 0)
      new_kitten = Kitten.new("NotSkardian", 1, 1)

      board.add(kitten)
      expect(board.kittens).to include("S" => kitten)

      board.add(new_kitten)
      expect(board.kittens).to include("S" => kitten)
      expect(board.kittens).to include("N" => new_kitten)
    end
  end

end
