menu = {
	chicken_dish: {
		price: {
			half_portion: "$12", 
			whole_portion:  "$20" 
		},
		ingredients: ["chicken", "olive oil", "salt", "pepper", "garlic"] 
	},
	shrimp_dish: {
		ingredients: ["shrimp", "cocktail sauce"], 
		price: {
			half_portion: "$15", 
			full_portion: "25"
		}
	},
	fish_dish: {
		ingredients: ["fish", "garlic", "shallots"], 
		price: {
			half_portion: "$13",
			full_portion: "23"
			}
		}
}

p menu[:chicken_dish][:ingredients][3]
p menu[:fish_dish][:price][:full_portion]
p menu[:shrimp_dish][:ingredients][1].upcase