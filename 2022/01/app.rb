#!/usr/bin/env ruby

count = 0
elfs = []

STDIN.read.split("\n\n").each do |elf_load|
  elfs[count] = []
  elf_load.split("\n").each do |load|
    elfs[count] << load.to_i
  end
  count = count + 1
end

per_elf = elfs.map{_1.sum}

puts "Most Calories: #{per_elf.max}"

puts "Calories of Top 3: #{per_elf.sort.last(3).sum}"

