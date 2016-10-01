# How might you design a Puppy class? 
# What sorts of characteristics and behavior might a Puppy class involve? 
# Using a format similar to the one we used for Eyelashus Adorableus, 
# come up with some characteristics and behavior for a Puppy class. 
# Use comments to add your class design to phase-0-tracks/ruby/puppy.rb.

#SPECIES ------------------------
#Puppy

# CHARACTERISTICS ----------------
# Cuteness level: varies
# Friendly: yes
# Legs: 4
# Name: varies
# Color: varies

# BEHAVIOR -----------------------
# Lick
# Nip
# Bark
# Wiggle waggle

class Puppy
	def waggle
		"*waggle"
	end 
end

fido = Puppy.new

p fido.waggle

Puppy.dup

p fido.class

