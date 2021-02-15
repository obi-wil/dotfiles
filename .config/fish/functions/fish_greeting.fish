function fish_greeting

	# Greeting messages
	set greetings_list \
		"a badass fish" \
		"kubernetes" \
		"a black hole" \
		"Will Sentance's wisdom" \
		
	# Randomly pick a message
	set random_greeting (random)"%"(count $greetings_list)
	set random_greeting $greetings_list[(math $random_greeting"+1")]

	# Format username
	set first_char (string sub -l 1 $USER)
	set first_char_upper (string upper $first_char)
	set rest (string sub -s 2 $USER)
	set user_formatted (echo "$first_char_upper$rest")
	
	# Output it to the console
	
	set body (set_color F90)"Welcome $user_formatted! This terminal session is powered by:"
	set center_body (math -s0 (math (math $COLUMNS + (string length $body)) / 2))
	set center_greeting (math -s0 (math $COLUMNS + (string length $random_greeting)) / 2)
	printf \n"%*s\n" (math 8 + $center_body) $body
	printf "%*s\n" (math 4 + $center_greeting) (set_color brred)(string upper $random_greeting)\n

end

