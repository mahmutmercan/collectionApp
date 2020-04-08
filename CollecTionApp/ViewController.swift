//
//  ViewController.swift
//  CollecTionApp
//
//  Created by İlker isa Mercan on 8.04.2020.
//  Copyright © 2020 Mahmut Mercan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self

        
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! FeedCell
        cell.CollectionLabel.text = "Energy"
        cell.CollectionImageView.image = UIImage(named: "energy.png")
       }
    

}

