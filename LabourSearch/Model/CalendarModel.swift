//
//  Model2.swift
//  LabourSearch
//
//  Created by LIN LIU on 5/1/20.
//  Copyright © 2020 LinLiu. All rights reserved.
//

import Foundation
struct CalendarModel{
    
    var idForAM: String?
    
    var idForPM: String?
    
    var eventsContainer = [Any]()
    
    var eventTypeContainer = [Any]()
    
    var resultForEventTypeAM  = [""]
    
    var resultForEventTypePM  = [""]
    
    var resultForEventTypeAMPM  = [""]
    
    
    mutating func mappingEventType(_ eventType: [Any]){
        print("going to map: ", eventType)
    }
    
    
    mutating func passEventTypeArrayEvents(_ eventType: [String: Any]){
        eventTypeContainer.append(eventType)
    }
 
    
    mutating func passFinalArrayEvents(_ events: [String: Any]){
        eventsContainer.append(events)
    }

    
    mutating func passIdForAM(_ id: String){
        idForAM = id
        print("id of AM: \(idForAM!)")
    }
    
    
    mutating func passIdForPM(_ id: String){
        idForPM = id
        print("id of PM: \(idForPM!)")
    }
    
    
    mutating func searchEngine(){
        
        //print(eventTypeContainer)
        //M: search time for AM match
        for item in eventTypeContainer{
            let dictionary = item as! [String: Any]
            let startTime = dictionary["start"]! as! String
    
        
            if idForAM! == startTime{
                
                let newEventType = "Event Type: " + String(describing: dictionary["event_type"]!)
                let newId = "ID: " + String(describing: dictionary["id"]!)
                let newEnd = "End Time: " + String(describing: dictionary["end"]!)
                let newTitle = "Title: " + String(describing: dictionary["title"]!)
                let newStart = "Start Time: " + String(describing: dictionary["start"]!)
                let newExpires = "Expires: " + String(describing: dictionary["expires"]!)
                let newActions = "Actions: " + String(describing: dictionary["actions"]!)
                
                resultForEventTypeAM = [newEventType, newId, newStart, newTitle, newEnd, newExpires, newActions]
                print("AM match: ", resultForEventTypeAM)
                break
            }
            else{
                resultForEventTypeAM = [""]
                print("AM not match")
           }
        }
        
        
        //M: search time for PM match
        for item in eventTypeContainer{
            let dictionary = item as! [String: Any]
            let startTime = dictionary["start"]! as! String
    
            if idForPM! == startTime{
                
                let newEventType = "Event Type: " + String(describing: dictionary["event_type"]!)
                let newId = "ID: " + String(describing: dictionary["id"]!)
                let newEnd = "End Time: " + String(describing: dictionary["end"]!)
                let newTitle = "Title: " + String(describing: dictionary["title"]!)
                let newStart = "Start Time: " + String(describing: dictionary["start"]!)
                let newExpires = "Expires: " + String(describing: dictionary["expires"]!)
                let newActions = "Actions: " + String(describing: dictionary["actions"]!)
                
                resultForEventTypePM = [newEventType, newId, newStart, newTitle, newEnd, newExpires, newActions]
                print("PM match: ", resultForEventTypePM)
                
                resultForEventTypeAMPM = resultForEventTypeAM + resultForEventTypePM
                break
            }
            else{
                resultForEventTypePM = [""]
                print("PM not match")
                
                resultForEventTypeAMPM = resultForEventTypeAM + resultForEventTypePM
           }
        }
        
        
        
//        for item in eventsContainer{
//            let dictionary = item as! [String: Any]
//            let startTime = dictionary["start"]! as! String
//            let startTimeKey = startTime.prefix(10)
//
//            if idForMatching! == startTimeKey{
//                print("match ", "start time: ", dictionary["start"]!, " end time: ", dictionary["end"]!, "id", dictionary["id"]!, "title", dictionary["title"]!, "hours", dictionary["hours"]!)
//                let newId = String(describing: dictionary["id"]!)
//                let newTitle = String(describing: dictionary["title"]!)
//                let newStart = String(describing: dictionary["start"]!)
//                let newEnd = String(describing: dictionary["end"]!)
//                let newHours = String(describing: dictionary["hours"]!)
//
//
//                result = [newId, newTitle, newStart, newEnd, newHours ]
//                print(result)
//                break
//            }
//            else{
//               result = ["","","","","",""]
//                print("not march")
//           }
//        }
    }
    
    
}






//M: This can be written as a framework
struct Event{
    
    let id: Int
    let title:String
    let start: String
    let hours: Double
    let end: String

    init(json: [String: Any]){
        id = json["id"] as? Int ?? -1
        title = json["title"] as? String ?? ""
        start = json["start"] as? String ?? ""
        hours = json["hours"] as? Double ?? 0.0
        end = json["end"] as? String ?? ""
    }
}



