//
//  Monster_CVC.swift
//  CollectionView
//
//  Created by Calvin on 2022/10/28.
//

import UIKit

        //此行註解 private let reuseIdentifier = "Cell"

class Monster_CVC: UICollectionViewController {
    
    var monsters = [
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: ""),
        Monster(pic: "", name: "")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //此行註解 self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    
    @IBSegueAction func showBigPicSegue(_ coder: NSCoder) -> BigPic_VC? {
        guard let item = collectionView.indexPathsForSelectedItems?.first?.item else {
            return nil
        }
        let controller = BigPic_VC(coder: coder)
        controller?.bigPic = monsters[item]
        controller?.bigPicLabel = monsters[item]
        return controller
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return monsters.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MonsterCVCell", for: indexPath) as! Monster_CVCell
        
        let monster = monsters[indexPath.item]
        cell.picImageView.image = UIImage(named: monster.pic)
        cell.picLabel.text = monster.name
        
        
        
        cell.picImageView.contentMode = UIView.ContentMode.scaleAspectFill

        return cell
    }

    
    
    /*
     override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TravelCollectionViewCell", for: indexPath) as! TravelCollectionViewCell
     
         // Configure the cell
         //取得陣列中的照片，讓cell可以讀到
         let scene = scenes[indexPath.item]
         cell.picImageView.image = UIImage(named: scene.pic)
         //取得陣列中的文字，讓cell可以讀到
         cell.picLabel.text = scene.location
         
         //使圖片符合畫面比例大小
         cell.picImageView.contentMode = UIView.ContentMode.scaleAspectFill
         
         return cell
     }
     
     
     */
    
    
    
    
    
    
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
