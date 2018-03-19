//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Nayan Jariwala on 19/03/18.
//  Copyright © 2018 Nayan Jariwala. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player : Player!
    @IBOutlet weak var nextBtn: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func mensBtnTapped(_ sender: Any) {
        selectedLeague(leagueType: "mens")
    }
    @IBAction func womensBtnTapped(_ sender: Any) {
        selectedLeague(leagueType: "womens")
    }
    @IBAction func coedsBtnTapped(_ sender: Any) {
        selectedLeague(leagueType: "coeds ")
    }
    func selectedLeague(leagueType:String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }
}
