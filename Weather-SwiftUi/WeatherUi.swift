import Foundation

struct WeatherUi {
    var isNight: Bool = false
    var sunnyDays: [WeatherDayUi] = [ WeatherDayUi(dayOfWeek: "MON",
                                                   imageName: "cloud.sun.bolt.fill",
                                                   temperature: 12),
                                      WeatherDayUi(dayOfWeek: "TUE",
                                                   imageName: "sunrise.fill",
                                                   temperature: 12),
                                      WeatherDayUi(dayOfWeek: "WED",
                                                   imageName: "sun.haze.fill",
                                                   temperature: 12),
                                      WeatherDayUi(dayOfWeek: "THU",
                                                   imageName: "cloud.bolt.rain.fill",
                                                   temperature: 12),
                                      WeatherDayUi(dayOfWeek: "FRI",
                                                   imageName: "thermometer.sun.fill",
                                                   temperature: 12)]
    var nightDays: [WeatherDayUi] = [ WeatherDayUi(dayOfWeek: "SAT",
                                                   imageName: "moon.stars.fill",
                                                   temperature: 12),
                                      WeatherDayUi(dayOfWeek: "SUN",
                                                   imageName: "moon.circle",
                                                   temperature: 12),
                                      WeatherDayUi(dayOfWeek: "MON",
                                                   imageName: "cloud.drizzle.fill",
                                                   temperature: 12),
                                      WeatherDayUi(dayOfWeek: "TUE",
                                                   imageName: "cloud.sleet.fill",
                                                   temperature: 12),
                                      WeatherDayUi(dayOfWeek: "WED",
                                                   imageName: "cloud.moon.rain.fill",
                                                   temperature: 12)]
}

struct WeatherDayUi: Identifiable {
    let id = UUID()
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
}
