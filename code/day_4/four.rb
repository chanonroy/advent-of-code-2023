# frozen_string_literal: true

require 'set'

def day_four(path)
  file = File.open(File.expand_path(path, __dir__))
  line_array = file.readlines.map(&:chomp)

  pattern = /^(.*?):\s*(.*?)\s*\|\s*(.*?)$/

  sum = 0

  line_array.each do |line|
    matches = line.match(pattern)

    winners_set = matches[2].split(' ').to_set
    entries = matches[3].split(' ').to_set

    points = 0

    entries.each do |entry|
      next unless winners_set.include?(entry)

      if points.positive?
        points *= 2
      else
        points += 1
      end
    end
    sum += points
  end
  sum
end
