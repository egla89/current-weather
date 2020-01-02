//
//  Openweather.swift
//  current-weather
//
//  Created by Hannes Egler on 17.12.19.
//  Copyright © 2019 Hannes Egler. All rights reserved.
//

import Foundation

var temperature = String()
var weatherCondition = String()
var windSpeed = Double()
var visibility = String()
var humidity = Int()
var id = Int()
var country = String()

func fetchWeather(for city: String) {
    
    let baseURL = URL(string: "https://api.openweathermap.org/data/2.5/weather")!
    let consoleIO = ConsoleIO()
    let query: [String: String] = [
       "q": city,
       "appid": apiKey
       ]
    let url = baseURL.withQueries(query)!
    let runLoop = CFRunLoopGetCurrent()
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
       let jsonDecoder = JSONDecoder()
       if let data = data,
            let weatherInfo = try? jsonDecoder.decode(WeatherData.self, from: data) {
            weatherCondition = weatherInfo.weather[0].description.capitalized
            temperature = convertToCelsius(weatherInfo.main.temp)
            humidity = weatherInfo.main.humidity
            windSpeed = weatherInfo.wind.speed
            visibility = convertToKM(weatherInfo.visibility)
            id = weatherInfo.weather[0].id
            country = weatherInfo.sys.country
            CFRunLoopStop(runLoop)
       } else {
        consoleIO.writeMessage("Couldn't find city", to: .error)
        exit(EXIT_FAILURE)
        }
    }
    task.resume()
    CFRunLoopRun()
}

func convertToCelsius(_ temperatureKelvin: Double) -> String{
   return String(format: "%.0f", temperatureKelvin - 273.15)
}

func convertToKM(_ visibility: Int) -> String{
    return String(visibility / 1000)
}
