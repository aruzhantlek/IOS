//
//  DataBase.swift
//  AssignmentNineTableView
//
//  Created by Aruzhan Tlek on 21.02.2023.
//

import Foundation

struct DataBase {
    static let cityList: [City] = [
        City(cityName: "Florence", ticketPrice: 35.351, imageName: "florence"),
        City(cityName: "Istanbul", ticketPrice: 45.452, imageName: "istanbul"),
        City(cityName: "Krakow", ticketPrice: 55.554, imageName: "krakow"),
        City(cityName: "Kyoto", ticketPrice: 12.128, imageName: "kyoto"),
        City(cityName: "Mexico", ticketPrice: 20.298, imageName: "mexico"),
        City(cityName: "San-Miguel", ticketPrice: 50.85, imageName: "san-miguel"),
        City(cityName: "San-Sebastian", ticketPrice: 23.275, imageName: "san-sebastian"),
        City(cityName: "Triesta", ticketPrice: 78.94, imageName: "trieste"),
        City(cityName: "Udaipur", ticketPrice: 67.57, imageName: "udaipur")]
}
struct City {
    let cityName: String
    let ticketPrice: Float
    let imageName: String
    
}
