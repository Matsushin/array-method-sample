
class Foo
  def initialize(numbers)
    @numbers = numbers
  end

  def each
    results = []
    @numbers.each { |item|
      results.push(item + 1)
    }
    results
  end

  def each_with_index
    results = []
    @numbers.each_with_index { |item, idx|
      results.push(item + idx)
    }
    results
  end

  def each_with_object
    @numbers.each_with_object([]) do |(key, item), results|
      results.push(key) if item >= 60
    end
  end

  def inject
    @numbers.inject(0) { |sum, value|
      sum + value
    }
  end

  def map
    @numbers.map { |item| item * 2}
  end

  def map!
    @numbers.map! {|item| item * 2}
    @numbers
  end

  def select
    @numbers.select { |item| item % 2 == 0 }
  end

  def detect
    @numbers.detect { |item| item % 2 == 0}
  end

  def reject
    @numbers.reject { |item| item % 2 == 0}
  end

  def combination(n)
    results = []
    @numbers.combination(n) { |a, b|
      results.push([a, b])
    }
    results
  end
end
