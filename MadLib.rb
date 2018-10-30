template = "{adjective} Macdonald had a {noun}, E-I-E-I-O
and on that {noun} he had a {animal}, E-I-E-I-O
with a {noise} {noise} here
and a {noise} {noise} there,
here a {noise}, there a {noise},
everywhere a {noise} {noise},
{adjective} Macdonald had a {noun}, E-I-E-I-O."
leftBracket = 0
rightBracket = 0
while leftBracket != nil
leftBracket = template.index("{")
rightBracket = template.index("}")
    if leftBracket != nil
        wordToReplace = template[leftBracket, (rightBracket - leftBracket) + 1]
puts "Give me a #{wordToReplace}?"
answer = gets.chomp
template = template.gsub!(wordToReplace, answer)
    end
end
puts template