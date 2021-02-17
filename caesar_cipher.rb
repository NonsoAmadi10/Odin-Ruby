# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

def caesar_cipher(word, shift=3)
    # initialize an empty string
    cipher_string = ""

    # check if the shift is less than 1 
    if shift < 0 
        return caesar_cipher(word, shift+26)
    end
    # Iterate over each character call 
    word.each_char do |x|
        char_code = x.ord
        # check for uppercase letters
        if char_code.between?(65,90) 
            x = (((char_code - 65 + shift) % 26) + 65)

        # check for lowercase
        elsif char_code.between?(90,122)
            x =(((char_code - 97 + shift) % 26) + 97)
        end
        cipher_string << x.chr
    end
    cipher_string
end

p caesar_cipher("What a string!", 5)