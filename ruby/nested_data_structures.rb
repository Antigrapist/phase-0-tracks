farmhouse_bed_assignments = {
	kitchen: [],
	laundryroom: "Miranda the Hedgehog",

	artroom: "Mandy",

	masterbedroom: [
		"Grandmother", 
		"Grandfather"
	],

	guestbedrooms: [ 
		[
			"Alex", 
			"Austin"
		],
		{
			raubach_family: [
				"Jack",
				"Sophia",
				"James the baby"
			]
		},
		[
			"Joey",
			"Courtney"
		]
	]
}
puts "Who will be staying in my room?"
puts farmhouse_bed_assignments[:guestbedrooms][0][1] 

puts "Who is in the only room with a private bathroom?" 
puts farmhouse_bed_assignments[:masterbedroom] 
puts "Who is staying with Jack?"
puts farmhouse_bed_assignments[:guestbedrooms][1][:raubach_family][1..2]