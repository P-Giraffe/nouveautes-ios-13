//
//  TVCharacter.swift
//  SwiftUI_composition
//
//  Created by Maxime Britto on 22/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import Foundation

let demoHostList:[Host] = [
    Host(name:"Alain Chabat", imageName:"achabat", bio:"Alain Chabat est un acteur, réalisateur, scénariste, humoriste, producteur de cinéma et animateur de télévision français, né le 24 novembre 1958 à Oran (Algérie)."),
    Host(name:"Laurent Baffie", imageName:"lbaffie", bio:"Laurent Baffie, né le 18 avril 1958 à Montreuil (Seine-Saint-Denis), est un humoriste, animateur de radio et de télévision, auteur et metteur en scène de théâtre et écrivain français."),
    Host(name:"Marina Foïs", imageName:"mfois", bio:"Marina Foïs, née le 21 janvier 1970 à Boulogne-Billancourt, est une actrice française. Elle est révélée durant les années 1990 en tant que membre de la troupe les Robins des Bois, qui se produit sur scène et sur les chaînes Comédie ! et Canal+."),
    Host(name:"Gérard Darmon", imageName:"gdarmon", bio:"Gérard Darmon, né le 29 février 1948 à Paris, est un acteur et chanteur franco-marocain."),
    Host(name:"Jérôme Commandeur", imageName:"jcommandeur", bio:"Jérôme Commandeur, né le 12 avril 1976 à Argenteuil, est un humoriste et acteur français. Après s'être fait connaître à la fin des années 1990 en participant à l'émission Graines de star, il anime diverses émissions de radio et de télévision et se produit également en one-man-show."),
    Host(name:"Maurice Berthélemy", imageName:"mbarthelemy", bio:"Maurice-Domingue Barthélemy dit Maurice Barthélémy est un acteur, réalisateur et scénariste français, né le 23 mai 1969 à La Paz, en Bolivie."),
    Host(name:"Dominique Farrugia", imageName:"dfarrugia", bio:"Dominique Farrugia, né le 2 septembre 1962 à Vichy dans le département de l'Allier, est un réalisateur, acteur et producteur de cinéma français, devenu producteur dirigeant de la chaîne de télévision Comédie !. Il a fait partie du groupe d'humoristes Les Nuls et popularisa la troupe des Robins des Bois."),
]

struct Host {
    var name:String
    let imageName:String
    let bio:String
}
