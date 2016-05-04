#========== Import ========#

require 'pp'


#========== Hashes ========#

QuestionsInHash = {
  "Einkaufspreis" => 4,
  "Verkaufspreis" => 6,
  "Mindestabnahmemenge" => 6,
  "White Labled" => 6,
  "Seriöser Anbieter" => 4,
  "Customizable" => 4,
  "Größe" => 6,
  "Normen" => 6,
  "Kontrolle über Funktionalität" => 5,
  "Verschleiß" => 5,
  "Differenzierugnsmerkmal" => 6,
  "Konkurrenz" => 6,
  "Durchschnittliche Bewertungen" => 5,
  "Verkaufsrate(Mengen)" => 5,
  "Saisionabhängigkeit" => 4,
  "Zielgruppe/Trend" => 6,
  "Verletzungsrisiko/Risiken" => 6,
  "Geruch" => 5,
  "Möglichkeit zur Markterweiterung" => 4

}

#========= Methodes ==========#

def clear

sleep(0.5)
system("clear")
puts "=================================================="
puts "==============> Produkt Auswertung <=============="
puts "=================================================="
puts ""
sleep(0.2)

end

def clearProduct

sleep(0.5)
system("clear")
puts "=================================================="
puts "==============> Produkt Auswertung <=============="
puts "Bewertung für Produkt: #{ProduktName}"
puts "=================================================="
puts ""
sleep(0.2)

end


def questions(question, points)

QuestionsInHash[question] = points

end

#======== Variables ========#

points = 0
QuestionCount = 0

#========= Main ==========#

clear

puts "Welches Produkt möchtest du bewerten?"
ProduktName = gets.chomp


QuestionsInHash.each { |question, defaultPoints|

	clearProduct
	puts "Was ist mit: " + question + "? (Max. #{defaultPoints} Punkte)"
	points = gets.chomp
	questions(question, points)

}

clear

puts ""
QuestionsInHash.each { |x, y|

	puts x, y


}
puts ""

