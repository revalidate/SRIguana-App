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

############## Technology ################

amazon = Stock.create({
	name: "Amazon.com Inc",
	ticker: "AMZN",
	industry: "Technology",
	description: "We're not profittable, but will be soon"
})

google = Stock.create({
	name: "Google",
	ticker: "GOOGL",
	industry: "Technology",
	description: "Next year we're rebranding ourselves as Skynet"
})

facebook = Stock.create({
	name: "Facebook",
	ticker: "FB",
	industry: "Technology",
	description: "We make money off of your information!"
})

apple = Stock.create({
	name: "Apple",
	ticker: "AAPL",
	industry: "Technology",
	description: "Onto the Apple Car!"
})

microsoft = Stock.create({
	name: "Microsoft",
	ticker: "MSFT",
	industry: "Technology",
	description: "One ant at a time..."
})

############## Oil ################

chevron = Stock.create({
	name: "Chevron",
	ticker: "CVX",
	industry: "Oil",
	description: "That's what a Chevron is?"
})

exxon = Stock.create({
	name: "ExxonMobil",
	ticker: "XOM",
	industry: "Oil",
	description: "I don't know much about this company."
})

royal = Stock.create({
	name: "Royal Dutch Shell",
	ticker: "RDS",
	industry: "Oil",
	description: "Ductch Shells that are royalty."
})

eog = Stock.create({
	name: "EOG Resources",
	ticker: "EOG",
	industry: "Oil",
	description: "Competing star in the oil industry."
})

valero = Stock.create({
	name: "Valero Energy",
	ticker: "VLO",
	industry: "Oil",
	description: "Umm yeah Valero!"
})

############## Tobacco ################

phillip = Stock.create({
	name: "Phillip Morris",
	ticker: "PM",
	industry: "Tobacco",
	description: "We own a lot of things, but now we're known for tobacco."
})

altria = Stock.create({
	name: "Altria",
	ticker: "MO",
	industry: "Tobacco",
	description: "Smoking kills... come smoke our safe cigarettes!"
})

reynolds = Stock.create({
	name: "Reynolds American",
	ticker: "RAI",
	industry: "Tobacco",
	description: "No relation to Ryan."
})

vector = Stock.create({
	name: "Vector Group",
	ticker: "VGR",
	industry: "Tobacco",
	description: "Vector, sounds like the name of VG character."
})

lorillard = Stock.create({
	name: "Lorillard Inc.",
	ticker: "LO",
	industry: "Tobacco",
	description: "Don't know what a lorillard is."
})

############## Finance ################

visa = Stock.create({
	name: "Visa Inc",
	ticker: "V",
	industry: "Finance",
	description: "You have Mastercard? Ha! HA! HAHAHAHAH!"
})

jpm = Stock.create({
	name: "JP Morgan",
	ticker: "JPM",
	industry: "Finance",
	description: "Big bank!"
})

wfc = Stock.create({
	name: "Wells Fargo",
	ticker: "WFC",
	industry: "Finance",
	description: "Didn't bet on housing in 2008"
})

citi = Stock.create({
	name: "Citigroup Inc",
	ticker: "C",
	industry: "Finance",
	description: "This bank sucks"
})

bac = Stock.create({
	name: "Bank of America",
	ticker: "BAC",
	industry: "Finance",
	description: "Another terrible terrible bank."
})

############## Retail ################
underarmour = Stock.create({
	name: "UnderArmour",
	ticker: "UA",
	industry: "Retail",
	description: "Up 23% today."
})

macy = Stock.create({
	name: "Macy's",
	ticker: "M",
	industry: "Retail",
	description: "Who doesn't know Macy's?"
})

nordstrom = Stock.create({
	name: "Nordstrom's",
	ticker: "JWN",
	industry: "Retail",
	description: "It's uh...big"
})

nike = Stock.create({
	name: "Nike",
	ticker: "NKC",
	industry: "Retail",
	description: "Shoes shoes and more shoes!"
})

gap = Stock.create({
	name: "Gap",
	ticker: "GPS",
	industry: "Retail",
	description: "Gap cause that makes sense for clothes"
})

############### Random ###################

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
	industry: "Consumer Good",
	description: "Where dreams are created for men children"
})

kayvon.stocks << [amazon, google, facebook, phillip, altria, reynolds, vector, lorillard]
thomas.stocks << [google, macy, amazon, gap, royal, microsoft]
joe.stocks << [facebook, visa, amazon, google, exxon, royal, lorillard, jpm, wfc]



