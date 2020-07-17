//
//  API.swift
//  chuckNorrisRest
//
//  Created by Pietro Pugliesi on 17/07/20.
//  Copyright © 2020 Pietro Pugliesi. All rights reserved.
//

import Foundation
import Combine

class API{
    var cancellable:AnyCancellable?
    
    func getURL(urlString:String){
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        
        cancellable = URLSession.shared
            .dataTaskPublisher(for: request) //Publisher<(Data, URLResponse), Error)>
            //.map(\.data)//Publisher<Data>
            //.decode(type: Main.self, decoder: JSONDecoder())
            //.receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
            .sink(receiveCompletion: {completionError in
                switch completionError{
                case .failure(let error):
                    print("ERRO->",error)
                case .finished:
                    break
                }
            })
            {(joke) in
                print(joke)
            }
    }
}
