"01.txt"
|> File.stream!()
|> Stream.map(&String.trim/1)
|> Stream.map(&String.to_integer/1)
|> Enum.sum()
|> IO.inspect()

System.halt()
