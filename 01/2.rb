require "set"

def sum_of(start, lines, seen)
  sum = lines.inject(start) do |a, line|
    a += line.to_i

    throw(:found, a.to_s) if seen.member?(a)

    seen.add(a)
    a
  end

  sum_of(sum, lines, seen)
end

lines = IO.readlines("data.txt", chomp: true)
start = 0
seen = Set[start]

value = catch(:found) do
  sum_of(start, lines, seen)
end

puts value
