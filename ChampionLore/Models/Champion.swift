//
//  Champion.swift
//  ChampionLore
//
//  Created by David Mclean on 5/2/23.
//

import Foundation

struct Champion: Identifiable, Decodable, Hashable {
    let id: Int
    let name: String
    let aka: String
    let slogan: String
    let intro: String
    let bio : [String]
    let story: [String]
}

//Json Easy Copypaste key
//"id": ,
//"name": "",
//"aka": "",
//"slogan": "",
//"location": "",
//"intro": "",
//"bio": [],
//"story": []
