local Translations = {
error = {
    you_do_not_have_enough_blood_money_to_do_that = 'Você não tem blood money suficiente para fazer isso!',
    you_do_not_have_any_blood_money = 'Você não tem nenhum blood money!',
    you_do_not_have_enough_gold_bars = 'Você não tem barras de ouro suficientes para fazer isso!',
    you_do_not_have_any_gold_bars = 'Você não tem nenhuma barra de ouro!',
},
success = {
    you_sold_money_for = 'Você vendeu %{amount} blood money por $ %{totalcash}',
    you_sold_gold_bars_for_totalcash = 'Você vendeu %{amount} barras de ouro por $ %{totalcash}',
},
primary = {
    started_selling_contraband = 'começou a vender contrabando',
},
menu = {
    open = 'Abrir ',
    outlaw_menu = '| Menu de Fora da Lei |',
    blood_money_wash = 'Lavagem de Blood Money',
    sell_gold_bars = 'Vender Barras de Ouro',
    open_outlaw_shop = 'Abrir Loja de Fora da Lei',
    close_menu = 'Fechar Menu',
},
commands = {
    var = 'o texto vai aqui',
},
progressbar = {
    var = 'o texto vai aqui',
},
text = {
    wash_the_blood_off_your_money = 'lave o sangue do seu dinheiro',
    sell_your_gold_bars_here = 'venda suas barras de ouro aqui',
    buy_outlawed_items = 'compre itens proibidos',
    amount_to_wash = 'Valor para lavar ($)',
    amount_of_bars = 'Quantidade de Barras',
},
label = {
    outlaw_shop = 'Loja de Fora da Lei',
}
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
