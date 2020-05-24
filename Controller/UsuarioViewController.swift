//
//  UsuarioViewController.swift
//  MyJourney
//
//  Created by Diogo Infante on 23/05/20.
//  Copyright © 2020 TTH. All rights reserved.
//
import AVKit
import Foundation
import UIKit

class UsuarioViewController: UIViewController {
    
    // Definições Player
    var player: AVPlayer!
    var playerLayer: AVPlayerLayer!
    
    // MockUp de Dados
    var usuario: Usuario = DAO.object.carolinaCardoso
    
    // Elementos Storyboard
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var nomeUsuario: UILabel!
    @IBOutlet var local: UILabel!
    @IBOutlet var objetivo: UILabel!
    
    // Elementos Programáticos
    let botaoGenial = UIButton(frame: CGRect(x: 305, y: 170, width: 60, height: 60))
    
    // Inicializadores do Caminhho
    let shape = CAShapeLayer()
    let path = CGMutablePath()
    let coordenadaInicial: CGPoint = CGPoint(x: 190, y: 460)
    
    // Coordenadas Eventos
    var coordenadasEventos: [CGPoint] = [CGPoint(x: 0, y: 0),
                                         CGPoint(x: 0, y: 0),
                                         CGPoint(x: 0, y: 0),
                                         CGPoint(x: 0, y: 0),
                                         CGPoint(x: 0, y: 0)]
    
    // Estado da Conexão
    var genial: Bool = false
    
    override func viewDidLoad() {
        
        // Informacoes na tela
        nomeUsuario.text = usuario.nome
        objetivo.text = usuario.objetivo
        local.text = usuario.local
        
        // Caminho
        desenhaJornada(eventos: usuario.eventos)
        shape.path = path
        shape.lineWidth = 8.0
        shape.strokeColor = CGColor(srgbRed: 0/255.0, green: 212/255.0, blue: 205/255.0, alpha: 1)
        shape.fillColor = UIColor.systemGreen.withAlphaComponent(0.5).cgColor
        scrollView.layer.addSublayer(shape)

        
        // Botao Genial
        botaoGenial.setImage(UIImage(named: "genial"), for: .normal)
        botaoGenial.setTitle("", for: .normal)
        botaoGenial.addTarget(self, action: #selector(perfilGenial), for: .touchUpInside)
        scrollView.addSubview(botaoGenial)
        
        
        // VideoPlayer
        let url = Bundle.main.url(forResource: "001", withExtension: "mov")!
        self.player = AVPlayer(url: url)
        self.playerLayer = AVPlayerLayer(player: self.player)
        playerLayer.frame = CGRect(x: 0,  y: -95, width: 375, height: 400)
        let telaVideo = UIView(frame: CGRect(x: 0,  y: 0, width: 375, height: 400))
        self.scrollView.addSubview(telaVideo)
        telaVideo.layer.shadowColor = UIColor.black.cgColor
        telaVideo.layer.shadowOpacity = 0.5
        telaVideo.layer.shadowOffset = .zero
        telaVideo.layer.shadowRadius = 6
        telaVideo.layer.addSublayer(playerLayer)
        scrollView.bringSubviewToFront(botaoGenial)
        player.play()
        
        // Prioridade de Eventos na Tela
        for evento in usuario.eventos {
            scrollView.bringSubviewToFront(evento.botaoEvento)
        }
        // Botao Eventos
        for evento in usuario.eventos {
            if evento.flag == true {
                atualizaViewEvento(evento: evento)
            }
        }

        super.viewDidLoad()
    }

    func desenhaJornada(eventos: [Evento]) {
        path.move(to: coordenadaInicial)
        
        // Geração de Eventos em Sequencia
        for i in 0...eventos.count-1 {
            
            // Posições Relativas
            let posX: Double = 160
            let posY: Double = 460 + 200*Double(i)
            let dimensao: Double = 60
            
            // Atribuicao de Coordenada
            coordenadasEventos[i] = CGPoint(x: posX, y: posY)
            // Botao
            let botao = eventos[i].botaoEvento
            botao.frame.origin = CGPoint(x: posX, y: posY)
            
            // Ano
            var ano = UILabel(frame: CGRect(x: posX + 70, y: posY, width: dimensao, height: dimensao))
            if i%2 == 0 {
                ano = UILabel(frame: CGRect(x: posX - 40, y: posY, width: dimensao, height: dimensao))
            }
            ano.text = eventos[i].data
            ano.textColor = .gray
            ano.font = UIFont(name: "Comfortaa", size: 30)
            
            // Caminho
            path.addLine(to: CGPoint(x: 190, y: posY))
            
            // Views
            scrollView.addSubview(botao)
            scrollView.addSubview(ano)
            print(eventos[i])
        }
        path.closeSubpath()
    }
    @objc func perfilGenial(sender: UIButton!) {
        if genial == true {
            genial = false
            
        }
        else {
            genial = true
        }
        print("Button tapped")
    }
    func atualizaViewEvento(evento: Evento) {
        evento.viewImagem.frame.origin = coordenadasEventos[evento.index]
        evento.labelDescricao.frame.origin = coordenadasEventos[evento.index]
        scrollView.addSubview(evento.viewImagem)
        scrollView.addSubview(evento.labelDescricao)
        print("foi")
    }
}
