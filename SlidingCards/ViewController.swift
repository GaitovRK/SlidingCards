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
        
        items.append(Item(image: UIImage(named: "NirvanaNevermindalbumcover")!,
                          rating: 1,
                          title: "Nirvana",
                          subtitle: "Nevermind",
                          description: "Nevermind is the second studio album by the American rock band Nirvana, released on September 24, 1991, by DGC Records. It was Nirvana's first release on a major label and the first to feature drummer Dave Grohl"))
        
        items.append(Item(image: UIImage(named: "Tsoy")!,
                          rating: 1,
                          title: "Victor Tsoy",
                          subtitle: "Gruppa Krovi",
                          description: "Gruppa krovi (Russian: Группа крови, lit. 'blood type, blood group') is the sixth studio album by Soviet rock band Kino, first released in 1988. Released at the height of Perestroika and Glasnost, together with a crime thriller titled The Needle (Russian: Игла, romanized: Igla) released in the same year starring lead vocalist Viktor Tsoi, it would go on to be the band's most popular album both inside and eventually outside the Soviet Union, with songs from the album, including the title track, commonly being listed among top 100 lists of Russian music."))
        
        items.append(Item(image: UIImage(named: "OneRepublic")!,
                          rating: 1,
                          title: "One Republic",
                          subtitle: "Counting Stars",
                          description: "Counting Stars is a song by American pop rock band OneRepublic from their third studio album, Native (2013). The song was written by lead singer Ryan Tedder, and produced by Tedder and Noel Zancanella. It was released as the album's second single on June 14, 2013."))
        
        myButton.setTitle("Show Sliding Cards", for: .normal)
        myButton.backgroundColor = .link
        myButton.setTitleColor(.white, for: .normal)
        
        myButton.layer.cornerRadius = 5
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapButton() {
        
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Cards by Rashid"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func item(for index: Int) -> CardSliderItem {
        items[index]
    }
    
    func numberOfItems() -> Int {
        return items.count
    }
    
}

