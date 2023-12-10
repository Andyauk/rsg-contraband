local Translations = {
    error = {        
        no_contraband_sell = 'no contraband to sell!',
        not_enough_lawmen_duty = 'not enough lawmen on duty!',
        no_contraband_left_sell = 'no contraband left to sell!',
        you_moved_too_far_away = 'you moved too far away!',
    },    
    success = {
        offer_accepted = 'offer accepted',
    },
    primary = {
        started_selling_contraband = 'started selling contraband',        
        you_have_been_robbed = 'you have been robbed!',
        offer_declined = 'offer declined'
    },
    menu = {
        menu_sell = 'Sell ',
        menu_for = ' for $',
        menu_confirm = '[G] Confirm',
        menu_decline = '[B] Decline',
        menu_remove_what_was_stolen = '[E] to remove what was stolen',
    },    
    progressbar = {
        var = 'text goes here',
    },    
    alert = {
        contraband_being_sold = 'contraband being sold',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
