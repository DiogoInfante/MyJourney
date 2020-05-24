
//  DAO.swift
//  MyJourney
//
//  Created by Diogo Infante on 23/05/20.
//  Copyright © 2020 TTH. All rights reserved.
//

import Foundation

final class DAO {
    static var object = DAO()
    
    var carolinaCardoso = Usuario(id: 001,
                                  nome: "Carolina Cardoso",
                                  areaDeAtuacao: "Engenharia de Produção PUC-Rio",
                                  local: "Rio de Janeiro - RJ",
                                  objetivo: "Em busca do primeiro estágio",
                                  eventos: [
                                    
                                    Evento(id: 10001,
                                           index: 0,
                                           titulo: "Reconhecimento Acadêmico",
                                           data: "19",
                                           descricao: " Através da redução do uso de plástico na PUC-Rio, conseguimos impactar a vida de muitas pessoas.",
                                           imagem: "a10001"),
                                    Evento(id: 10002,
                                           index: 1,
                                           titulo: "Intercâmbio na Califórnia",
                                           data: "18",
                                           descricao: "Primeira experência de trabalho internacional. Tive a oportunidade de connhecer novas culturas, aprimorar o idioma e viver momentos inesquecíveis.",
                                           imagem: "a10002"),
                                    
                                    Evento(id: 10003,
                                           index: 2,
                                           titulo: "Ingresso na Univerisadade",
                                           data: "17",
                                           descricao: "Primeiro passo de uma jornada de cinco anos para me tornar engenheira.",
                                           imagem: "a10003"),
                                    
                                    Evento(id: 10004,
                                           index: 3,
                                           titulo: "Formatura do Colégio PH",
                                           data: "16",
                                           descricao: "Concluída a primeira etapa da minha vida acadêmica.",
                                           imagem: "a10004"),
                                    
                                    Evento(id: 10005,
                                           index: 4,
                                           titulo: "Campeã Estadual de Nado Sincornizado",
                                           data: "15",
                                           descricao: "O esporte sempre foi fundamental na minha vida, através dele, tive a oportunidade de desenvolver resiliência, foco e disciplina. O título estadual condecorou meu esforço e dedicação.",
                                           imagem: "a10005")])
    
    var myJourney = Startup(id: 2020001,
                            nome: "My Journey",
                            areaDeAtuacao: "Empregabilidade",
                            local: "Rio de Janeiro",
                            missao: "Humanizar  o processo de recrutamento através de storytelling e narrativas!",
                            eventos: [
                                Evento(id: 202010001,
                                       index: 0,
                                       titulo: "Idealização",
                                       data: "20",
                                       descricao: "Criação",
                                       imagem: "a202010001"),
                                
                                Evento(id: 202010001,
                                       index: 1,
                                       titulo: "Idealização",
                                       data: "19",
                                       descricao: "Criação",
                                       imagem: "a202010001"),
                                
                                Evento(id: 202010001,
                                       index: 2,
                                       titulo: "Idealização",
                                       data: "18",
                                       descricao: "Criação",
                                       imagem: "a202010001")])

    private init() {
        
    }
    
}
