require "nokogiri"
require "open-uri"
@doc=Nokogiri::HTML(URI.open("https://fr.wikipedia.org/wiki/Liste_des_pays_du_monde"))
@pays=[]
@doc.css(".wikitable tr").each do |hi|
  hey=hi.css("a")


  if hey.length > 0 
  p hey[1].inner_html
  wow=(hey[1].text)
  p wow
  @pays.push(wow)
  end
end
p @pays
@doc1=Nokogiri::HTML(URI.open("https://fr.wikipedia.org/wiki/Liste_des_langues_officielles"))
@langues=[]
@doc1.css("h3 .mw-headline").each do |hi|


  p hi.text
  @langues.push(hi.text)
end
