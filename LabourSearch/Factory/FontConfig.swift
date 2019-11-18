//
//  FontConfig.swift
//  LabourSearch
//
//  Created by LIN LIU on 16/11/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//

import UIKit

struct FontConfig {
    
    static var resultLabelTextFont: UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 35)
        case "iPhone 5S":
            return .systemFont(ofSize: 35)
        case "iPhone SE":
            return .systemFont(ofSize: 35)
            
        case "iPhone 6":
            return .systemFont(ofSize: 40)
        case "iPhone 6s":
            return .systemFont(ofSize: 40)
        case "iPhone 7":
            return .systemFont(ofSize: 40)
        case "iPhone 7s":
            return .systemFont(ofSize: 40)
        case "iPhone 8":
            return .systemFont(ofSize: 40)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 45)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 45)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 45)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 45)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 45)
            
        case "iPhone X":
            return .systemFont(ofSize: 45)
        case "iPhone XS":
            return .systemFont(ofSize: 45)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 45)
        case "iPhone XR":
            return .systemFont(ofSize: 45)
            
        default:
            return .systemFont(ofSize: 45)
        }
    }
    
    
    static var hintLabelTextFont: UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 8)
        case "iPhone 5S":
            return .systemFont(ofSize: 8)
        case "iPhone SE":
            return .systemFont(ofSize: 8)
            
        case "iPhone 6":
            return .systemFont(ofSize: 10)
        case "iPhone 6s":
            return .systemFont(ofSize: 10)
        case "iPhone 7":
            return .systemFont(ofSize: 10)
        case "iPhone 7s":
            return .systemFont(ofSize: 10)
        case "iPhone 8":
            return .systemFont(ofSize: 10)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 11)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 11)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 11)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 11)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 11)
            
        case "iPhone X":
            return .systemFont(ofSize: 12)
        case "iPhone XS":
            return .systemFont(ofSize: 12)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 13)
        case "iPhone XR":
            return .systemFont(ofSize: 13)
            
        default:
            return .systemFont(ofSize: 13)
        }
    }
    
    static var taxResultLabelTextFont: UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 30)
        case "iPhone 5S":
            return .systemFont(ofSize: 30)
        case "iPhone SE":
            return .systemFont(ofSize: 30)
            
        case "iPhone 6":
            return .systemFont(ofSize: 35)
        case "iPhone 6s":
            return .systemFont(ofSize: 35)
        case "iPhone 7":
            return .systemFont(ofSize: 35)
        case "iPhone 7s":
            return .systemFont(ofSize: 35)
        case "iPhone 8":
            return .systemFont(ofSize: 35)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 40)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 40)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 40)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 40)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 40)
            
        case "iPhone X":
            return .systemFont(ofSize: 40)
        case "iPhone XS":
            return .systemFont(ofSize: 40)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 40)
        case "iPhone XR":
            return .systemFont(ofSize: 40)
            
        default:
            return .systemFont(ofSize: 40)
        }
    }
    
    
    static var incomeLabelTextFont: UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 12)
        case "iPhone 5S":
            return .systemFont(ofSize: 12)
        case "iPhone SE":
            return .systemFont(ofSize: 12)
            
        case "iPhone 6":
            return .systemFont(ofSize: 14)
        case "iPhone 6s":
            return .systemFont(ofSize: 14)
        case "iPhone 7":
            return .systemFont(ofSize: 14)
        case "iPhone 7s":
            return .systemFont(ofSize: 14)
        case "iPhone 8":
            return .systemFont(ofSize: 14)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone X":
            return .systemFont(ofSize: 14)
        case "iPhone XS":
            return .systemFont(ofSize: 14)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 16)
        case "iPhone XR":
            return .systemFont(ofSize: 16)
            
        default:
            return .systemFont(ofSize: 16)
        }
    }
    
    
    static var startTimeLabelTextFont: UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 12)
        case "iPhone 5S":
            return .systemFont(ofSize: 12)
        case "iPhone SE":
            return .systemFont(ofSize: 12)
            
        case "iPhone 6":
            return .systemFont(ofSize: 14)
        case "iPhone 6s":
            return .systemFont(ofSize: 14)
        case "iPhone 7":
            return .systemFont(ofSize: 14)
        case "iPhone 7s":
            return .systemFont(ofSize: 14)
        case "iPhone 8":
            return .systemFont(ofSize: 14)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone X":
            return .systemFont(ofSize: 14)
        case "iPhone XS":
            return .systemFont(ofSize: 14)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 16)
        case "iPhone XR":
            return .systemFont(ofSize: 16)
            
        default:
            return .systemFont(ofSize: 16)
        }
    }
    
    static var deductionsLabelTextFont: UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 12)
        case "iPhone 5S":
            return .systemFont(ofSize: 12)
        case "iPhone SE":
            return .systemFont(ofSize: 12)
            
        case "iPhone 6":
            return .systemFont(ofSize: 14)
        case "iPhone 6s":
            return .systemFont(ofSize: 14)
        case "iPhone 7":
            return .systemFont(ofSize: 14)
        case "iPhone 7s":
            return .systemFont(ofSize: 14)
        case "iPhone 8":
            return .systemFont(ofSize: 14)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone X":
            return .systemFont(ofSize: 14)
        case "iPhone XS":
            return .systemFont(ofSize: 14)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 16)
        case "iPhone XR":
            return .systemFont(ofSize: 16)
            
        default:
            return .systemFont(ofSize: 16)
        }
    }
    
    static var residentialStatusLabelTextFont: UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 12)
        case "iPhone 5S":
            return .systemFont(ofSize: 12)
        case "iPhone SE":
            return .systemFont(ofSize: 12)
            
        case "iPhone 6":
            return .systemFont(ofSize: 14)
        case "iPhone 6s":
            return .systemFont(ofSize: 14)
        case "iPhone 7":
            return .systemFont(ofSize: 14)
        case "iPhone 7s":
            return .systemFont(ofSize: 14)
        case "iPhone 8":
            return .systemFont(ofSize: 14)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone X":
            return .systemFont(ofSize: 14)
        case "iPhone XS":
            return .systemFont(ofSize: 14)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 16)
        case "iPhone XR":
            return .systemFont(ofSize: 16)
            
        default:
            return .systemFont(ofSize: 16)
        }
    }
    
    
    static var payFrequencyLabelTextFont: UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 12)
        case "iPhone 5S":
            return .systemFont(ofSize: 12)
        case "iPhone SE":
            return .systemFont(ofSize: 12)
            
        case "iPhone 6":
            return .systemFont(ofSize: 14)
        case "iPhone 6s":
            return .systemFont(ofSize: 14)
        case "iPhone 7":
            return .systemFont(ofSize: 14)
        case "iPhone 7s":
            return .systemFont(ofSize: 14)
        case "iPhone 8":
            return .systemFont(ofSize: 14)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 16)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 16)
        case "iPhone X":
            return .systemFont(ofSize: 14)
        case "iPhone XS":
            return .systemFont(ofSize: 14)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 16)
        case "iPhone XR":
            return .systemFont(ofSize: 16)
            
        default:
            return .systemFont(ofSize: 16)
        }
    }
    
    
    static var TFNLabelTextFont : UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 13)
        case "iPhone 5S":
            return .systemFont(ofSize: 13)
        case "iPhone SE":
            return .systemFont(ofSize: 13)
            
        case "iPhone 6":
            return .systemFont(ofSize: 15)
        case "iPhone 6s":
            return .systemFont(ofSize: 15)
        case "iPhone 7":
            return .systemFont(ofSize: 15)
        case "iPhone 7s":
            return .systemFont(ofSize: 15)
        case "iPhone 8":
            return .systemFont(ofSize: 15)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone X":
            return .systemFont(ofSize: 16)
        case "iPhone XS":
            return .systemFont(ofSize: 16)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 17)
        case "iPhone XR":
            return .systemFont(ofSize: 17)
            
        default:
            return .systemFont(ofSize: 17)
        }
    }
    
    static var medicareLevyLabelTextFont : UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 13)
        case "iPhone 5S":
            return .systemFont(ofSize: 13)
        case "iPhone SE":
            return .systemFont(ofSize: 13)
            
        case "iPhone 6":
            return .systemFont(ofSize: 15)
        case "iPhone 6s":
            return .systemFont(ofSize: 15)
        case "iPhone 7":
            return .systemFont(ofSize: 15)
        case "iPhone 7s":
            return .systemFont(ofSize: 15)
        case "iPhone 8":
            return .systemFont(ofSize: 15)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone X":
            return .systemFont(ofSize: 16)
        case "iPhone XS":
            return .systemFont(ofSize: 16)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 17)
        case "iPhone XR":
            return .systemFont(ofSize: 17)
            
        default:
            return .systemFont(ofSize: 17)
        }
    }
    
    static var healthCoverLabelTextFont  : UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 13)
        case "iPhone 5S":
            return .systemFont(ofSize: 13)
        case "iPhone SE":
            return .systemFont(ofSize: 13)
            
        case "iPhone 6":
            return .systemFont(ofSize: 15)
        case "iPhone 6s":
            return .systemFont(ofSize: 15)
        case "iPhone 7":
            return .systemFont(ofSize: 15)
        case "iPhone 7s":
            return .systemFont(ofSize: 15)
        case "iPhone 8":
            return .systemFont(ofSize: 15)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone X":
            return .systemFont(ofSize: 16)
        case "iPhone XS":
            return .systemFont(ofSize: 16)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 17)
        case "iPhone XR":
            return .systemFont(ofSize: 17)
            
        default:
            return .systemFont(ofSize: 17)
        }
    }
    
    static var incomeValueTextFont: UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 13)
        case "iPhone 5S":
            return .systemFont(ofSize: 13)
        case "iPhone SE":
            return .systemFont(ofSize: 13)
            
        case "iPhone 6":
            return .systemFont(ofSize: 15)
        case "iPhone 6s":
            return .systemFont(ofSize: 15)
        case "iPhone 7":
            return .systemFont(ofSize: 15)
        case "iPhone 7s":
            return .systemFont(ofSize: 15)
        case "iPhone 8":
            return .systemFont(ofSize: 15)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone X":
            return .systemFont(ofSize: 16)
        case "iPhone XS":
            return .systemFont(ofSize: 16)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 17)
        case "iPhone XR":
            return .systemFont(ofSize: 17)
            
        default:
            return .systemFont(ofSize: 17)
        }
    }
    
    
    static var startTimeValueTextFont: UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 13)
        case "iPhone 5S":
            return .systemFont(ofSize: 13)
        case "iPhone SE":
            return .systemFont(ofSize: 13)
            
        case "iPhone 6":
            return .systemFont(ofSize: 15)
        case "iPhone 6s":
            return .systemFont(ofSize: 15)
        case "iPhone 7":
            return .systemFont(ofSize: 15)
        case "iPhone 7s":
            return .systemFont(ofSize: 15)
        case "iPhone 8":
            return .systemFont(ofSize: 15)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone X":
            return .systemFont(ofSize: 16)
        case "iPhone XS":
            return .systemFont(ofSize: 16)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 17)
        case "iPhone XR":
            return .systemFont(ofSize: 17)
            
        default:
            return .systemFont(ofSize: 17)
        }
    }
    
    static var endTimeValueTextFont: UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 13)
        case "iPhone 5S":
            return .systemFont(ofSize: 13)
        case "iPhone SE":
            return .systemFont(ofSize: 13)
            
        case "iPhone 6":
            return .systemFont(ofSize: 15)
        case "iPhone 6s":
            return .systemFont(ofSize: 15)
        case "iPhone 7":
            return .systemFont(ofSize: 15)
        case "iPhone 7s":
            return .systemFont(ofSize: 15)
        case "iPhone 8":
            return .systemFont(ofSize: 15)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone X":
            return .systemFont(ofSize: 16)
        case "iPhone XS":
            return .systemFont(ofSize: 16)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 17)
        case "iPhone XR":
            return .systemFont(ofSize: 17)
            
        default:
            return .systemFont(ofSize: 17)
        }
    }
    
    
    static var residentialStatusValueTextFont : UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 13)
        case "iPhone 5S":
            return .systemFont(ofSize: 13)
        case "iPhone SE":
            return .systemFont(ofSize: 13)
            
        case "iPhone 6":
            return .systemFont(ofSize: 15)
        case "iPhone 6s":
            return .systemFont(ofSize: 15)
        case "iPhone 7":
            return .systemFont(ofSize: 15)
        case "iPhone 7s":
            return .systemFont(ofSize: 15)
        case "iPhone 8":
            return .systemFont(ofSize: 15)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone X":
            return .systemFont(ofSize: 16)
        case "iPhone XS":
            return .systemFont(ofSize: 16)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 17)
        case "iPhone XR":
            return .systemFont(ofSize: 17)
            
        default:
            return .systemFont(ofSize: 17)
        }
    }
    
    
    static var payFrequencyValueTextFont : UIFont{
        switch UIDevice.current.name{
        case "iPod Touch":
            return .systemFont(ofSize: 13)
        case "iPhone 5S":
            return .systemFont(ofSize: 13)
        case "iPhone SE":
            return .systemFont(ofSize: 13)
            
        case "iPhone 6":
            return .systemFont(ofSize: 15)
        case "iPhone 6s":
            return .systemFont(ofSize: 15)
        case "iPhone 7":
            return .systemFont(ofSize: 15)
        case "iPhone 7s":
            return .systemFont(ofSize: 15)
        case "iPhone 8":
            return .systemFont(ofSize: 15)
            
        case "iPhone 6 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 6s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 7s Plus":
            return .systemFont(ofSize: 17)
        case "iPhone 8 Plus":
            return .systemFont(ofSize: 17)
        case "iPhone X":
            return .systemFont(ofSize: 16)
        case "iPhone XS":
            return .systemFont(ofSize: 16)
            
        case "iPhone XS Max":
            return .systemFont(ofSize: 17)
        case "iPhone XR":
            return .systemFont(ofSize: 17)
            
        default:
            return .systemFont(ofSize: 17)
        }
    }
    
    
    static var residentialStatusDefaultButtonTextFont  : CGFloat{
        switch UIDevice.current.name{
        case "iPod Touch":
            return 14
        case "iPhone 5S":
            return 14
        case "iPhone SE":
            return 14
            
        case "iPhone 6":
            return 16
        case "iPhone 6s":
            return 16
        case "iPhone 7":
            return 16
        case "iPhone 7s":
            return 16
        case "iPhone 8":
            return 16
            
        case "iPhone 6 Plus":
            return 17
        case "iPhone 6s Plus":
            return 17
        case "iPhone 7 Plus":
            return 17
        case "iPhone 7s Plus":
            return 17
        case "iPhone 8 Plus":
            return 17
        case "iPhone X":
            return 16
        case "iPhone XS":
            return 16
            
        case "iPhone XS Max":
            return 17
        case "iPhone XR":
            return 17
            
        default:
            return 17
        }
    }
    
    static var residentialStatusForeignButtonTextFont: CGFloat{
        switch UIDevice.current.name{
        case "iPod Touch":
            return 14
        case "iPhone 5S":
            return 14
        case "iPhone SE":
            return 14
            
        case "iPhone 6":
            return 16
        case "iPhone 6s":
            return 16
        case "iPhone 7":
            return 16
        case "iPhone 7s":
            return 16
        case "iPhone 8":
            return 16
            
        case "iPhone 6 Plus":
            return 17
        case "iPhone 6s Plus":
            return 17
        case "iPhone 7 Plus":
            return 17
        case "iPhone 7s Plus":
            return 17
        case "iPhone 8 Plus":
            return 17
        case "iPhone X":
            return 16
        case "iPhone XS":
            return 16
            
        case "iPhone XS Max":
            return 17
        case "iPhone XR":
            return 17
            
        default:
            return 17
        }
    }
    
    static var residentialStatusHolidayButtonTextFont: CGFloat{
        switch UIDevice.current.name{
        case "iPod Touch":
            return 14
        case "iPhone 5S":
            return 14
        case "iPhone SE":
            return 14
            
        case "iPhone 6":
            return 16
        case "iPhone 6s":
            return 16
        case "iPhone 7":
            return 16
        case "iPhone 7s":
            return 16
        case "iPhone 8":
            return 16
            
        case "iPhone 6 Plus":
            return 17
        case "iPhone 6s Plus":
            return 17
        case "iPhone 7 Plus":
            return 17
        case "iPhone 7s Plus":
            return 17
        case "iPhone 8 Plus":
            return 17
        case "iPhone X":
            return 16
        case "iPhone XS":
            return 16
            
        case "iPhone XS Max":
            return 17
        case "iPhone XR":
            return 17
            
        default:
            return 17
        }
    }
    
    
    static var residentialStatusAustralianButtonTextFont: CGFloat{
        switch UIDevice.current.name{
        case "iPod Touch":
            return 14
        case "iPhone 5S":
            return 14
        case "iPhone SE":
            return 14
            
        case "iPhone 6":
            return 16
        case "iPhone 6s":
            return 16
        case "iPhone 7":
            return 16
        case "iPhone 7s":
            return 16
        case "iPhone 8":
            return 16
            
        case "iPhone 6 Plus":
            return 17
        case "iPhone 6s Plus":
            return 17
        case "iPhone 7 Plus":
            return 17
        case "iPhone 7s Plus":
            return 17
        case "iPhone 8 Plus":
            return 17
        case "iPhone X":
            return 16
        case "iPhone XS":
            return 16
            
        case "iPhone XS Max":
            return 17
        case "iPhone XR":
            return 17
            
        default:
            return 17
        }
    }
    
    static var payFrequencyDefaultButtonTextFont: CGFloat{
        switch UIDevice.current.name{
        case "iPod Touch":
            return 14
        case "iPhone 5S":
            return 14
        case "iPhone SE":
            return 14
            
        case "iPhone 6":
            return 16
        case "iPhone 6s":
            return 16
        case "iPhone 7":
            return 16
        case "iPhone 7s":
            return 16
        case "iPhone 8":
            return 16
            
        case "iPhone 6 Plus":
            return 17
        case "iPhone 6s Plus":
            return 17
        case "iPhone 7 Plus":
            return 17
        case "iPhone 7s Plus":
            return 17
        case "iPhone 8 Plus":
            return 17
        case "iPhone X":
            return 16
        case "iPhone XS":
            return 16
            
        case "iPhone XS Max":
            return 17
        case "iPhone XR":
            return 17
            
        default:
            return 17
        }
    }
    
    static var payFrequencyWeeklyButtonTextFont: CGFloat{
        switch UIDevice.current.name{
        case "iPod Touch":
            return 14
        case "iPhone 5S":
            return 14
        case "iPhone SE":
            return 14
            
        case "iPhone 6":
            return 16
        case "iPhone 6s":
            return 16
        case "iPhone 7":
            return 16
        case "iPhone 7s":
            return 16
        case "iPhone 8":
            return 16
            
        case "iPhone 6 Plus":
            return 17
        case "iPhone 6s Plus":
            return 17
        case "iPhone 7 Plus":
            return 17
        case "iPhone 7s Plus":
            return 17
        case "iPhone 8 Plus":
            return 17
        case "iPhone X":
            return 16
        case "iPhone XS":
            return 16
            
        case "iPhone XS Max":
            return 17
        case "iPhone XR":
            return 17
            
        default:
            return 17
        }
    }
    
    static var payFrequencyFornightlyButtonTextFont: CGFloat{
        switch UIDevice.current.name{
        case "iPod Touch":
            return 14
        case "iPhone 5S":
            return 14
        case "iPhone SE":
            return 14
            
        case "iPhone 6":
            return 16
        case "iPhone 6s":
            return 16
        case "iPhone 7":
            return 16
        case "iPhone 7s":
            return 16
        case "iPhone 8":
            return 16
            
        case "iPhone 6 Plus":
            return 17
        case "iPhone 6s Plus":
            return 17
        case "iPhone 7 Plus":
            return 17
        case "iPhone 7s Plus":
            return 17
        case "iPhone 8 Plus":
            return 17
        case "iPhone X":
            return 16
        case "iPhone XS":
            return 16
            
        case "iPhone XS Max":
            return 17
        case "iPhone XR":
            return 17
            
        default:
            return 17
        }
    }
    
    static var payFrequencyMonthlyButtonTextFont: CGFloat{
        switch UIDevice.current.name{
        case "iPod Touch":
            return 14
        case "iPhone 5S":
            return 14
        case "iPhone SE":
            return 14
            
        case "iPhone 6":
            return 16
        case "iPhone 6s":
            return 16
        case "iPhone 7":
            return 16
        case "iPhone 7s":
            return 16
        case "iPhone 8":
            return 16
            
        case "iPhone 6 Plus":
            return 17
        case "iPhone 6s Plus":
            return 17
        case "iPhone 7 Plus":
            return 17
        case "iPhone 7s Plus":
            return 17
        case "iPhone 8 Plus":
            return 17
        case "iPhone X":
            return 16
        case "iPhone XS":
            return 16
            
        case "iPhone XS Max":
            return 17
        case "iPhone XR":
            return 17
            
        default:
            return 17
        }
    }
    
    static var payFrequencyYearlyButtonTextFont: CGFloat{
        switch UIDevice.current.name{
        case "iPod Touch":
            return 14
        case "iPhone 5S":
            return 14
        case "iPhone SE":
            return 14
            
        case "iPhone 6":
            return 16
        case "iPhone 6s":
            return 16
        case "iPhone 7":
            return 16
        case "iPhone 7s":
            return 16
        case "iPhone 8":
            return 16
            
        case "iPhone 6 Plus":
            return 17
        case "iPhone 6s Plus":
            return 17
        case "iPhone 7 Plus":
            return 17
        case "iPhone 7s Plus":
            return 17
        case "iPhone 8 Plus":
            return 17
        case "iPhone X":
            return 16
        case "iPhone XS":
            return 16
            
        case "iPhone XS Max":
            return 17
        case "iPhone XR":
            return 17
            
        default:
            return 17
        }
    }
    
    
    static let TFNButtonTextFont: CGFloat = 25
    
    static let medicareLevyButtonTextFont: CGFloat = 25
    
    static let healthCoverButtonTextFont: CGFloat = 25
    
    static let calculateButtonTextFont: CGFloat = 17
}
