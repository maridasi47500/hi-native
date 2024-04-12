# This file should ensure the existence of records required to run the application in every environment (production,
require "./pays"
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
[{"name"=>"comment dit on cela", "image"=>"&#63;", "icon"=>"#67e164"},
   {"name"=>"est-ce que cela semble naturel", "image"=>"&#9745;", "icon"=>"#41d8d3"},
     {"name"=>"journal de langue étrangère", "image"=>"&#128394;", "icon"=>"#f5a963"},
       {"name"=>"qu'est-ce que cela signifie", "image"=>"&#128280;", "icon"=>"#eb2c91"},
         {"name"=>"quelle est la différence", "image"=>"&#9711; &#9711;", "icon"=>"#f08ef2"},
           {"name"=>"montrez moi des examples de phrases contenant", "image"=>"&#128462;", "icon"=>"#da0e0e"},
             {"name"=>"Veuillez me montrer comment se prononce", "image"=>"&#128265;", "icon"=>"#e754c9"},
               {"name"=>"comment qualifierez vous ma prononciation", "image"=>"&#x1F50A;", "icon"=>"#0e1ee4"},
                 {"name"=>"poser uen question à propos d'un pays ou d'une région", "image"=>"&#127758;", "icon"=>"#e69bec"},
                   {"name"=>"question libre", "image"=>"&#x1F469;", "icon"=>"#dcfa0c"}].each do |demande|
                    Demande.find_or_create_by!(demande)
end


@pays.each do |hey|
  p hey
                    Country.find_or_create_by!(name: hey)
end
@langues[..-2].each do |hey|
  p hey
                    Language.find_or_create_by!(name: hey)

end
LearningLevel.find_or_create_by!(name: "debutant", description:"debuutant")
LearningLevel.find_or_create_by!(name: "intermediaire", description:"intermediaire")
LearningLevel.find_or_create_by!(name: "avancé", description:"avancé")
