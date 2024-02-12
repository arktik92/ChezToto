//
//  OpeningDayPresenter.swift
//  ChezTotoApp
//
//  Created by Esteban SEMELLIER on 21/11/2023.
//

import Foundation

class OpeningDayPresenter {
    let openingDayService = OpeningDayService()
    let view: ViewPresenter
    
    init(view: ViewPresenter) {
        self.view = view
    }
    
    func getData() {
        let openingDays = openingDayService.getOpeningDay()
        self.view.getData(data: openingDays)
    }
    
    
}


protocol ViewPresenter {
    func getData(data: [OpeningDay])
}
