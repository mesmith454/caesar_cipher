def caesar_cipher(string, shift_factor)
    # take each letter of string and convert to i
    # shift
    # convert back
    # return new string
        string.gsub(/[a-z]/i) do |letter|
            order = (letter >= 'a' ? 'a' : 'A').ord
            original = letter.ord - order
            shifted = (original + shift_factor) % 26
            (shifted + order).chr
        end
end

p caesar_cipher("Hello World!", 3)