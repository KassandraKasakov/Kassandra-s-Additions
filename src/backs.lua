SMODS.Back { --Jimbo
    key = 'jimbo',

    atlas = 'Backs',
    pos = { x = 0, y = 0 },

    config = {
        joker_slot = 1e6,
    },

    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.joker_slot } }
    end,
}


SMODS.Back { --Checkered
    key = "checkered",

    atlas = 'Backs',
    pos = { x = 1, y = 0 },

    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Spades' then
                        v:change_suit('Clubs')
                    end
                    if v.base.suit == 'Hearts' then
                        v:change_suit('Diamonds')
                    end
                end
                return true
            end
        }))
    end
}


SMODS.Back { --Hearts
    key = "hearts",

    atlas = 'Backs',
    pos = { x = 2, y = 0 },

    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Spades' then
                        v:change_suit('Hearts')
                    end
                    if v.base.suit == 'Diamonds' then
                        v:change_suit('Hearts')
                    end
                    if v.base.suit == 'Clubs' then
                        v:change_suit('Hearts')
                    end
                end
                return true
            end
        }))
    end
}


SMODS.Back { --Diamonds
    key = "diamonds",

    atlas = 'Backs',
    pos = { x = 3, y = 0 },

    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Spades' then
                        v:change_suit('Diamonds')
                    end
                    if v.base.suit == 'Hearts' then
                        v:change_suit('Diamonds')
                    end
                    if v.base.suit == 'Clubs' then
                        v:change_suit('Diamonds')
                    end
                end
                return true
            end
        }))
    end
}


SMODS.Back { --Spades
    key = "spades",

    atlas = 'Backs',
    pos = { x = 4, y = 0 },

    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Diamonds' then
                        v:change_suit('Spades')
                    end
                    if v.base.suit == 'Hearts' then
                        v:change_suit('Spades')
                    end
                    if v.base.suit == 'Clubs' then
                        v:change_suit('Spades')
                    end
                end
                return true
            end
        }))
    end
}


SMODS.Back { --Clubs
    key = "clubs",

    atlas = 'Backs',
    pos = { x = 5, y = 0 },

    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Diamonds' then
                        v:change_suit('Clubs')
                    end
                    if v.base.suit == 'Hearts' then
                        v:change_suit('Clubs')
                    end
                    if v.base.suit == 'Spades' then
                        v:change_suit('Clubs')
                    end
                end
                return true
            end
        }))
    end
}


SMODS.Back { --Orange
    key = "orange",

    atlas = 'Backs',
    pos = { x = 6, y = 0 },

    config = {
        dollars = 196,
        extra_hand_bonus = 0,
        extra_discard_bonus = 00,
        no_interest = true
    },

    apply = function(self, back)
        G.GAME.modifiers.no_blind_reward = {
            Small = true,
            Big = true,
            Boss = true
        }
    end
}


SMODS.Back { --Royal
    key = "royal", 

    atlas = 'Backs',
    pos = { x = 0, y = 1 },

    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                local faces = {}
                for k, rank in pairs(SMODS.Ranks) do
                    if rank.face then faces[#faces + 1] = k end
                end
                for k, v in pairs(G.playing_cards) do
                    if not v:is_face() then 
                        v.to_remove = true
                    end
                end
                local i = 1
                while i <= #G.playing_cards do
                    if G.playing_cards[i].to_remove then
                        G.playing_cards[i]:remove()
                    else
                        i = i + 1
                    end
                end
                G.GAME.starting_deck_size = #G.playing_cards
                G.deck.config.true_card_limit = #G.playing_cards
                return true
            end
        }))
    end
}


SMODS.Back { --Infinite
    key = "infinite",

    atlas = 'Backs',
    pos = { x = 1, y = 1 },

	config = {
        hand_size = 1e6
    },

    apply = function(self)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.7,
			func = function()
				SMODS.change_play_limit(1e6)
				SMODS.change_discard_limit(1e6)
				return true
			end,
		}))
	end,
}


SMODS.Back{ --Stone
    key = 'stone',

    atlas = 'Backs',
    pos = { x = 2, y = 1 },

    apply = function ()

        G.E_MANAGER:add_event(Event({

            func = function ()

                for _, card in ipairs(G.playing_cards) do

                    card:set_ability(G.P_CENTERS.m_stone, nil, true)

                end

                return true
            end
        }))
    end
}


