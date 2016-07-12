	class Animal
		attr_accessor :name, :type 

		def initialize(type, name)
			@type = type
			@name = name
		end

		def walk
			puts "I am walking"
		end
	end

	class Dog < Animal
		def initialize(name)
			@type = "dog"
			@legs = 4
			@name = name
		end
	end

	class SuperDog < Dog
		def initialize(name)
			super(name)
			@can_fly = true
		end
	end

	animal1 = Animal.new("Jack", "Jim")

	puts animal1.type
	puts animal1.name
	animal1.name = "Fido"
	puts animal1.name

	dog1 = Dog.new("Jim")
	puts dog1.type
	puts dog1.name

	superdog1 = SuperDog.new("Sfido")

	animal1.walk
	dog1.walk
	superdog1.walk

