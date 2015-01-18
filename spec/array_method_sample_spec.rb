require_relative '../array_method_sample.rb'

describe Foo do
  let(:foo) { Foo.new([*(1..4)]) }

  describe "#each" do
    it {
      expect(foo.each).to eq [2, 3, 4, 5]
    }
  end

  describe "#each_with_index" do
    it {
      expect(foo.each_with_index).to eq [1, 3, 5, 7]
    }
  end

  describe "#each_with_object" do
    it {
      scores = { 'Carol' => 90, 'Alice' => 50, 'David' => 40, 'Bob' => 60 }
      foo2 = Foo.new(scores)
      expect(foo2.each_with_object).to eq ["Carol", "Bob"]
    }
  end

  describe "#inject" do
    it {
      expect(foo.inject).to eq 10
    }
  end

  describe "#map" do
    it {
      expect(foo.map).to eq [2, 4, 6, 8]
    }
  end

  describe "#map!" do
    it {
      expect(foo.map!).to eq [2, 4, 6, 8]
    }
  end

  describe "#select" do
    it {
      expect(foo.select).to eq [2, 4]
    }
  end

  describe "#detect" do
    it {
      expect(foo.detect).to eq 2
    }
  end

  describe "#reject" do
    it {
      expect(foo.reject).to eq [1, 3]
    }
  end

  describe "#combination" do
    it {
      expect(foo.combination(2)).to eq [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]
    }
  end
end