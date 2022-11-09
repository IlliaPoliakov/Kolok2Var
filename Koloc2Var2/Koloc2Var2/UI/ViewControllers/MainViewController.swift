//
//  MainViewController.swift
//  Koloc2Var2
//
//  Created by Illia Poliakov on 9.11.22.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
  
  // -MARK: - IBOutlets
  
  @IBOutlet var concatenationFirstTextField: UITextField!
  @IBOutlet weak var concatenationSecondTextField: UITextField!
  @IBOutlet weak var repeatingFirstTextFIeld: UITextField!
  @IBOutlet weak var repeatingSecondTextField: UITextField!
  
  
  // -MARK: - Properties -
  
  
  
  
  // -MARK: - Lifecycle -
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  
  // -MARK: - IBActions
  
  @IBAction func concatenationButton(_ sender: Any) {
    guard concatenationFirstTextField.text != "",
          concatenationSecondTextField.text != ""
    else {
      return
    }
    
    let resultString = countConcatenated(forFirstString:
                                          concatenationFirstTextField.text!, forSecondString:
                                          concatenationSecondTextField.text!)
    
    let alert = UIAlertController(title: "Result",
                                  message: "Concated string: \(resultString)",
                                  preferredStyle: .alert)
    let action = UIAlertAction(title: "Okey", style: .default)
    alert.addAction(action)
    
    self.present(alert, animated: true, completion: nil)
    
    concatenationFirstTextField.text! = ""
    concatenationSecondTextField.text! = ""
  }
  
  @IBAction func repeatingButton(_ sender: Any) {
    guard repeatingFirstTextFIeld.text != "",
          repeatingSecondTextField.text != "",
          let count = Int(repeatingSecondTextField.text!),
          count > 0
    else {
      return
    }
    
    let resultString = countRepeating(forFirstString: repeatingFirstTextFIeld.text!,
                                      withCount: count)
    
    let alert = UIAlertController(title: "Result",
                                  message: "Repeated string: \(resultString)",
                                  preferredStyle: .alert)
    let action = UIAlertAction(title: "Okey", style: .default)
    alert.addAction(action)
    
    self.present(alert, animated: true, completion: nil)
    
    repeatingSecondTextField.text! = ""
    repeatingFirstTextFIeld.text! = ""
  }
}
  
  
  // -MARK: - Functitons -
  
  func countRepeating(forFirstString firstString: String,
                      withCount count: Int) -> String {
    let currentStrting = firstString
    var resultString = ""
    
    for _ in (0..<count) {
      resultString += currentStrting
    }
    
    return resultString
  }
  
  func countConcatenated(forFirstString firstString: String,
                         forSecondString secondString: String) -> String {
  return firstString + secondString
}
