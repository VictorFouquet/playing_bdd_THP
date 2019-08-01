# README

Bienvenue dans le projet Free Doc !
Pour commencer, lance un bundle install depuis ce dossier pour installer les gems nécessaires.

Pour actualiser la bdd, entre dans ta console la commande :
$rail db:seed

Pour t'amuser un peu, ouvre la console de rails en entrant dans ta 
console la commande :
$rails c

Tu peux désormais jouer avec la db !


++++++++++++++++++++++++++++++++++++++++++++++++++++++

Pour obtenir des infos relatives aux docteurs :

++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	Afficher la liste des docteurs :

tp Doctor.all

	Sélectionner un docteur au hasard pour faire les tests:

my_doctor = Doctor.find(rand(Doctor.first.id..Doctor.last.id))
	
	Pour connaitre sa ville :

puts City.find(my_doctor.city_id).name

	Pour connaître le détail de ses rdv (patients, villes, dates :

my_doctor_appointments = my_doctor.appointments
my_doctor_appointments.each do |appointment|
	print Patient.find(appointment.patient_id).first_name, " ", Patient.find(appointment.patient_id).last_name, ", ", City.find(appointment.city_id).name, ", ", appointment.date, "\n"
end
	
	Pour connaitre ses spécialités :

my_doctor_specialities = SpecialityDoctor.where(doctor_id: my_doctor.id)
my_doctor_specialities.each do |speciality|
	puts Speciality.find(speciality.speciality_id).name
end


++++++++++++++++++++++++++++++++++++++++++++++++++++++

Pour obtenir des infos relatives aux patients :

++++++++++++++++++++++++++++++++++++++++++++++++++++++

	Afficher la liste des patients :

tp Patient.all

	Sélectionner un patient au hasard pour faire les tests:

my_patient = Patient.find(rand(Patient.first.id..Patient.last.id))
	
	Pour connaitre sa ville :

puts City.find(my_patient.city_id).name


	Pour connaître le détail de ses rdv (docteur, ville, date) :

my_patient_appointments = my_patient.appointments
my_patient_appointments.each do |appointment|
	print Doctor.find(appointment.doctor_id).first_name, " ", Doctor.find(appointment.doctor_id).last_name, ", ", City.find(appointment.city_id).name, ", ", appointment.date, "\n"
end
	
	
