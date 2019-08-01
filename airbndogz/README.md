Bienvenue dans le projet Air B'n'Dogz !
Pour commencer, lance un bundle install depuis ce dossier pour installer les gems nécessaires.

Pour actualiser la bdd, entre dans ta console la commande :
$rail db:seed

Pour t'amuser un peu, ouvre la console de rails en entrant dans ta 
console la commande :
$rails c

Tu peux désormais jouer avec la db ;)

++++++++++++++++++++++++++++++++++++++++++++++++++++++

Pour obtenir des infos relatives aux dogsitters :

++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
Afficher la liste des dogsitters :

	tp Dogsitter.all

Sélectionner un dogsitter au hasard pour faire les tests:

	my_dogsitter = Dogsitter.find(rand(Dogsitter.first.id..Dogsitter.last.id))
	
Pour connaitre sa ville :

	puts City.find(my_dogsitter.city_id).name

Pour connaitre ses promenades et les chiens qu'il promène :

	my_dogsitter_strolls = Stroll.where(dogsitter_id: my_dogsitter.id)
	my_dogsitter_strolls.each do |stroll|
		print "Promenade de ", Dog.find(stroll.dog_id).name, " à ", City.find(stroll.city_id).name, ".\n"
	end

++++++++++++++++++++++++++++++++++++++++++++++++++++++

Pour obtenir des infos relatives aux chiens :

++++++++++++++++++++++++++++++++++++++++++++++++++++++

Afficher la liste des dogz :

	tp Dog.all

Sélectionner un chien au hasard pour faire les tests:

	my_dog = Dog.find(rand(Dog.first.id..Dog.last.id))
	
Pour connaitre sa ville :

	puts City.find(my_dog.city_id).name

Pour connaitre ses promenades et les dogsitters qui le promènent :

	my_dog_strolls = Stroll.where(dog_id: my_dog.id)
	my_dog_strolls.each do |stroll|
		print "Promené par ", Dogsitter.find(stroll.dogsitter_id).name, " à ", City.find(stroll.city_id).name, ".\n"
	end
	
