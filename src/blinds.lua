SMODS.Blind{
    key = 'arrow',
    
    atlas = 'Blinds',
    pos = {x = 0, y = 0 },

    dollars = 5,
    mult = 1,
    boss = {min = 2, max = 10},
    boss_colour = HEX('4b3831'),

    defeat = function()
        ease_ante(2)
    end,
}