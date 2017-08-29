def makestory
  rest = ""
  File.open("source.txt", "r") do |f|
    src_words = f.read.chomp.split(" ")
    first_word = src_words.first
    rest = src_words[1..src_words.length].join(" ")
    append_to_story(first_word)
  end
  overwrite_source(rest)
end

def append_to_story(word)
  File.open("story.txt", "a") do |f|
    f.write " #{word}"
  end
end

def overwrite_source(text)
  File.open("source.txt", "w") do |f|
    f.write text
  end
end

makestory
