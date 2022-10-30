//
//  BigPic_VC.swift
//  CollectionView_HorrorMonster
//
//  Created by Calvin on 2022/10/28.
//

import UIKit

class BigPic_VC: UIViewController {

    @IBOutlet weak var bigPicImageView: UIImageView!
    var bigPic: Monster!
        
    @IBOutlet weak var bigPicName: UILabel!
    var bigPicLabel: Monster!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        bigPicImageView.image = UIImage(named: bigPic.pic)
        bigPicName.text = bigPicLabel.name

        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
