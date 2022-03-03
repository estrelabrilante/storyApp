//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    //let story0 = "You see a Fork in the road"
    //let choice1 = "Take a left"
   // let choice2 = "Take a Right"
    var selectedStory = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI();
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        selectedStory.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
        
    }
    
    func updateUI(){
        storyLabel.text = selectedStory.getStoryTitle();
        choice1Button.setTitle(selectedStory.getChoice1(), for: .normal);
        choice2Button.setTitle(selectedStory.getChoice2(), for: .normal)
        
    }
    
}

