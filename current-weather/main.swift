//
//  Main.swift
//  current-weather
//
//  Created by Hannes Egler on 17.12.19.
//  Copyright © 2019 Hannes Egler. All rights reserved.
//
import Foundation

func run() {
    let arguments = CommandLine.arguments
    let currentWeather = CurrentWeather()
    let consoleIO = ConsoleIO()
    

    switch arguments.count {
    case 1:
        consoleIO.printUsage()
    case 2:
        if arguments[1] == "-h" {
            consoleIO.printUsage()
        } else {
        currentWeather.showWeather(for: finalArguments(arguments)[0])
        }
    default:
        let searchArgument = finalArguments(arguments).joined(separator: " ")
        currentWeather.showWeather(for: searchArgument)
    }
}

run()
