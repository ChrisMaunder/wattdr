//
//  NameKeyReference.swift
//  WattDr
//
//  Created by Peter Lin on 7/10/17.
//  Copyright © 2017 org.woolfel. All rights reserved.
//

import UIKit
import RealmSwift

public class NameKeyReference: Object {
    dynamic var id:String?
    
    func toParams() -> Dictionary<String, AnyObject> {
        var params = Dictionary<String, AnyObject>();
        params["id"] = self.id as AnyObject;
        return params;
    }
}
