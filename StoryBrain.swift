//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
struct StoryBrain {
    let stories = [
        Story(title:"you see a fork in the road", choice1: "take a left",choice1Destination:1,choice2:"take a right", choice2Destination:2),
        Story(title:"you see a tiger",choice1: "shout for help",choice1Destination:0 ,choice2: "play dead", choice2Destination:0),
        
        Story(title:"you find a tresaure chest",choice1: "open it",choice1Destination:0 ,choice2: "check for traps",choice2Destination:0)
    ]
   
    var position = 0;
    func getStoryTitle() -> String {
        return stories[position].title
    }
    
    func getChoice1() -> String {
        return stories[position].choice1
    }
    
    func getChoice2() -> String {
        return stories[position].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[position]
        if userChoice == currentStory.choice1 {
            position = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            position = currentStory.choice2Destination
        }
    }

    
}


