//
//  Evento.swift
//  MyJourney
//
//  Created by Diogo Infante on 23/05/20.
//  Copyright © 2020 TTH. All rights reserved.
//
import UIKit
import Foundation

class Evento {
    
    var id: Int
    var titulo: String
    var data: String
    var descricao: String
    var imagem: String
    var botaoEvento = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
    

    
    init(id: Int, titulo: String, data: String, descricao: String, imagem: String) {
        self.id = id
        self.titulo = titulo
        self.data = data
        self.descricao = descricao
        self.imagem = imagem
        
        botaoEvento.setImage(UIImage(named: String(id)), for: .normal)
        botaoEvento.setTitle("", for: .normal)
        botaoEvento.addTarget(self, action: #selector(mostrarEvento), for: .touchUpInside)
    }
    @objc func mostrarEvento(sender: UIButton!) {
        print("Mostrar evento \(titulo)")
    }
    
}
