//
//  CurrentWeather.swift
//  current-weather
//
//  Created by Hannes Egler on 17.12.19.
//  Copyright © 2019 Hannes Egler. All rights reserved.
//

import Foundation

class ConsoleIO {
    func writeMessage(_ message: String, to: OutputType = .standard) {
      switch to {
      case .standard:
        print("\(message)")
      case .error:
        fputs("Error: \(message)\n", stderr)
      }
    }

    func printUsage() {
      let executableName = (CommandLine.arguments[0] as NSString).lastPathComponent
            
      writeMessage("usage:")
      writeMessage("\(executableName) city")
      writeMessage("\(executableName) city, country")
      writeMessage("or")
      writeMessage("\(executableName) -h to show usage information")
    }
 

    func printResults(to: OutputType = .standard) {
        switch to {
        case .standard:
            writeMessage("")
            writeMessage(createLine(0))
            writeMessage(createLine(1))
            writeMessage(createLine(2))
            writeMessage(createLine(3))
            writeMessage(createLine(4))
            writeMessage("")
        case .error:
            fputs("Error", stderr)
        }
    }
    
}

class CurrentWeather {
    let consoleIO = ConsoleIO()

    func staticMode() {
        consoleIO.printUsage()
    }
    
    func showWeather(for city: String) {
        fetchWeather(for: city)
        self.consoleIO.printResults()
    }
    
    func updateWeather(with weatherInfo: WeatherData) {
        temperature = convertToCelsius(weatherInfo.main.temp)
        humidity = weatherInfo.main.humidity
        windSpeed = weatherInfo.wind.speed
        visibility = convertToKM(weatherInfo.visibility)
    }
}

enum OutputType {
    case error, standard
}

func finalArguments(_ arguments: [String]) -> [String] {
    //let arguments = CommandLine.arguments
    var enteredArguments = [String]()
       
       for argument in arguments {
           enteredArguments.append(argument)
       }
       
       enteredArguments.removeFirst()
    return enteredArguments
}



func createLine(_ lineNumber: Int) -> String {
    let weatherSymbol = getWeatherSymbol(id: id)
    var text = String()
    
    switch lineNumber {
    case 0: text = weatherCondition.white
    case 1: text = "\(temperature) °C".green
    case 2: text = "\(String(windSpeed)) km/h".white + " Wind"
    case 3: text = "\(String(humidity)) %".white + " Humidity"
    case 4: text = "\(String(visibility)) km".white + " Visibility"
    default: text = "Line Error".red
    }
    
    let line = "   "+"\(weatherSymbol[lineNumber])"+"   "+"\(text)"
    return line
}
