//
//  Rikishi.swift
//  dohyo
//
//  Created by marc on 26/1/2025.
//

struct Rikishi {
    let nameRomaji: String
    let nameKanji: String
    let nameHiragana: String
    let country: String
    let flavourText: String
}

extension Rikishi: CustomStringConvertible {
    var description: String {
        return "\(nameRomaji) (\(nameHiragana)): \(flavourText) "
    }
}

let sampleRikishi1 = Rikishi(nameRomaji: "Hakuhō",
                             nameKanji: "白鵬",
                             nameHiragana: "はくほう",
                             country: "Japan",
                             flavourText:
"""
(Haku): Means “white.” (Hō): Refers to a legendary giant bird, often symbolizing grandeur or strength.
""")
