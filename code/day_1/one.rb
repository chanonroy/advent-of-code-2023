def calibration_document_sum(path)
  path = File.expand_path(path, __dir__)
  file = File.open(path)
  line_array = file.readlines.map(&:chomp)

  total_sum = 0
  line_array.sum do |line|
    total_sum += find_first_digits(line)
  end

  total_sum
end

def find_first_digits(line)
  start_index = line.index(/\d/)
  end_index = line.rindex(/\d/)
  start_digit = line[start_index] if start_index
  end_digit = line[end_index] if end_index

  end_digit ||= start_digit

  "#{start_digit}#{end_digit}".to_i
end
