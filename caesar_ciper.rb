def caesar_cipher(text, shift)
  result = ""

  text.each_char do |char|
    if char.match(/[a-zA-Z]/)
      ascii_offset = char.downcase == char ? 'a'.ord : 'A'.ord
      shifted_char = ((char.ord - ascii_offset + shift) % 26 + ascii_offset).chr
      result += shifted_char
    else
      result += char
    end
  end

  return result
end

# Example usage:
plaintext = "What a string!"
shift = 5
encrypted_text = caesar_cipher(plaintext, shift)
puts "Original: #{plaintext}"
puts "Encrypted: #{encrypted_text}"