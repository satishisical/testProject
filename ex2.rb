file = ARGV.first
txt = open(file)

puts "here is your file #{file}"
print txt.read

print "type file name again"
file_ag = $stdin.gets.chomp()
puts "here is your file #{file_ag}"
txt_ag = open(file_ag)

print txt_ag.read