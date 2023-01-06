# decode letters
def decode_char(char)
  characters = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V',
    '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }
  characters[char]
end

# decode sentence
 
def decode_sentence(sentence)
  decoded_sentence = ''
  words_array = sentence.split(/   /)
  words_array.each_with_index do |word, i|
    if i.zero?
      decoded_sentence << decode_word(word)
    else
      decoded_sentence += " #{decode_word(word)}"
    end
  end
 
  decoded_sentence
end
