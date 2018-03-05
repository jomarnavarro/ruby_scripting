#---
# Excerpted from "Everyday Scripting in Ruby"
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/bmsft for more book information.
#---
#Command line arguments
unless ARGV.length == 2
  puts "Need two arguments, one per inventory file" if ARGV.length != 2
  exit
end
old_inventory = File.open(ARGV[0]).readlines.collect { |line| line.downcase }
#puts old_inventory
new_inventory = File.open(ARGV[1]).readlines.collect { |line| line.downcase }
#puts new_inventory
files_added = (new_inventory - old_inventory).length
files_removed = (old_inventory - new_inventory).length
common_count = (new_inventory  & old_inventory).length

puts "#{files_added} files have been added:"
puts new_inventory - old_inventory

puts ""
puts "#{files_removed} have been deleted:"
puts old_inventory - new_inventory

puts ""
puts "#{common_count} files did not change"

puts ""
puts ""
