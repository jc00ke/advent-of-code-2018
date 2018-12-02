puts IO
  .readlines("01.txt", chomp: true)
  .sum { |n| n.to_i }
