//
//  FetchJsons.swift
//  LabourSearch
//
//  Created by LIN LIU on 8/1/20.
//  Copyright © 2020 LinLiu. All rights reserved.
//

import Foundation



struct FetchJsons{
   
    
    static func postJsonDataFromWebServer(){
 
    }
    
    static func getEventTypeFromWebServer(){
     
     let url = URL(string:"https://laboursearch.com.au/api/app/calendar")
     
     let config = URLSessionConfiguration.default
     
     config.httpAdditionalHeaders = [
       "Accept": "application/json",
       "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1ODYzMzU5MDMsImlkIjoxNzAsIm1zZyI6IlN1Y2Nlc3MifQ.D4Ith9Sg3ZBVdS8yckkVG03qieK6TpOQ8vvaoQ1nLBs"
     ]
    
     let urlSession = URLSession(configuration: config)
    
     let sth = urlSession.dataTask(with: url!, completionHandler: {data,response,error -> Void in
         
        if error != nil{
             print("ERROR")
        }
         
        else{
            
            if let content = data{
                                   
              do {
               
                  let myJson = try JSONSerialization.jsonObject(with: content, options: .mutableContainers) as AnyObject
                        print(myJson)

                       if let dictionary = myJson as? [String: Any] {
                            
                           if let array = dictionary["events"] as? [Any] {

                               for item in array{
                                   
                                   if let firstObject3 = item as? [String: Any]{
                                       
                                       if let firstObject4 = firstObject3["event_type"] as? String{
                                           
                                           if firstObject4 == "Worker Unavailable"{
                                             print(firstObject3)
                                               calendarModel.passEventTypeArrayEvents(firstObject3)
                                            
                                           }
                                           
                                       }
                                   }
                               }
                           }
                       }
                    }
            catch{

            }
          }
        }
      })
      
      sth.resume()
       
   }
    
    
    
    static func getJsonDataFromWebServer(){
        
        let url = URL(string:"https://laboursearch.com.au/api/app/calendar")
        
        let config = URLSessionConfiguration.default
        
        config.httpAdditionalHeaders = [
          "Accept": "application/json",
          "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1ODYzMzU5MDMsImlkIjoxNzAsIm1zZyI6IlN1Y2Nlc3MifQ.D4Ith9Sg3ZBVdS8yckkVG03qieK6TpOQ8vvaoQ1nLBs"
        ]
       
        let urlSession = URLSession(configuration: config)
       
        let sth = urlSession.dataTask(with: url!, completionHandler: {data,response,error -> Void in
            
           if error != nil{
                print("ERROR")
           }
            
           else{
 
               if let content = data{

                   do {

                       let myJson = try JSONSerialization.jsonObject(with: content, options: .mutableContainers) as AnyObject

                        if let dictionary = myJson as? [String: Any] {

                            if let array = dictionary["events"] as? [Any] {

                                for item in array{

                                    if let firstObject3 = item as? [String: Any]{

                                        if let firstObject4 = firstObject3["details"] as? [String: Any]{

                                            if let array2 = firstObject4["shift_events"] as? [ Any] {

                                                for item in array2{

                                                    if let firstObject5 = item as? [String: Any]{

                                                        calendarModel.passFinalArrayEvents(firstObject5)

                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    catch{

                    }
                }
            }
        })
        
        sth.resume()
    }

    
    
    
    
}
