//
//  HealthView.swift
//  CucumberSwiftSample
//
//  Created by Rana Javed on 04/06/2024.
//

import UIKit

class HealthViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    var weights: [Int] = [100]
    
    
    
    // MARK: - Actions
    @IBAction func didTapSubmitWeightButton(_ sender: UIButton){
        let weight = self.weightTextField.text!
        do{
            guard let intWeight = try Int(weight) else { return  }
            self.weights.append(intWeight)
            self.tableView.reloadData()
        }catch{
            print("illegal int")
        }
    }
    
    
    // MARK: - Table Data Source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.weights.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weightCell")!
        let weightLabel = cell.viewWithTag(1) as! UILabel
        weightLabel.text = "\(String(self.weights[indexPath.row])) KG"
        return cell
    }
}
