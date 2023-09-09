GS = {}

-- totally does not make spooky shit happen
GS.spooky = true

--[[ spooky peds credits

    pennywise - https://www.gta5-mods.com/player/pennywise-it-movie
    slenderman - https://www.gta5-mods.com/player/slender-man-add-on-ped
    chucky - https://www.gta5-mods.com/player/chucky-add-on-ped
    
]]

GS.options = {
    -- pay per task completed
    pay_tsk = 25,
    -- pay per day when time finished
    pay_day = 150,
    -- amount deducted x task missed
    pay_dct = 15,
}

GS.graveyard = {
    -- blip location
    blip = {
        loc = vec3(0,0,0),
        sprite = 4,
        color = 4,
        scale = 0.7
    },
    -- ped location
    ped = {
        loc = vec4(0,0,0,0),
        model = '',
        anim = ''
    }
}

GS.gravetasks = {
    -- locations to dig weeds from graves
    weeds = {
        [1] = vec3(0,0,0),
    },
    -- locations to fix flowers
    flowers = {
        [1] = vec3(0,0,0),
    },
    -- locations to sweep trash
    sweep = {
        [1] = vec3(0,0,0),
    }
}