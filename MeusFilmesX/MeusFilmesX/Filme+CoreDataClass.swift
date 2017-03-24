//
//  Filme+CoreDataClass.swift
//  MeusFilmesX
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 Leonardo Cordeiro. All rights reserved.
//

import Foundation
import CoreData


public class Filme: NSManagedObject {

    convenience init() {
        
        let context = CoreDataManager.getContext()
        let entity = NSEntityDescription.entity(forEntityName: "Filme", in: context)
        
        self.init(entity: entity!, insertInto: context)
    }
}