SMODS.Back{ --Glass
    key = 'glass',

    atlas = 'Backs',
    pos = { x = 4, y = 1 },

    apply = function ()

        G.E_MANAGER:add_event(Event({

            func = function ()

                for _, card in ipairs(G.playing_cards) do

                    card:set_ability(G.P_CENTERS.m_glass, nil, true)

                end

                return true
            end
        }))
    end
}


SMODS.Back { --Tarot
    key = "tarot",

    atlas = 'Backs',
    pos = { x = 3, y = 1 },

    config = {
        vouchers = {
            'v_tarot_merchant',
            'v_tarot_tycoon',
        },
        jokers = {
            'j_cartomancer',
        },
    },

    loc_vars = function(self, info_queue, back)
        return {
            vars = { localize { type = 'name_text', key = self.config.vouchers[1], set = 'Voucher' },
                localize { type = 'name_text', key = self.config.vouchers[2], set = 'Voucher' },
                localize { type = 'name_text', key = self.config.jokers[1], set = 'Joker' },
            }
        }
    end
}


SMODS.Back { --Double
    key = "double",

    atlas = 'Backs',
    pos = { x = 5, y = 1 },

    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
            	local newcards = {}
                for i = 1, #G.playing_cards do
  					local card = G.playing_cards[i]

                    local _card = copy_card(card, nil, nil, G.playing_card)
                    _card:add_to_deck()
                    G.deck.config.card_limit = G.deck.config.card_limit + 1
                    table.insert(G.playing_cards, _card)
                    G.deck:emplace(_card)
                    
                end
                return true
            end
        }))
    end
}


SMODS.Back { --Maths
    key = "math",

    atlas = 'Backs',
    pos = { x = 6, y = 1 },

    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if SMODS.Ranks[v.base.value].key == '2' then
                        assert(SMODS.change_base(v, nil,'kass_0'))
                    end
                    if SMODS.Ranks[v.base.value].key == '3' then
                        assert(SMODS.change_base(v, nil,'kassa_1'))
                    end
                    if SMODS.Ranks[v.base.value].key == '4' then
                        assert(SMODS.change_base(v, nil,'kass_sqrt2'))
                    end
                    if SMODS.Ranks[v.base.value].key == '5' then
                        assert(SMODS.change_base(v, nil,'kass_e'))
                    end
                    if SMODS.Ranks[v.base.value].key == '6' then
                        assert(SMODS.change_base(v, nil,'kass_pi'))
                    end
                    if SMODS.Ranks[v.base.value].key == '7' then
                        assert(SMODS.change_base(v, nil,'kass_tau'))
                    end
                    if SMODS.Ranks[v.base.value].key == '8' then
                        assert(SMODS.change_base(v, nil,'kass_2power4'))
                    end
                    if SMODS.Ranks[v.base.value].key == '9' then
                        assert(SMODS.change_base(v, nil,'kass_gelfond'))
                    end
                    if SMODS.Ranks[v.base.value].key == '10' then
                        assert(SMODS.change_base(v, nil,'kass_4facto'))
                    end
                    if SMODS.Ranks[v.base.value].key == 'Ace' then
		            	assert(SMODS.change_base(v, nil,'kass_i'))
                    end
                end
                return true
            end
        }))
    end,
}


SMODS.Back { --Tiny
    key = "tiny",

    atlas = 'Backs',
    pos = { x = 0, y = 2 },

    config = {
        hand_size = -7,
        ante_scaling = 0.1,
    },
}


SMODS.Back { --Booster
    key = "booster",

    atlas = 'Backs',
    pos = { x = 1, y = 2 },

    config = {
        vouchers = {
            'v_kass_big_boosters',
            'v_kass_best_choice',
        },
    },

    loc_vars = function(self, info_queue, back)
        return {
            vars = { localize { type = 'name_text', key = self.config.vouchers[1], set = 'Voucher' },
                localize { type = 'name_text', key = self.config.vouchers[2], set = 'Voucher' },
            }
        }
    end
}