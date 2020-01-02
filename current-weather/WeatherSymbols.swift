//
//  WeatherSymbols.swift
//  current-weather
//
//  Created by Hannes Egler on 23.12.19.
//  Copyright © 2019 Hannes Egler. All rights reserved.
//

import Foundation

var weatherSymbols = WeatherSymbols()

struct WeatherSymbols {
    let unknown = symbols["unknown"]!
    let cloudy = symbols["cloudy"]!
    let fog = symbols["fog"]!
    let heavyRain = symbols["heavyRain"]!
    let heavyShowers = symbols["heavyShowers"]!
    let heavySnow = symbols["heavySnow"]!
    let heavySnowShowers = symbols["heavySnowShowers"]!
    let lightRain = symbols["lightRain"]!
    let lightShowers = symbols["lightShowers"]!
    let lightSleet = symbols["lightSleet"]!
    let lightSleetShowers = symbols["lightSleetShowers"]!
    let lightSnow = symbols["lightSnow"]!
    let lightSnowShowers = symbols["lightSnowShowers"]!
    let partlyCloudy = symbols["partlyCloudy"]!
    let sunny = symbols["sunny"]!
    let thunderyHeavyRain = symbols["thunderyHeavyRain"]!
    let thunderyShowers = symbols["thunderyShowers"]!
    let thunderySnowShowers = symbols["thunderySnowShowers"]!
    let veryCloudy = symbols["veryCloudy"]!
}

let symbols: [String: [String]] = [

    "unknown": [
        "    .-.      ".red,
        "     __)     ".red,
        "    (        ".red,
        "     `-᾿     ".red,
        "      •      ".red,
    ],

    "cloudy": [
        "             ".white,
        "     .--.    ".white,
        "  .-(    ).  ".white,
        " (___.__)__) ".white,
        "             ".white,
    ],

    "fog": [
        "             ".white,
        " _ - _ - _ - ".white,
        "  _ - _ - _  ".white,
        " _ - _ - _ - ".white,
        "             ".white,
    ],

    "heavyRain": [
        "     .-.     ".white,
        "    (   ).   ".white,
        "   (___(__)  ".white,
        "  ‚ʻ‚ʻ‚ʻ‚ʻ   ".blue,
        "  ‚ʻ‚ʻ‚ʻ‚ʻ   ".blue,
    ],

    "heavyShowers": [
        "     .-.     ".white,
        "    (   ).   ".white,
        "   (___(__)  ".white,
        "   ‚ʻ‚ʻ‚ʻ‚ʻ  ".blue,
        "   ‚ʻ‚ʻ‚ʻ‚ʻ  ".blue,
    ],

    "heavySnow": [
        "     .-.     ".white,
        "    (   ).   ".white,
        "   (___(__)  ".white,
        "   * * * *   ".white,
        "  * * * *    ".white,
    ],

    "heavySnowShowers": [
        "     .-.     ".white,
        "    (   ).   ".white,
        "   (___(__)  ".white,
        "    * * * *  ".white,
        "   * * * *   ".white,
    ],

    "lightRain": [
        "     .-.     ".white,
        "    (   ).   ".white,
        "   (___(__)  ".white,
        "    ʻ ʻ ʻ ʻ  ".blue,
        "   ʻ ʻ ʻ ʻ   ".blue,
    ],

    "lightShowers": [
        "     .-.     ".white,
        "    (   ).   ".white,
        "   (___(__)  ".white,
        "    ʻ ʻ ʻ ʻ  ".white,
        "    ʻ ʻ ʻ ʻ  ".white,
    ],

    "lightSleet": [
        "     .-.     ".white,
        "    (   ).   ".white,
        "   (___(__)  ".white,
        "    ʻ * ʻ *  ".white,
        "   * ʻ * ʻ   ".white,
    ],

    "lightSleetShowers": [
        "     .-.     ".white,
        "    (   ).   ".white,
        "   (___(__)  ".white,
        "   ʻ * ʻ *   ".white,
        "   * ʻ * ʻ   ".white,
    ],

    "lightSnow": [
        "     .-.     ".white,
        "    (   ).   ".white,
        "   (___(__)  ".white,
        "    *  *  *  ".white,
        "   *  *  *   ".white,
    ],

    "lightSnowShowers": [
        "     .-.     ".white,
        "    (   ).   ".white,
        "   (___(__)  ".white,
        "    *  *  *  ".white,
        "    *  *  *  ".white,
    ],

    "partlyCloudy": [
        "             ".white,
        "     .-.     ".white,
        "    (   ).   ".white,
        "   (___(__)  ".white,
        "             ".white,
    ],

    "sunny": [
        "    \\   /    ".yellow,
        "     .-.     ".yellow,
        "  ‒ (   ) ‒  ".yellow,
        "     `-᾿     ".yellow,
        "    /   \\    ".yellow,
    ],

    "thunderyHeavyRain": [
        "     .-.     ".white,
        "    (   ).   ".white,
        "   (___(__)  ".white,
        "  ‚ʻ⚡ʻ‚⚡‚ʻ  ".blue,
        "  ‚ʻ‚ʻ⚡ʻ‚ʻ   ".blue,
    ],

    "thunderyShowers": [
        "     .-.     ".white,
        "    (   ).   ".white,
        "   (___(__)  ".white,
        "   ⚡ʻ ʻ⚡ʻ ʻ ".blue,
        "    ʻ ʻ ʻ ʻ  ".blue,
    ],

    "thunderySnowShowers": [
        "     .-.     ".white,
        "    (   ).   ".white,
        "   (___(__)  ".white,
        "    *⚡ *⚡ *  ".white,
        "   *  *  *   ".white,
    ],

    "veryCloudy": [
        "             ".white,
        "     .--.    ".white,
        "  .-(    ).  ".white,
        " (___.__)__) ".white,
        "             ".white,
    ]
]

