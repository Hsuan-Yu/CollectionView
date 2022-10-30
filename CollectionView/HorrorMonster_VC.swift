//
//  HorrorMonster_VC.swift
//  CollectionView
//
//  Created by Calvin on 2022/10/28.
//

import UIKit

class HorrorMonster_VC: UIViewController {

    @IBOutlet weak var DragonsDogma: UIButton!
    @IBOutlet weak var EldenRing: UIButton!
    @IBOutlet weak var SilentHill: UIButton!
    @IBOutlet weak var DarkSouls: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    @IBAction func MonsterButton(_ sender: UIButton) {
        performSegue(withIdentifier: "showMonster", sender: sender)
    }
    
    @IBSegueAction func showMonsterSegue(_ coder: NSCoder, sender: Any?) -> Monster_CVC? {
        let controller = Monster_CVC(coder: coder)
        let button = sender as? UIButton
        switch button{
        case DragonsDogma:
            controller?.monsters =
            [Monster(pic: "Chimera", name: "Chimera"),
             Monster(pic: "Drake", name: "Drake"),
             Monster(pic: "EVILEYE", name: "EVILEYE"),
             Monster(pic: "Griffin", name: "Griffin"),
             Monster(pic: "Grigori", name: "Grigori"),
             Monster(pic: "Ogre", name: "Ogre"),
             Monster(pic: "Seneschal", name: "Seneschal"),
             Monster(pic: "UrDragon", name: "UrDragon")
            ]
            
        case EldenRing:
            controller?.monsters =
            [Monster(pic: "ANCIENT HERO OF ZAMOR", name: "ANCIENT HERO OF ZAMOR"),
             Monster(pic: "CEMETERY SHADE", name: "CEMETERY SHADE"),
             Monster(pic: "DEATHBIRD", name: "DEATHBIRD"),
             Monster(pic: "ERDTREE BURIAL WATCHDOG", name: "ERDTREE BURIAL WATCHDOG"),
             Monster(pic: "erdtree-avatar", name: "erdtree-avatar"),
             Monster(pic: "LEONINE MISBEGOTTEN", name: "LEONINE MISBEGOTTEN"),
             Monster(pic: "MIRANDA THE BLIGHTED BLOOM", name: "MIRANDA THE BLIGHTED BLOOM"),
             Monster(pic: "NIGHT'S CAVALRY", name: "NIGHT'S CAVALRY"),
             Monster(pic: "RUNEBEAR", name: "RUNEBEAR"),
             Monster(pic: "SCALY MISBEGOTTEN ", name: "SCALY MISBEGOTTEN ")
            ]
        
        case SilentHill:
            controller?.monsters =
            [Monster(pic: "Pyramid Head", name: "Pyramid Head"),
             Monster(pic: "Nurse", name: "Nurse"),
             Monster(pic: "Valtiel", name: "Valtiel"),
             Monster(pic: "The god", name: "The god"),
             Monster(pic: "Flesh Lip", name: "Flesh Lip"),
             Monster(pic: "Mannequin", name: "Mannequin"),
             Monster(pic: "Mary", name: "Mary"),
             Monster(pic: "Abstract Daddy", name: "Abstract Daddy")
            ]

        case DarkSouls:
            controller?.monsters =
            [Monster(pic: "Ancient Wyvern", name: "Ancient Wyvern"),
             Monster(pic: "Boreal Outrider Knight", name: "Boreal Outrider Knight"),
             Monster(pic: "Carthus Sand Worm", name: "Carthus Sand Worm"),
             Monster(pic: "Deep Accursed", name: "Deep Accursed"),
             Monster(pic: "Demon", name: "Demon"),
             Monster(pic: "Giant Slave", name: "Giant Slave"),
             Monster(pic: "IRON DRAGONSLAYER", name: "IRON DRAGONSLAYER"),
             Monster(pic: "Ravenous Crystal Lizard", name: "Ravenous Crystal Lizard"),
             Monster(pic: "Stray Demon", name: "Stray Demon"),
             Monster(pic: "Sulyvahn's Beast", name: "Sulyvahn's Beast")
            ]
      
                
        default:
            break
            
        }
        
        return controller
    }
}
