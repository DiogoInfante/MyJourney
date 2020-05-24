//
//  Startup.swift
//  MyJourney
//
//  Created by Diogo Infante on 24/05/20.
//  Copyright © 2020 TTH. All rights reserved.
//

class Startup {
    var id: Int
    var nome: String
    var areaDeAtuacao: String
    var local: String
    var missao: String
    var eventos: [Evento]
    
    
    init(id: Int, nome: String, areaDeAtuacao: String, local: String, missao: String, eventos: [Evento]) {
        self.id = id
        self.nome = nome
        self.areaDeAtuacao = areaDeAtuacao
        self.local = local
        self.missao = missao
        self.eventos = eventos
        
    }
}
