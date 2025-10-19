SMODS.Rank { --0
    key = "0",
    card_key = "ZERO",
    shorthand = '0',

    lc_atlas = 'RanksLC',
    hc_atlas = 'RanksHC',
    pos = { x = 0 },

    straight_edge = true,
    next = { 'kass_1' },
    nominal = 0.01,
    face = false,

    suit_map = {
        Hearts = 0,
        Clubs = 1,
        Diamonds = 2,
        Spades = 3,
    },
    

  in_pool = function(self, args)
    return false
  end
}


SMODS.Rank { --1
    key = "1",
    card_key = "ONE",
    shorthand = '1',

    lc_atlas = 'RanksLC',
    hc_atlas = 'RanksHC',
    pos = { x = 1 },

    straight_edge = false,
    next = { 'kass_sqrt2' },
    nominal = 1,
    face = false,

    suit_map = {
        Hearts = 0,
        Clubs = 1,
        Diamonds = 2,
        Spades = 3,
  },
    

  in_pool = function(self, args)
    return false
  end
}


SMODS.Rank { --SQUARE ROOT OF 2
    key = "sqrt2",
    card_key = "sqrt2",
    shorthand = 'SQRT2',

    lc_atlas = 'RanksLC',
    hc_atlas = 'RanksHC',
    pos = { x = 4 },

    straight_edge = false,
    next = { 'kass_e' },
    nominal = 1.41,
    face = false,

    suit_map = {
        Hearts = 0,
        Clubs = 1,
        Diamonds = 2,
        Spades = 3,
  },
    

  in_pool = function(self, args)
    return false
  end
}


SMODS.Rank { --E
    key = "e",
    card_key = "E",
    shorthand = 'e',

    lc_atlas = 'RanksLC',
    hc_atlas = 'RanksHC',
    pos = { x = 3 },

    straight_edge = false,
    next = { 'kass_pi' },
    nominal = 2.71,
    face = false,

    suit_map = {
        Hearts = 0,
        Clubs = 1,
        Diamonds = 2,
        Spades = 3,
  },
    

  in_pool = function(self, args)
    return false
  end
}


SMODS.Rank { --PI
    key = "pi",
    card_key = "PI",
    shorthand = 'pi',

    lc_atlas = 'RanksLC',
    hc_atlas = 'RanksHC',
    pos = { x = 2 },

    straight_edge = false,
    next = { 'kass_tau' },
    nominal = 3.14,
    face = false,

    suit_map = {
        Hearts = 0,
        Clubs = 1,
        Diamonds = 2,
        Spades = 3,
  },
    

  in_pool = function(self, args)
    return false
  end
}


SMODS.Rank { --TAU
    key = "tau",
    card_key = "tau",
    shorthand = 'TAU',

    lc_atlas = 'RanksLC',
    hc_atlas = 'RanksHC',
    pos = { x = 5 },

    straight_edge = false,
    next = { 'kass_2power4' },
    nominal = 6.28,
    face = false,

    suit_map = {
        Hearts = 0,
        Clubs = 1,
        Diamonds = 2,
        Spades = 3,
  },
    

  in_pool = function(self, args)
    return false
  end
}


SMODS.Rank { --2 POWER 4
    key = "2power4",
    card_key = "2power4",
    shorthand = '2^4',

    lc_atlas = 'RanksLC',
    hc_atlas = 'RanksHC',
    pos = { x = 7 },

    straight_edge = false,
    next = { 'kass_gelfond' },
    nominal = 16,
    face = false,

    suit_map = {
        Hearts = 0,
        Clubs = 1,
        Diamonds = 2,
        Spades = 3,
  },
    

  in_pool = function(self, args)
    return false
  end
}


SMODS.Rank { --GELFOND (e^PI)
    key = "gelfond",
    card_key = "gelfond",
    shorthand = 'e^pi',

    lc_atlas = 'RanksLC',
    hc_atlas = 'RanksHC',
    pos = { x = 8 },

    straight_edge = false,
    next = { 'kass_4facto' },
    nominal = 23.14,
    face = false,

    suit_map = {
        Hearts = 0,
        Clubs = 1,
        Diamonds = 2,
        Spades = 3,
  },
    

  in_pool = function(self, args)
    return false
  end
}


SMODS.Rank { --4 FACTORIAL
    key = "4facto",
    card_key = "4facto",
    shorthand = '4!',

    lc_atlas = 'RanksLC',
    hc_atlas = 'RanksHC',
    pos = { x = 6 },

    straight_edge = false,
    next = { 'Jack' },
    nominal = 24,
    face = false,

    suit_map = {
        Hearts = 0,
        Clubs = 1,
        Diamonds = 2,
        Spades = 3,
  },
    

  in_pool = function(self, args)
    return false
  end
}


SMODS.Rank { --I
    key = "i",
    card_key = "i",
    shorthand = 'i',

    lc_atlas = 'RanksLC',
    hc_atlas = 'RanksHC',
    pos = { x = 9 },

    straight_edge = true,
    next = { 'kass_0' },
    nominal = 0,
    face = true,
    face_nominal = 0,

    suit_map = {
        Hearts = 0,
        Clubs = 1,
        Diamonds = 2,
        Spades = 3,
  },
    

  in_pool = function(self, args)
    return false
  end
}