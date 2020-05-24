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
    var index: Int
    var titulo: String
    var data: String
    var descricao: String
    var imagem: String
    var botaoEvento = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
    var labelDescricao = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 200))
    var viewImagem = UIImageView(image: UIImage(named: "a10001"))
    var flag: Bool = true

    
    init(id: Int, index: Int, titulo: String, data: String, descricao: String, imagem: String) {
        self.id = id
        self.index = index
        self.titulo = titulo
        self.data = data
        self.descricao = descricao
        self.imagem = imagem
        
        botaoEvento.setImage(UIImage(named: String(id)), for: .normal)
        botaoEvento.setTitle("", for: .normal)
        botaoEvento.addTarget(self, action: #selector(mostrarEvento), for: .touchUpInside)
        
        labelDescricao.textColor = .gray
        labelDescricao.font = UIFont(name: "Comfortaa", size: 30)
        labelDescricao.text = descricao
        
    }
    @objc func mostrarEvento(sender: UIButton!) {
        if flag == false {
            flag = true
        }
        else {
            flag = false
        }

    }
    
}
