require 'pry'
class PigLatinizer
    
    def piglatinize(text)
        words = text.split(" ")
        pld_words = words.map do |word|
            vowels = ['a','e','i','o','u','A','E','I','O','U']
            arr = word.split(//)    
            if vowels.include?(arr[0])
                way = ['w','a','y']
                arr << way
                arr.join
            elsif vowels.include?(arr[1])
                chr = arr.slice!(0)
                ay = [chr,'a','y']
                arr << ay
                arr.join
            elsif vowels.include?(arr[2])
                chr = arr.slice!(0,2)
                ay = ['a','y']
                arr << chr
                arr << ay
                arr.join
            elsif vowels.include?(arr[3])
                chr = arr.slice!(0,3)
                ay = ['a','y']
                arr << chr
                arr << ay
                arr.join
            end
            
        end
        pld_words.join(" ")
    end
end