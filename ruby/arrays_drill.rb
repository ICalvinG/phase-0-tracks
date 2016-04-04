def add(a, b, c)
	return [a, b, c]
end

def villains?(key, value)
	return key << value
end

super_heroes = []
    p super_heroes

super_heroes << "Batman"
super_heroes << "Superman"
super_heroes << "IronMan"
super_heroes << "Spiderman"
super_heroes << "DareDevil"
    p super_heroes


super_heroes.delete_at(2)
    p super_heroes

super_heroes.insert(2,"IronMan")
    p super_heroes

super_heroes.shift
    p super_heroes

p "Does this array include Spiderman: #{super_heroes.include?('Spiderman')}"




actors = ["Ben Affleck", "Henry", "RDJ", "Peter Parker", "Matt Murdock"]

adding = super_heroes + actors
    p adding

p add("Superman", "Batman", "Spiderman")
p villains?([], "Carnage")
p villains?(["Kingpin", "Green Goblin", "Venom"], "Carnage")