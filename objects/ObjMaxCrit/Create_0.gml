for (var i = 0; i < 100; i++) {
    var custo = custo_base + (global.upgrade_level * custo_por_nivel);

    if (global.dinheiro >= custo) {
        global.dinheiro -= custo;
        global.upgrade_level += 1;
    } else {
        break;
    }
}