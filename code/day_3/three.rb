# frozen_string_literal: true

ADJACENT_POSITIONS = [
  [-1, -1], [-1, 0], [-1, 1],
  [0, -1], [0, 1],
  [1, -1], [1, 0], [1, 1]
]

def day_three(path)
  file = File.open(File.expand_path(path, __dir__))
  line_array = file.readlines.map(&:chomp)

  # [[1,2,3], [4,5,6]]
  grid = []

  # [[row, col]]
  found_symbols = []

  line_array.each_with_index do |row, row_index|
    # 1. create grid
    grid_row = row.split('')
    grid.push(grid_row)

    # 2. find indexes of symbols
    grid_row.each_with_index do |char, col_index|
      next unless char.match?(/[^\d.]/)

      found_symbols.push([row_index, col_index])
    end
  end

  sum = 0

  # 3. get sums for indexes
  found_symbols.each do |indexes|
    row_index = indexes[0]
    col_index = indexes[1]

    ADJACENT_POSITIONS.each do |position|
      sum += get_and_update_number(grid, row_index + position[0], col_index + position[1]).to_i
    end
  end

  sum
end

def get_and_update_number(grid, row, col)
  return if col.negative? || col > grid[row].length

  char = grid[row][col]

  return unless check_string(char)

  original_value = char.dup
  grid[row][col] = '.'

  "#{get_and_update_number(grid, row, col - 1)}#{original_value}#{get_and_update_number(grid, row, col + 1)}"
end

def check_string(str)
  return false unless str

  str.scan(/\D/).empty?
end

puts day_three('input.txt')
