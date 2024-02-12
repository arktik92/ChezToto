//
//  ViewController.swift
//  ChezTotoApp
//
//  Created by Esteban SEMELLIER on 21/11/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
// MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!

    
    // MARK: - Variables
    var openingDays: [OpeningDay] = []
    lazy var presenter: OpeningDayPresenter = OpeningDayPresenter(view: self)
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.getData()
    }
    
// MARK: - Functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return openingDays.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCellOpening: CustomCellOpening = tableView.dequeueReusableCell(withIdentifier: "CustomCellOpening", for: indexPath) as! CustomCellOpening
        customCellOpening.horaireImg.image = openingDays[indexPath.row].img
        customCellOpening.openingDayLabel.text = openingDays[indexPath.row].day
        customCellOpening.openingHourLabel.text = openingDays[indexPath.row].hour
        
        return customCellOpening
    }

    @IBAction func goToDetail(_ sender: Any) {
        let vc = DetailViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController: ViewPresenter {
    func getData(data: [OpeningDay]) {
        self.openingDays = data
        tableView.reloadData()
    }
}


