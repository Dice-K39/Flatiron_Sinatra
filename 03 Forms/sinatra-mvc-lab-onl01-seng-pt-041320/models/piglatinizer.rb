require "pry"
class PigLatinizer
    def piglatinize(text)
        words_array = text.split(' ')
        words_array.map do |word|
            if /^[aeiou]/i.match(word)
                "#{word}way"
            else
                characters = word.split(/([aeiou].*)/)
                "#{characters[1]}#{characters[0]}ay"
            end
        end.join(' ')
    end



    # def piglatinize(text)
    #     words_array = text.split('')
    #     binding.pry

    #     if words_array[0].match(/^[AEIOUaeiou]/)
    #         pig_latin = words_array.join + "way"
    #         #binding.pry
    #     else
    #         first_letter = words_array.shift
    #         pig_latin = words_array.join + first_letter + "ay"
    #         #binding.pry
    #     end
    #     #binding.pry
    # end
end