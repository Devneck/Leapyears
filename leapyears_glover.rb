############################################################
#
#  Name:        Sean Glover
#  Assignment:  Extra Credit #4 - Leap Years
#  Date:        01/22/2013
#  Class:       CIS 282
#  Description: Prompt user for starting year and ending year then print only leap years
#
############################################################

print "Enter 4 digit starting year: "
start_year = gets.to_i

print "Enter 4 digit ending year: "
end_year = gets.to_i

years = []
year = start_year

until year > end_year do
  years.push(year)
  year += 1
end

leap_years = []
years.each do |y|
  if y%400 == 0
    leap_years.push(y)
  elsif y%4 == 0 and y%100 != 0
    leap_years.push(y)
  end
end

print "Leap Years between #{start_year} and #{end_year}: "
leap_years.each { |y| print y.to_s + ", "  }
