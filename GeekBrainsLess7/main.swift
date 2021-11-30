//
//  main.swift
//  GeekBrainsLess7
//
//  Created by Игорь Карпенко on 30.11.2021.
//

import Foundation

enum ShotGunError {
    case noBullets(buletsneed: Int)
    case noFreeGun
    case noGun
}

struct Gun {
    var bullets: Int
    var gun: Int
}

class TirGuns {
    var inventory = ["AWP": Gun(bullets: 10, gun: 3),
                     "Glock": Gun(bullets: 20, gun: 7),
                     "AKM74": Gun(bullets: 40, gun: 17),
                     "AK47": Gun(bullets: 30, gun: 10)
    ]

var gunBullets = 0

func errors(gunName: String) throws {
    guard let guns = inventory[nane] else {
        throw ShotGunError.noGun
    }
    
    guard guns.gun > 0 else {
        throw ShotGunError.noGun
    }
    
    guard guns.bullets <= gunBullets else {
        throw ShotGunError.noBullets(buletsneed: guns.bullets - gunBullets)
    }
    
    gunBullets -= guns.bullets
    
    var someGuns = guns
    someGuns.bullets -= 1
    inventory[name] = someGuns
    
    print("Взял оружие \(name)")
    
}
}

let favoriteGun = [
    "Alex": "AWP",
    "Nick": "Glock-18",
    "Piter": "AKM74"
]

func voteGuinter(player: String, Guns: tirGuns) throws {
    let playerName = favoriteGun[player] ?? "AK47"
    try Guns.errors(gunName: playerName)
}

var plsyer = TirGuns()
plsyer.gunBullets = 11

do {
    try voteGuinter(player: "Alex", Guns: plsyer)
} catch ShotGunError.noFreeGun {
    print("Нет свободного оружия")
} catch ShotGunError.noGun {
    print("В тире нет такого оружия")
} catch ShotGunError.noBullets(let bulletsNeed) {
    print("Недостаточно патронов, нужно ещё \(bulletsNeed) патроновю")
}


