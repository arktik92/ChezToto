//
//  OpeningDay.swift
//  ChezTotoApp
//
//  Created by Esteban SEMELLIER on 21/11/2023.
//

import Foundation
import UIKit

struct OpeningDay {
    let img: UIImage
    let day: String
    let hour: String
}

class OpeningDayService {
    let img = "Horaire"
    func getOpeningDay() -> [OpeningDay] {
        let days = [
            OpeningDay(img: UIImage(named: img)!, day: "Lundi", hour: "Fermé"),
            OpeningDay(img: UIImage(named: img)!, day: "Mardi", hour: "11h30 - 14h30 • 18h30 - 22h00"),
            OpeningDay(img: UIImage(named: img)!, day: "Mercredi", hour: "11h30 - 14h30 • 18h30 - 22h00"),
            OpeningDay(img: UIImage(named: img)!, day: "Jeudi", hour: "11h30 - 14h30 • 18h30 - 22h00"),
            OpeningDay(img: UIImage(named: img)!, day: "Vendredi", hour: "11h30 - 14h30 • 18h30 - 22h00"),
            OpeningDay(img: UIImage(named: img)!, day: "Samdi", hour: "11h30 - 14h30 • 18h30 - 22h00"),
            OpeningDay(img: UIImage(named: img)!, day: "Dimanche", hour: "Fermé")
        ]
        
        return days
    }
}
