-- ATLAS

-- Mod Icon
SMODS.Atlas({
    key = "modicon", 
    path = "icon.png", 
    px = 34,
    py = 34,
    atlas_table = "ASSET_ATLAS"
})

-- Back Placeholder
SMODS.Atlas({
    key = "Back_Placeholder", 
    path = "back_placeholder.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
}):register()

-- Backs
SMODS.Atlas({
    key = "Backs", 
    path = "backs.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
}):register()

assert(SMODS.load_file("src/backs.lua"))()

-- Ranks

-- LC
SMODS.Atlas({
    key = "RanksLC", 
    path = "ranks_lc.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
}):register()

-- HC
SMODS.Atlas({
    key = "RanksHC", 
    path = "ranks_hc.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
}):register()

assert(SMODS.load_file("src/ranks.lua"))()

-- Vouchers
SMODS.Atlas({
    key = "Vouchers", 
    path = "vouchers.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
}):register()

assert(SMODS.load_file("src/vouchers.lua"))()

-- Blinds
SMODS.Atlas({
    key = 'Blinds',
    path = 'blinds.png',
    atlas_table = 'ANIMATION_ATLAS',
    frames = 21,
    px = 34,
    py = 34
}):register()

assert(SMODS.load_file("src/blinds.lua"))()