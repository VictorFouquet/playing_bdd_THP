class Speciality < ApplicationRecord
	has_many :doctors, through: :speciality_doctors
end
