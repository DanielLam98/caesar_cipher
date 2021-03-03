def caesar_cipher(string, num)
    string = string.split('')
    string.map!{|x| x.ord}
    string.map! do |i|
        if (i >= 65 && i<= 90) || (i >= 97 && i <=122)
            i += num
            if (i>90 && i<97) || (i>122)
                i -= 26
            end
        end
        i
    end
string.map!{|x| x.chr}
string.join('')
end 

message =caesar_cipher("What a string!", 5)

puts message