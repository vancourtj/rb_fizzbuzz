require "fizzbuzz"

describe "fizzbuzz" do
    it 'returns "Fizz" when the number is divisible by 3' do
        check_3 = fizzbuzz(3)
        expect(check_3).to eq("Fizz")
    end
    it 'returns "Buzz" when the number is divisible by 5' do
        check_5 = fizzbuzz(5)
        expect(check_5).to eq("Buzz")
    end
    it 'returns "FizzBuzz" when the number is divisible by both 3 and 5 (15)' do
        check_15 = fizzbuzz(15)
        expect(check_15).to eq("FizzBuzz")
    end
    it 'returns "n" for all other n, using 7 as example' do
        check_7 = fizzbuzz(7)
        expect(check_7).to eq("7")
    end
end

describe "fb_array" do
    it 'returns an array of length n, using 31 as example' do
        check_l = fb_array(31).length()
        expect(check_l).to eq(31)
    end
    it 'returns elements of fizzbuzz i.e. a list of strings' do
        check_string = fb_array(31)[0].is_a? String
        expect(check_string).to be true
    end
    it 'returns fuzzbuzz results in order i.e. fuzzbuzz(1), fuzzbuzz(2), ...' do
        fb = fb_array(31)
        fb_1 = fb[0]
        fb_3 = fb[2]
        fb_5 = fb[4]
        expect(fb_1).to eq("1")
        expect(fb_3).to eq("Fizz")
        expect(fb_5).to eq("Buzz")
    end
end