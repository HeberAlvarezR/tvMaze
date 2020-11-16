//
//  TVMazeEntity.swift
//  TVMaze
//
//  Created by Heber on 14/11/20.
//

import Foundation
// Las entidades pueden ser clases pero aquí no queremos hacer una referencia. Usaremos mejor un strcut
//struct TVMaze: Codable {
//    // Las propiedades que vamos a definir aquí (ID; nombre; Imagen)
//    var id: Int
//    var name: String
//    var weight: Int
//    var sprites: Sprite
//
//    struct Sprite: Codable { // porque la Api, tiene un diccionario dentro de un diccionario.
//        var front_default: String
//    }
//}


import Foundation

// MARK: - TVMazeElement
class TVMazeElement: Codable {
    var id: Int?
    var name: String?
    var image: Image?
//    let links: Links?

//    enum CodingKeys: String, CodingKey {
//        case id, url, name, season, number, type, airdate, airtime, airstamp, runtime, image, summary
//        case links = "_links"
    }

//    init(id: Int?, url: String?, name: String?, season: Int?, number: Int?, type: TypeEnum?, airdate: String?, airtime: Airtime?, airstamp: Date?, runtime: Int?, image: Image?, summary: String?, links: Links?) {
//        self.id = id
//        self.url = url
//        self.name = name
//        self.season = season
//        self.number = number
//        self.type = type
//        self.airdate = airdate
//        self.airtime = airtime
//        self.airstamp = airstamp
//        self.runtime = runtime
//        self.image = image
//        self.summary = summary
//        self.links = links
//    }
//}
//
//enum Airtime: String, Codable {
//    case the2100 = "21:00"
//    case the2200 = "22:00"
//}
//
// MARK: - Image
class Image: Codable {
    let medium, original: String?

    init(medium: String?, original: String?) {
        self.medium = medium
        self.original = original
    }
}
//
//// MARK: - Links
//class Links: Codable {
//    let linksSelf: SelfClass?
//
//    enum CodingKeys: String, CodingKey {
//        case linksSelf = "self"
//    }
//
//    init(linksSelf: SelfClass?) {
//        self.linksSelf = linksSelf
//    }
//}
//
//// MARK: - SelfClass
//class SelfClass: Codable {
//    let href: String?
//
//    init(href: String?) {
//        self.href = href
//    }
//}
//
//enum TypeEnum: String, Codable {
//    case regular = "regular"
//}
//
typealias TVMaze = [TVMazeElement]
