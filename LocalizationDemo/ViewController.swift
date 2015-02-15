//
//  ViewController.swift
//  LocalizationDemo
//
//  Created by Kenneth Wilcox on 2/14/15.
//  Copyright (c) 2015 Kenneth Wilcox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var textLabel: UILabel!
  @IBOutlet weak var numberLabel: UILabel!
  @IBOutlet weak var currencyLabel: UILabel!
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var imageView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    populateValues()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func populateValues() {
    textLabel.text = "Good Morning"
    numberLabel.text = numberFormatter.stringFromNumber(9999999.999)
    currencyLabel.text = "50000"
    dateLabel.text = "07/08/2014"
    imageView.image = UIImage(named: "hello")
  }
  
  var numberFormatter: NSNumberFormatter {
    let formatter = NSNumberFormatter()
    formatter.numberStyle = .DecimalStyle
    return formatter
  }
  
}

