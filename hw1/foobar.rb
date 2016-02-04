class Foobar
  # Q4 CODE HERE
  def self.baz(arr)
    arr.each_index { |i| arr[i] = arr[i].to_i + 2 }
    arr.select { |n| n.even? && n <= 10 }.uniq.inject(0, :+)
  end
end
