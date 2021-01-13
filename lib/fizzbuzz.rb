#!/usr/bin/env ruby

#fizzbuzz practice
def fizzbuzz (n)
    fb = ''
    case
    when n % 15 == 0
        fb = "FizzBuzz"
    when n % 5 == 0
        fb = "Buzz"
    when n % 3 == 0
        fb = "Fizz" 
    else
        fb = n.to_s   
    end
    return fb
end

def fb_array(n)
    num_list = [*1..n]
    fb_list = []
    num_list.each{|num|
        temp = fizzbuzz(num)
        fb_list.push(temp)
    }
    return fb_list
end