MutualFund.destroy_all
Stock.destroy_all

kayvon = MutualFund.create({
	name: "Kayvon's Underpaid and Starving Children Mutual Fund"
})

thomas = MutualFund.create({
	name: "Thomas' Guns R Us Mutual Fund"
})

joe = MutualFund.create({
	name: "Joe's Underfluffed and Stuffingless Pillows Mutual Fund"
})

amazon = Stock.create({
	name: "Amazon.com Inc",
	ticker: "AMZN",
	industry: "Consumer Services",
	description: "We're not profittable, but will be soon"
})

google = Stock.create({
	name: "Google",
	ticker: "GOOGL",
	industry: "Technology",
	description: "Next year we're rebranding ourselves as Skynet"
})

visa = Stock.create({
	name: "Visa Inc",
	ticker: "V",
	industry: "Miscellaneous",
	description: "You have Mastercard? Ha! HA! HAHAHAHAH!"
})

underarmour = Stock.create({
	name: "UnderArmour",
	ticker: "UA",
	industry: "Clothing",
	description: "Up 23% today."
})

facebook = Stock.create({
	name: "Facebook",
	ticker: "FB",
	industry: "Private Investigation",
	description: "We make money off of your information!"
})

mckesson = Stock.create({
	name: "McKesson",
	ticker: "MCK",
	industry: "Healthcare",
	description: "Saving Lives!"
})

wayfair = Stock.create({
	name: "Wayfair",
	ticker: "W",
	industry: "Consumer Services",
	description: "Wayfair, never heard of them"
})

nintendo = Stock.create({
	name: "Nintendo",
	ticker: "NTDOY",
	industry: "Vidya",
	description: "Where dreams are created for men children"
})

kayvon.stocks << [amazon, wayfair, facebook]
thomas.stocks << [google, nintendo]
joe.stocks << [mckesson, facebook, visa]



