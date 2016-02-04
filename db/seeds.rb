MutualFund.destroy_all
Stock.destroy_all
MutualFundStock.destroy_all

kayvon = MutualFund.create({
	name: "Kayvon's Underpaid and Starving Children Mutual Fund"
})

# thomas = MutualFund.create({
# 	name: "Thomas' Guns R Us Mutual Fund"
# })

thomas = MutualFund.create({
	name: "Bam! Bam! Thomas' 2 Gunz Mutual Fund"
})

joe = MutualFund.create({
	name: "Joe's Underfluffed and Stuffingless Pillows Mutual Fund"
})

breon = MutualFund.create({
	name: "Breon's Virtual Reality Cow Wrangling Simulator Mutual Fund"
})

############## Technology ################

amazon = Stock.create({
	name: "Amazon.com Inc",
	ticker: "AMZN",
	industry: "Technology",
	description: "We're not profittable, but will be soon",
	price: 10
})

google = Stock.create({
	name: "Google",
	ticker: "GOOGL",
	industry: "Technology",
	description: "Next year we're rebranding ourselves as Skynet",
	price: 5
})

facebook = Stock.create({
	name: "Facebook",
	ticker: "FB",
	industry: "Technology",
	description: "We make money off of your information!",
	price: 8
})

apple = Stock.create({
	name: "Apple",
	ticker: "AAPL",
	industry: "Technology",
	description: "Onto the Apple Car!",
	price: 6
})

microsoft = Stock.create({
	name: "Microsoft",
	ticker: "MSFT",
	industry: "Technology",
	description: "One ant at a time...",
	price: 23
})

############## Oil ################

chevron = Stock.create({
	name: "Chevron",
	ticker: "CVX",
	industry: "Oil",
	description: "That's what a Chevron is?",
	price: 85
})

exxon = Stock.create({
	name: "ExxonMobil",
	ticker: "XOM",
	industry: "Oil",
	description: "I don't know much about this company.",
	price: 32
})

royal = Stock.create({
	name: "Royal Dutch Shell",
	ticker: "RDS",
	industry: "Oil",
	description: "Ductch Shells that are royalty.",
	price: 45
})

eog = Stock.create({
	name: "EOG Resources",
	ticker: "EOG",
	industry: "Oil",
	description: "Competing star in the oil industry.",
	price: 8
})

valero = Stock.create({
	name: "Valero Energy",
	ticker: "VLO",
	industry: "Oil",
	description: "Umm yeah Valero!",
	price: 22
})

############## Tobacco ################

phillip = Stock.create({
	name: "Phillip Morris",
	ticker: "PM",
	industry: "Tobacco",
	description: "We own a lot of things, but now we're known for tobacco.",
	price: 20
})

altria = Stock.create({
	name: "Altria",
	ticker: "MO",
	industry: "Tobacco",
	description: "Smoking kills... come smoke our safe cigarettes!",
	price: 13
})

reynolds = Stock.create({
	name: "Reynolds American",
	ticker: "RAI",
	industry: "Tobacco",
	description: "No relation to Ryan.",
	price: 76
})

vector = Stock.create({
	name: "Vector Group",
	ticker: "VGR",
	industry: "Tobacco",
	description: "Vector, sounds like the name of VG character.",
	price: 65
})

lorillard = Stock.create({
	name: "Lorillard Inc.",
	ticker: "LO",
	industry: "Tobacco",
	description: "Don't know what a lorillard is.",
	price: 6
})

############## Finance ################

visa = Stock.create({
	name: "Visa Inc",
	ticker: "V",
	industry: "Finance",
	description: "You have Mastercard? Ha! HA! HAHAHAHAH!",
	price: 20
})

jpm = Stock.create({
	name: "JP Morgan",
	ticker: "JPM",
	industry: "Finance",
	description: "Big bank!",
	price: 29
})

wfc = Stock.create({
	name: "Wells Fargo",
	ticker: "WFC",
	industry: "Finance",
	description: "Didn't bet on housing in 2008",
	price: 4
})

citi = Stock.create({
	name: "Citigroup Inc",
	ticker: "C",
	industry: "Finance",
	description: "This bank sucks",
	price: 2
})

bac = Stock.create({
	name: "Bank of America",
	ticker: "BAC",
	industry: "Finance",
	description: "Another terrible terrible bank.",
	price: 3
})

############## Retail ################
underarmour = Stock.create({
	name: "UnderArmour",
	ticker: "UA",
	industry: "Retail",
	description: "Up 23% today.",
	price: 3
})

macy = Stock.create({
	name: "Macy's",
	ticker: "M",
	industry: "Retail",
	description: "Who doesn't know Macy's?",
	price: 3
})

nordstrom = Stock.create({
	name: "Nordstrom's",
	ticker: "JWN",
	industry: "Retail",
	description: "It's uh...big",
	price: 3
})

nike = Stock.create({
	name: "Nike",
	ticker: "NKC",
	industry: "Retail",
	description: "Shoes shoes and more shoes!",
	price: 3
})

gap = Stock.create({
	name: "Gap",
	ticker: "GPS",
	industry: "Retail",
	description: "Gap cause that makes sense for clothes",
	price: 3
})

##########Adding Stocks to Mutual Fund############

kayvon.stocks << [amazon, google, facebook, phillip, altria, reynolds, vector, lorillard]
thomas.stocks << [google, macy, amazon, gap, royal, microsoft]
joe.stocks << [facebook, visa, amazon, google, exxon, royal, jpm, wfc]

##########Quantity#################

MutualFundStock.all.each {|x| x.quantity = rand(50); x.save}

