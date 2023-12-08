local Translations = {
    error = {        
        no_contraband_sell = '¡no hay contrabando para vender!',
        not_enough_lawmen_duty = '¡no hay suficientes agentes de la ley de servicio!',
        no_contraband_left_sell = '¡no queda contrabando para vender!',
        you_moved_too_far_away = '¡te mudaste demasiado lejos!',
    },        
    success = {
        offer_accepted = 'oferta aceptada',
    },
    primary = {
        start_selling_contraband = 'comenzó a vender contrabando',
        you_have_been_robbed = '¡te han robado!',
        offer_declined  = 'oferta rechazada'
    },
    menu = {
        menu_sell = 'Vender ',
        menu_for = 'por $ ',
        menu_confirm = '[G] Confirmar',
        menu_decline = '[B] Rechazar',
        menu_remove_what_was_stolen = '[E] para quitar lo robado',
    },        
    alert = {
        contraband_being_sold = 'estas vendiendo contrabando',
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end