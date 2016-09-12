minetest.register_privilege("poopability", "The digital laxative.")

minetest.register_chatcommand("poop", {
	description = "It's only natural to poop.",
	privs = {poopability=true},
	func = poop
})

local function poop(player)
	local pname = minetest.get_player_by_name(player)
	local target_coords=pname:getpos()
	--minetest.add_item(target_coords, poop)
	--minetest.sound_play("poop", {
	--	to_player = player:get_player_name(),
	--	gain = 0.4,
	--})
	minetest.chat_send_player(player, pname .. " pooped.")
end


minetest.register_privilege("special", "A truly special player.")

minetest.register_chatcommand("special", {
	description = "Test if you are special.",
	privs = {special=true},
	func = special
})

local function special(player)
	local pname = minetest.get_player_by_name(player)
	minetest.chat_send_player(player, pname .. " is special.")
end
