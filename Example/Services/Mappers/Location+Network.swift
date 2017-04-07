//
//  Location+Network.swift
//  Example
//
//  Created by Joel on 06/04/2017.
//  Copyright © 2017 HELM S.C.P. All rights reserved.
//

import Foundation
import SwiftyJSON

extension Location: ResponseObjectSerializable {

    init?(fromJSON json: JSON) {
        
        guard let street = json["street"].string
            ,let city = json["city"].string
            ,let state = json["state"].string else {
        
                return nil
        }
        
        // Postcode can be an integero or a string,
        
        self.street = street
        self.city = city
        self.state = state
    }
}
