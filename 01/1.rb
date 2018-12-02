puts IO
  .readlines("data.txt", chomp: true)
  .sum { |n| n.to_i }
