//
//  NetworkManager.swift
//  Cheque!
//
//  Created by Natalie Sena Kalitsi on 12/2/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import Foundation
import Alamofire

let endpoint = "" //unknown at time of submisson
class NetworkManager {
    
    static func getEvents(completion: @escaping ([Event]) -> Void) {
        Alamofire.request(endpoint, method: .get).validate().responseData {
            (response) in
            switch response.result {
            case .success(let data):
                if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments){
                    print(json)
                }
                let jsonDecoder = JSONDecoder()
                if let eventResponse = try? jsonDecoder.decode(EventResponse.self, from: data) {
                    completion(eventResponse.data.events)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

