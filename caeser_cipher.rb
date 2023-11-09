def caesar_cipher(string, shift_factor)
    # take string and substitute letters [a-z] (pattern) with the following orders (replacement). on each letter do an operation
        # somehow i within gsub argument prevents different letters from being assigned the same letter but in upcase for one and lowcase for other? need to look more into that
    # order takes a letter and returns the position on ascii chart. checks upcase/lowcase
    # original sets original values of string
    # shifted moves position according to parameter passed to method, 26 because # of letters in alphabet (without it returns a text symbol instead of a letter)
    #ciphered_letter converts numbered phrase back into letters
        string.gsub(/[a-z]/i) do |letter|
            order = (letter >= 'a' ? 'a' : 'A').ord
            original_letter = letter.ord - order
            shifted_letter = (original_letter + shift_factor) % 26
            ciphered_letter = (shifted_letter + order).chr
        end
end

# call method with arguments
p caesar_cipher("Hello Biznatch!", 7)