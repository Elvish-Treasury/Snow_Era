local _ = wesnoth.textdomain "wesnoth-SE"
local old_unit_status = wesnoth.theme_items.unit_status

function wesnoth.theme_items.unit_status()
	local u = wesnoth.get_displayed_unit()
	if not u then return {} end
	local s = old_unit_status()


	if u.status.blinded then
		table.insert(s, { "element", { image = "misc/blinded-status-icon.png",
			tooltip = _ "blinded: This unit is blinded. It has its vision reduced to 1 and -20% accuracy for ranged attacks."
		} } )
	end

	return s
end
