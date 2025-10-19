SMODS.Voucher {
    key = 'discount',

    atlas = 'Vouchers',
    pos = { x = 0, y = 0 },

    config = {
        extra = {
            voucher_slots_value = 1
        }
    },
    
    unlocked = true,
    discovered = true,
    no_collection = false,
    can_repeat_soul = false,
    
    redeem = function(self, card)
        G.E_MANAGER:add_event(Event({
            func = function()
                SMODS.change_voucher_limit(1)
                return true
            end
        }))
    end,
}


SMODS.Voucher {
    key = 'managers_special',

    atlas = 'Vouchers',
    pos = { x = 0, y = 1 },

    config = {
        extra = {
            voucher_slots_value = 1
        }
    },

    requires = {'v_kass_discount'},

    unlocked = true,
    discovered = true,
    no_collection = false,
    can_repeat_soul = false,
    
    redeem = function(self, card)
        G.E_MANAGER:add_event(Event({
            func = function()
                SMODS.change_voucher_limit(1)
                return true
            end
        }))
    end,
}


SMODS.Voucher {
    key = 'dynamite',

    atlas = 'Vouchers',
    pos = { x = 1, y = 0 },

    config = {
        extra = {
            ante_level = 1,
            discards_value = 1
        }
    },

    unlocked = true,
    discovered = true,
    no_collection = false,
    can_repeat_soul = false,

    redeem = function(self, card)
        G.GAME.round_resets.discards = G.GAME.round_resets.discards + 1
        ease_discard(1)
        local mod = 1
        ease_ante(mod)
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante + mod
    end,
}


SMODS.Voucher {
    key = 'explosion',

    atlas = 'Vouchers',
    pos = { x = 1, y = 1 },

    config = {
        extra = {
            ante_level = 1,
            hands_value = 1
        }
    },

    requires = {'v_kass_dynamite'},

    unlocked = true,
    discovered = true,
    no_collection = false,
    can_repeat_soul = false,
    
    redeem = function(self, card)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + 1
        ease_hands_played(1)
        local mod = 1
        ease_ante(mod)
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante + mod
    end,
}


SMODS.Voucher {
    key = 'big_boosters',

    atlas = 'Vouchers',
    pos = { x = 2, y = 0 },

    config = {
        extra = {
            Edited_booster = 2
        }
    },

    unlocked = true,
    discovered = true,
    no_collection = false,
    can_repeat_soul = false,
    
    redeem = function(self, card)
            G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.modifiers.booster_size_mod = (G.GAME.modifiers.booster_size_mod or 0) +2
                return true
            end
        }))
    end,
}


SMODS.Voucher {
    key = 'best_choice',

    atlas = 'Vouchers',
    pos = { x = 2, y = 1 },
    
    config = {
        extra = {
            Edited_booster = 1
        }
    },
    
    requires = {'v_kass_big_boosters'},

    unlocked = true,
    discovered = true,
    no_collection = false,
    can_repeat_soul = false,
    
    redeem = function(self, card)
            G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.modifiers.booster_choice_mod = (G.GAME.modifiers.booster_choice_mod or 0) +1
                return true
            end
        }))
    end,
}