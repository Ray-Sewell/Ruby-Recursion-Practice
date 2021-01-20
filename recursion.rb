require_relative("merge-sort.rb")
require_relative("fibonacci.rb")

rand_nums = []
rand_num = rand(20)
rand(50).times do rand_nums.push(rand(50)) end

puts fibs(rand_num)
puts fibs_rec(rand_num)
p merge_sort(rand_nums)