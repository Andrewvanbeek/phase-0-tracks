blue_jeans = {

	left_pocket: ['cell phone', 'comb'],

	right_pocket: ['keys', 'guitarpick'],
	
	backpocket: {

wallet: {slotone: 'driverslicense', slottwo: 'creditcard'}

}
}

puts blue_jeans[:left_pocket]

puts blue_jeans[:right_pocket][0]

puts blue_jeans[:backpocket][:wallet][:slotone]

blue_jeans[:backpocket][:wallet][:slothree] = 'costcocard'

puts blue_jeans[:backpocket][:wallet]
