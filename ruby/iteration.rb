array_example = ['Batman', 'Superman', 'Spiderman', 'Captain America', 'Iron Man']

hash_example = {
  batman: 'Bruce Wayne',
  superman: 'Clark Kent',
  spiderman: 'Peter Parker'
}

# Before each method
p array_example

array_example.each do |hero|
  p hero.upcase
end

# After each method
p array_example

# Before each method on the hash
p hash_example

hash_example.each do |hero, identity|
  p "#{hero.capitalize} is #{identity}"
end

# After each method on the hash
p hash_example

# Before map! method on the array
p array_example

array_example.map! do |hero|
  hero.upcase
end

#After map! method on the array
p array_example
#Created array for Release 2
array = [1, 2 ,3, 5, 6, 7, 9, 10]
p array
#Created hash for Release 2
hash = {
  batman: 'hero',
  superman: 'hero',
  venom: 'villain',
  kingpin: 'villain',
  }
p hash
#Delete method on array
array.delete_if {|array| array > 4}
p array
#Delete method on hash
hash.delete_if {|key, value| value == "villain"}
p hash
#Select method on array
array = [1, 2 ,3, 5, 6, 7, 9, 10]
p array
array.select! { |x| x.even? }
p array
#Select method on hash
hash = {
  batman: 'hero',
  superman: 'hero',
  venom: 'villain',
  kingpin: 'villain',
  }
p hash
hash.select! {|key, value| value == "villain"}
p hash
#Reject method on array
array = [1, 2 ,3, 5, 6, 7, 9, 10]
p array
array.reject! {|x| x.even? }
p array
#Reject method on hash
hash = {
  batman: 'hero',
  superman: 'hero',
  venom: 'villain',
  kingpin: 'villain',
  }
p hash
hash.reject! {|key, value| value == "villain"}
p hash
#Keep if method on array
array = [1, 2 ,3, 5, 6, 7, 9, 10]
p array
p array.keep_if {|x| x <= 5}
#Keep if method on hash
hash = {
  batman: 'hero',
  superman: 'hero',
  venom: 'villain',
  kingpin: 'villain',
  }
p hash
hash.keep_if {|key, value| value == "villain"}
p hash