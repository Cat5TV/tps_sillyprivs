minetest.register_privilege("poopability", "The digital laxative.")

minetest.register_chatcommand("poop", {
	description = "It's only natural to poop.",
	privs = {poopability=true},
	func = poop
})

local function poop(player)
	local leveltitle=" restricted player" -- the lowest level
	local levelnum=0
	local pname = minetest.get_player_by_name(player)
	minetest.chat_send_player(player, playername .. " pooped.")
end
