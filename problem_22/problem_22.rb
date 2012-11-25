=begin

Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938  53 = 49714.

What is the total of all the name scores in the file?

=end

names_file = File.open("names.txt")

names = []

names_file.each do |line|
  line.split(",").each do |word|
    names << word.gsub('"','')
  end
end

def score_name(name)
  score = 0
  name.each_byte do |char|
    score += char - 64
  end
  return score
end

sorted_names = names.sort
total_score = 0

for i in (0..sorted_names.length-1) do
  total_score += (i + 1) * score_name(sorted_names[i])
  if sorted_names[i] == "COLIN"
    puts i.to_s
    puts score_name("COLIN")
  end
  if i == 938
    puts sorted_names[i]
    puts score_name(sorted_names[i])
  end
end

puts total_score
