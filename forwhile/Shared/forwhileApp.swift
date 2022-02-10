//
//  forwhileApp.swift
//  Shared
//
//  Created by Takkellapati,Venkata Prabhakar on 1/25/22.
//



var member=true
var scratchCard=10
var count=0
for attempt in 1..<scratchCard {
    count+=1
    if member {
        if count>3 {
            print("You won \(scratchCard-2)$")
            count=0
            break
        }
        
    }else{
        if(count>8){
            print("You got \(scratchCard-8)$")
        }
        
    }
}

