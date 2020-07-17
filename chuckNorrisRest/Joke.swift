//
//  Joke.swift
//  chuckNorrisRest
//
//  Created by Pietro Pugliesi on 17/07/20.
//  Copyright © 2020 Pietro Pugliesi. All rights reserved.
//

import Foundation

struct Main:Decodable {
	let value:Joke
}

struct Joke:Decodable {
	var id:Int?
	var joke:String?
	
	//retornar em caso de erro
	static var placeholder:Joke{
		return Joke(id: nil, joke: nil)
	}
}
