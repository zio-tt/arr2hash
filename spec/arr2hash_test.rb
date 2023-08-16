require 'arr2hash'

RSpec.describe Arr2hash do
  describe '.a_to_hash' do
    it 'converts a 2D array with string keys to an array of hashes' do
      array = [["title", "content", "user_name"], ["A", "a", "あ"], ["B", "b", "い"]]
      expected = [
        {"title" => "A", "content" => "a", "user_name" => "あ"},
        {"title" => "B", "content" => "b", "user_name" => "い"}
      ]
      expect(Arr2hash.a_to_hash(array)).to eq(expected)
    end

    it 'handles an empty array' do
      expect(Arr2hash.a_to_hash([])).to eq([])
    end

    it 'handles an array with only keys' do
      array = [["title", "content", "user_name"]]
      expect(Arr2hash.a_to_hash(array)).to eq([])
    end

    it 'handles different types of keys and values' do
      array = [[1, :symbol, "string"], [2, :value, "text"]]
      expected = [{1 => 2, :symbol => :value, "string" => "text"}]
      expect(Arr2hash.a_to_hash(array)).to eq(expected)
    end

    it 'handles uneven arrays by filling with nil' do
      array = [["title", "content"], ["A"]]
      expected = [{"title" => "A", "content" => nil}]
      expect(Arr2hash.a_to_hash(array)).to eq(expected)
    end

    it 'handles special values like nil and false' do
      array = [["title", "content"], [false, nil]]
      expected = [{"title" => false, "content" => nil}]
      expect(Arr2hash.a_to_hash(array)).to eq(expected)
    end

    it 'handles large datasets efficiently' do
      array = [["key", "value"]] + [["title", "content"]] * 1000
      expected = [{"key" => "title", "value" => "content"}] * 1000
      expect(Arr2hash.a_to_hash(array)).to eq(expected)
    end
  end
end
