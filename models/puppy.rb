class Puppy
	attr_reader :breed
	attr_accessor :name, :age

	@@all = []

	def initialize(name: nil, age:, breed:)
		@name = name
		@age = age
		@breed = breed
		@@all << self
	end

	def self.all
		@@all
	end



end