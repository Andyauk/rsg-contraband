local Translations = {
    error = {
        no_contraband_sell = 'nenhum contrabando para vender!',
        not_enough_lawmen_duty = 'não há homens da lei suficientes em serviço!',
        no_contraband_left_sell = 'não sobrou nenhum contrabando para vender!',
        you_moved_too_far_away = 'você se mudou para muito longe!',
    },
    success = {
        oferta_accepted = 'oferta aceita',
    },
    primary = {
        start_selling_contraband = 'começou a vender contrabando',
        you_have_been_robbed = 'você foi roubado!',
        offer_declined = 'oferta recusada'
    },
    menu = {
        menu_sell = 'Vender',
        menu_for = 'para $',
        menu_confirm = '[G] Confirmar',
        menu_decline = '[B] Recusar',
        menu_remove_what_was_stolen = '[E] para retirar o que foi roubado',
    },
    barra de progresso = {
        var = 'o texto vai aqui',
    },
    alert = {
        contraband_being_sold = 'se vende contrabando',
    }
}

if GetConvar('rsg_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
