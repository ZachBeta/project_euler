=begin

Starting in the top left corner of a 22 grid, there are 6 routes (without backtracking) to the bottom right corner.


How many routes are there through a 2020 grid?

=end


# it's in a 2x2 grid we basically have a string of 4 moves
# rights and downs
# 0 shall be right
# 1 shall be down
# sample goes
# 0011
# 0101
# 0110
# 1001
# 1010
# 1100
#
# we must then for a 20x20 take a string of
# 20 "down"s and 20 "right"s and permute them
#
# Slept on it.
# 40 choose 20
