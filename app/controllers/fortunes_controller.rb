class FortunesController < ApplicationController

 def horoscopes

    all_zodiacs = Zodiac.list
    # When I fetch "the_sign" from params i.e. params.fetch("the_sign"), I get a string. 
    # That string is supposed to be the Symbol I fetch from my hash in @this_zodiac to make this whole thing work,
    p @tst = params.fetch("the_sign").to_sym
    p @this_zodiac = all_zodiacs.fetch(@tst)
    p @sign = @this_zodiac.fetch(:name)
    p @horoscope = @this_zodiac.fetch(:horoscope)

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({:template => "horoscope_templates/scope.html.erb"})

 end 
end 