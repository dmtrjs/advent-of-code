SUM = 2020.freeze

def read_file
  File.readlines('input.txt', chomp: true)
end

def unique_entries(entries)
  entries.map(&:to_i).uniq
end

def find_answer(entries)
  entries.each do |entry|
    second_entry = SUM - entry

    if entries.include?(second_entry)
      @answer = entry * second_entry
      puts "Entries are: #{entry} and #{second_entry}"
      puts "Answer is: #{@answer}"

      break
    end
  end
  puts "Could not find entries that would sum up to #{SUM}" if @answer.nil?
end

def run
  lines = read_file
  entries = unique_entries(lines)
  
  find_answer(entries)
end

run