movie_theater = {
	morning: {
		movie_name: "Zootopia",
		seat_info: {
			total: 30,
			available: 2
			},
		food_option: [
			"Breakfast Burrito",
			"Breakfast Sandwich",
			"Bagel w/ Cream Cheese"
		]
	},
	afternoon: {
		movie_name: "10 Cloverfield Lane",
		seat_info: {
			total: 30,
			available: 1
			},
		food_option: [
			"Hot Dog",
			"Cheeseburger",
			"Nachos"
		]
	},
	evening: {
		movie_name: "Batman vs. Superman",
		seat_info: {
			total: 30,
			available: 0
		},
		food_option: [
			"Steak Sandwich",
			"Cajun Fish Po' Boy",
			"Crispy Chicken Sandwich"
		]
	}
}

movie_theater[:morning][:movie_name]
movie_theater[:morning][:food_option][2]
movie_theater[:afternoon][:food_option][1]
movie_theater[:evening][:seat_info][:available]
movie_theater[:evening][:food_option]