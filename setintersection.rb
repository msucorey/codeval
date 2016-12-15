=begin
SET INTERSECTION
CHALLENGE DESCRIPTION:
You are given two sorted list of numbers (ascending order). The lists
themselves are comma delimited and the two lists are semicolon delimited.
Print out the intersection of these two sets.
INPUT SAMPLE:
File containing two lists of ascending order sorted integers, comma delimited,
one per line. E.g.
1,2,3,4;4,5,6
20,21,22;45,46,47
7,8,9;8,9,10,11,12
OUTPUT SAMPLE:
Print out the ascending order sorted intersection of the two lists, one per
line. Print empty new line in case the lists have no intersection. E.g.
4

8,9
=end

lines = File.readlines(ARGV[0])

lines.each do |line|
  str1, str2 = line.chomp.split(";")
  set1 = str1.split(",")
  set2 = str2.split(",")
  int = []
  int = set1 & set2
  if int.size == 0
    puts ""
  else
    puts int.join(",")
  end
end
