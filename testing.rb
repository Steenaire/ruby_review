class Sam
  def recipes
    return ["Crepe","Ice Cream","Coq au Vin","Pizza","Elderflower Pie","Croissant",4,5,6,7,8]
  end
end

class Sally
  def languages
    return ["French","Chinese","Russian","English","Farsi","Spanish"]
  end
end

sam = Sam.new
sally = Sally.new

if (sam.recipes.length > 10) && (sally.languages.length > 5)
  puts "They should date"
  if sam.recipes.include?("Crepe") || sally.languages.include?("French")
    puts "They should marry"
  end
end
