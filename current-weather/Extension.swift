//
//  Extension.swift
//  current-weather
//
//  Created by Hannes Egler on 17.12.19.
//  Copyright © 2019 Hannes Egler. All rights reserved.
//

import Foundation

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        let sortedQueries = queries.sorted { $0.1 > $1.1 }
        components?.queryItems = sortedQueries.map
            { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}

extension String {

    func colored(_ color: ANSIColor) -> String {
        return color + self + ANSIColor.default
    }

    var black: String {
        return colored(.black)
    }

    var red: String {
        return colored(.red)
    }

    var green: String {
        return colored(.green)
    }

    var yellow: String {
        return colored(.yellow)
    }

    var blue: String {
        return colored(.blue)
    }

    var magenta: String {
        return colored(.magenta)
    }

    var cyan: String {
        return colored(.cyan)
    }

    var bold: String {
        return colored(.bold)
    }
    
    var white: String {
        return colored(.white)
    }

}

enum ANSIColor: String {


    case black = "\u{001B}[0;30m"
    case red = "\u{001B}[0;31m"
    case green = "\u{001B}[0;32m"
    case yellow = "\u{001B}[0;33m"
    case blue = "\u{001B}[0;34m"
    case magenta = "\u{001B}[0;35m"
    case cyan = "\u{001B}[0;36m"
    case white = "\u{001B}[0;37m"
    case bold = "\u{001B}[1m"
    case `default` = "\u{001B}[0;0m"

    static var values: [ANSIColor] {
        return [.black, .red, .green, .yellow, .blue, .magenta, .cyan, .white, .bold, .default]
    }

    static var names: [ANSIColor: String] = {
        return [
            ANSIColor.black: "black",
            ANSIColor.red: "red",
            ANSIColor.green: "green",
            ANSIColor.yellow: "yellow",
            ANSIColor.blue: "blue",
            ANSIColor.magenta: "magenta",
            ANSIColor.cyan: "cyan",
            ANSIColor.white: "white",
            ANSIColor.bold: "bold",
            ANSIColor.default: "default",
        ]
    }()

    var name: String {
        return ANSIColor.names[self] ?? "unknown"
    }

    static func + (lhs: ANSIColor, rhs: String) -> String {
        return lhs.rawValue + rhs
    }

    static func + (lhs: String, rhs: ANSIColor) -> String {
        return lhs + rhs.rawValue
    }

}
