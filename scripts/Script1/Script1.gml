function deck_build_test() {
    var _deck = [
        { rank: "A" },
        { rank: "A" },
        { rank: "A" },
        { rank: "A" },
        { rank: "2" },
        { rank: "2" },
        { rank: "2" },
        { rank: "2" },
        { rank: "3" },
        { rank: "3" },
        { rank: "3" },
        { rank: "3" },
        { rank: "4" },
        { rank: "4" },
        { rank: "4" },
        { rank: "4" },
        { rank: "5" },
        { rank: "5" },
        { rank: "5" },
        { rank: "5" },
        { rank: "6" },
        { rank: "6" },
        { rank: "6" },
        { rank: "6" },
        { rank: "7" },
        { rank: "7" },
        { rank: "7" },
        { rank: "7" },
        { rank: "8" },
        { rank: "8" },
        { rank: "8" },
        { rank: "8" },
        { rank: "9" },
        { rank: "9" },
        { rank: "9" },
        { rank: "9" },
        { rank: "10" },
        { rank: "10" },
        { rank: "10" },
        { rank: "10" },
        { rank: "J" },
        { rank: "J" },
        { rank: "J" },
        { rank: "J" },
        { rank: "Q" },
        { rank: "Q" },
        { rank: "Q" },
        { rank: "Q" },
        { rank: "K" },
        { rank: "K" },
        { rank: "K" },
        { rank: "K" }
    ];
    return _deck;
}

function deck_shuffle(_deck) {
    var _n = array_length(_deck);
    for (var i = _n - 1; i > 0; i--) {
        var _j = irandom(i);
        var _temp = _deck[i];
        _deck[i] = _deck[_j];
        _deck[_j] = _temp;
    }
    return _deck;
}

function hand_value(_hand) {
    var _total = 0;
    var _aces = 0;
    for (var i = 0; i < array_length(_hand); i++) {
        var _rank = _hand[i].rank;
        if (_rank == "A") {
            _total += 11;
            _aces++;
        } else if (_rank == "J" || _rank == "Q" || _rank == "K") {
            _total += 10;
        } else {
            _total += real(_rank);
        }
    }
    while (_total > 21 && _aces > 0) {
        _total -= 10;
        _aces--;
    }
    return _total;
}

function deal_card(_hand, _deck) {
    if (array_length(_deck) <= 0) return noone;
    var _card = _deck[0];
    array_delete(_deck, 0, 1);
    array_push(_hand, _card);
    return _card;
}

function card_get_index(_rank) {
    switch (_rank) {
        case "A":  return 0;
        case "2":  return 4;
        case "3":  return 8;
        case "4":  return 12;
        case "5":  return 16;
        case "6":  return 20;
        case "7":  return 24;
        case "8":  return 28;
        case "9":  return 32;
        case "10": return 36;
        case "J":  return 40;
        case "Q":  return 44;
        case "K":  return 48;
    }
    return 0;
}