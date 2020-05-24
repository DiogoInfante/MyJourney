//
//  Usuario.swift
//  MyJourney
//
//  Created by Diogo Infante on 23/05/20.
//  Copyright © 2020 TTH. All rights reserved.
//

import Foundation

class Usuario {
    var id: Int
    var nome: String
    var areaDeAtuacao: String
    var local: String
    var objetivo: String
    var eventos: [Evento]
    
    
    init(id: Int, nome: String, areaDeAtuacao: String, local: String, objetivo: String, eventos: [Evento]) {
        self.id = id
        self.nome = nome
        self.areaDeAtuacao = areaDeAtuacao
        self.local = local
        self.objetivo = objetivo
        self.eventos = eventos
        
    }
}
