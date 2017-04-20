class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end


# Takes number input, and outputs a certain amount of bottles

  def bottle(number)
    b = "of beer"
    if number > 1
      return "#{number} bottles #{b}"
    elsif number == 1
      return "#{number} bottle #{b}"
    elsif number == 0
      return "no more bottles #{b}"
    end
  end

# replaces the take line in the middle with a dynamically generated one

def take(bot)
  tk = "down and pass it around, #{bottle(bot - 1)}"
  if bot == 1
    return "Take it #{tk}"
  elsif bot > 1
    return "Take one #{tk}"
  elsif bot < 1
    return "Go to the store and buy some more, #{bottle(bot + 99)}"
  end
end

def cap(input)
  bb = "more bottles of beer"
  if input == "no #{bb}"
    return "No #{bb}"
  else
    return "#{input}"
  end
end


  def verse(number)
    w = "on the wall"
    "#{cap(bottle(number))} #{w}, #{bottle(number)}.\n#{take(number)} #{w}.\n"
  end
end
