//
//  Tentativa.swift
//  NetPrix
//
//  Created by Usuario Local on 07/06/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import Foundation

import Alamofire
import Alamofire
class AFWrapper: NSObject {
    
    class func requestGETURL (_ strURL: String, success:@escaping ([String : Any]) -&gt; Void, failure:@escaping (Error) -&gt; Void) {
        Alamofire.request(strURL).responseJSON { (responseObject) -&gt; Void in
            print(responseObject)
            if responseObject.result.isSuccess {
                success(responseObject.result.value! as! [String : Any])
            }
            if responseObject.result.isFailure {
                let error : Error = responseObject.result.error!
                failure(error)
            }
        }
    }
}
