file_path = File.expand_path('input.txt', __dir__)
input = File.read(file_path)

MAX_RED = 12
MAX_BLUE = 14
MAX_GREEN = 13

input
  .each_line
  .sum do
    blue = _1.scan(/(\d+) b/).flatten.map(&:to_i).max
    red = _1.scan(/(\d+) r/).flatten.map(&:to_i).max
    green = _1.scan(/(\d+) g/).flatten.map(&:to_i).max

    if blue > MAX_BLUE || red > MAX_RED || green > MAX_GREEN
      0
    else
      _1.scan(/Game (\d*)/).flatten.first.to_i
    end
  end
.tap { puts _1 }
