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
        Story(t: "you see a fork in the road", c1:"take a left",c2:"take a right"),
        Story(t:"you see a tiger",c1: "shout for help",c2: "play dead"),
        
        Story(t:"you find a tresaure chest", c1: "open it", c2: "check for traps")
    ]
    var uanswer = ""
    var position = 0;
    mutating func checkChoice(_ userAnswer: String) -> Bool  {
    if userAnswer == (stories[position].choice1   ){
        nextText();
        return true
        }
    else if userAnswer == stories[position].choice2
    {
        position += 2
        return true
      }
        nextText()
      return false
}
    mutating func nextText(){
        if position + 1 < stories.count{
            position += 1
        }
        else {
            position = 0;
        }
    }
    
    func getLabel()-> String{
        return stories[position].title;
        
    }
    func getChoice1()-> String{
        return stories[position].choice1;
        
    }
    func getChoice2()-> String{
        return stories[position].choice2;
        
    }
}


