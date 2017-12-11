//
//  ViewController.swift
//  ProvaEmoji
//
//  Created by Marco Romano on 05/12/2017.
//  Copyright © 2017 com.academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var viewLabel: UILabel!
    @IBOutlet var collectionView: UICollectionView!
    
    var avatarArray: [String] = ["avatar1", "avatar2", "avatar3", "avatar4"]
    var namesArray: [String] = ["avatar1", "avatar2", "avatar3", "avatar4"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return avatarArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCellID", for: indexPath) as! CollectionViewCell
        cell.avatarImage.image = UIImage(named: avatarArray[indexPath.row])
        cell.avatarLabel.text = namesArray[indexPath.row]
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bgColor = UIColor.init(red: 0/255.0, green: 120/255.0, blue: 251/255.0, alpha: 1)
//        let bgColor = UIColor.gray
//        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//        backgroundImage.image = UIImage(named: "pic2")
//        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
//        self.view.insertSubview(backgroundImage, at: 0)

        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = bgColor
        self.navigationController?.navigationBar.barTintColor = bgColor
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = bgColor
        viewLabel.text = "Choose your avatar...\nWith love"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print ("Tap on the \(namesArray[indexPath.row])")
//        guard let vc = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "secondVCIdentifier") as? SecondViewController else {
//            print("Could not instantiate view controller with identifier of type SecondViewController")
//            return
//        }
        let vc = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "secondVCIdentifier") as! SecondViewController
        
        Singleton.shared.info = namesArray[indexPath.row]
        self.navigationController?.pushViewController(vc, animated:true)
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "segueSecondViewController" {
//            let vc = segue.destination as! SecondViewController
////            let cell = sender as! CollectionViewCell
//            print("button pressed")
//        }
    }
    
}

