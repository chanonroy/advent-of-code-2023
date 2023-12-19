# frozen_string_literal: true

# expected: 288

def day_six(path)
  file = File.open(File.expand_path(path, __dir__))
  line_array = file.readlines.map(&:chomp)

  race_times = line_array[0].split(":")[1].split(" ").map { |char| char.to_i }
  records = line_array[1].split(":")[1].split(" ").map { |char| char.to_i }

  total_wins = []

  race_times.each_with_index do |race_time, race_time_index|
    wins = 0
    record = records[race_time_index]

    hold_times = Array (1...race_time)

    hold_times.each do |hold_time|
      distance = hold_time * (race_time - hold_time)
      if distance > record
        wins += 1
      end
    end

    total_wins.push(wins)
  end

  total_wins.reduce(:*)
end

puts day_six('real.txt')
