//
//  ViewController.swift
//  SlidingCards
//
//  Created by Rashid Gaitov on 03.08.2022.
//

import UIKit
import CardSlider

struct Item: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
}

class ViewController: UIViewController, CardSliderDataSource {
    
    @IBOutlet var myButton: UIButton!
    
    var items = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        myButton.setTitle("Show Sliding Cards", for: .normal)
        myButton.backgroundColor = .link
        myButton.setTitleColor(.white, for: .normal)
        
        myButton.layer.cornerRadius = 5
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapButton() {
        
    }
    
    func item(for index: Int) -> CardSliderItem {
        <#code#>
    }
    
    func numberOfItems() -> Int {
        return 3
    }
    
}

