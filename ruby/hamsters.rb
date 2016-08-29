print "What is the hamsters name?\n"
hamster_name=gets.chomp
print "What is the hamsters volume level? Enter a integer value between 1 and 10.\n"
hamster_volume=gets.to_i
print "What is the hamsters fur color?\n"
hamster_furcolor=gets.chomp
print "Whether the hamsters good candidate for adoption?\n"
hamster_candidacy=gets.chomp
print "What is the hamsters estimated age?\n"
hamster_age=gets.to_i
if hamster_age==""
    hamster_age=nil
end

print "Hamster name is #{hamster_name}.\n"
print "Hamster is about a #{hamster_volume} loud on a scale from 1-10.\n"
print "Hamster is #{hamster_furcolor} colored.\n"
print " #{hamster_candidacy}, adopt this hamster.\n"
print "Hamster's approximate age is #{hamster_age}.\n"