func getWeatherSymbol(id: Int) -> [String]{
    switch id {
    case 200: return weatherSymbols.thunderyHeavyRain
    case 201: return weatherSymbols.thunderyHeavyRain
    case 202: return weatherSymbols.thunderyHeavyRain
    case 210: return weatherSymbols.thunderyHeavyRain
    case 211: return weatherSymbols.thunderyHeavyRain
    case 212: return weatherSymbols.thunderyShowers
    case 221: return weatherSymbols.thunderyShowers
    case 230: return weatherSymbols.thunderyHeavyRain
    case 231: return weatherSymbols.thunderyHeavyRain
    case 232: return weatherSymbols.thunderyHeavyRain
    case 300: return weatherSymbols.lightRain
    case 301: return weatherSymbols.lightRain
    case 302: return weatherSymbols.lightRain
    case 310: return weatherSymbols.lightRain
    case 311: return weatherSymbols.lightRain
    case 312: return weatherSymbols.heavyShowers
    case 313: return weatherSymbols.lightRain
    case 314: return weatherSymbols.heavyShowers
    case 321: return weatherSymbols.lightRain
    case 500: return weatherSymbols.lightRain
    case 501: return weatherSymbols.heavyRain
    case 502: return weatherSymbols.heavyRain
    case 503: return weatherSymbols.heavyRain
    case 504: return weatherSymbols.heavyShowers
    case 511: return weatherSymbols.lightSleet
    case 520: return weatherSymbols.heavyRain
    case 521: return weatherSymbols.heavyShowers
    case 522: return weatherSymbols.heavyShowers
    case 531: return weatherSymbols.heavyShowers
    case 600: return weatherSymbols.lightSnow
    case 601: return weatherSymbols.lightSnow
    case 602: return weatherSymbols.heavySnow
    case 611: return weatherSymbols.lightSleetShowers
    case 612: return weatherSymbols.lightSleetShowers
    case 613: return weatherSymbols.lightSleetShowers
    case 615: return weatherSymbols.lightSleet
    case 616: return weatherSymbols.lightSleetShowers
    case 620: return weatherSymbols.lightSnowShowers
    case 621: return weatherSymbols.heavySnowShowers
    case 622: return weatherSymbols.heavySnowShowers
    case 701: return weatherSymbols.fog
    case 711: return weatherSymbols.fog
    case 721: return weatherSymbols.fog
    case 731: return weatherSymbols.fog
    case 741: return weatherSymbols.fog
    case 751: return weatherSymbols.fog
    case 761: return weatherSymbols.fog
    case 762: return weatherSymbols.fog
    case 771: return weatherSymbols.fog
    case 781: return weatherSymbols.fog
    case 800: return weatherSymbols.sunny
    case 801: return weatherSymbols.partlyCloudy
    case 802: return weatherSymbols.partlyCloudy
    case 803: return weatherSymbols.cloudy
    case 804: return weatherSymbols.veryCloudy
    default: return weatherSymbols.unknown
    }
}


