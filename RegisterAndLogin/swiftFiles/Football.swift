//
//  Music.swift
//  RegisterAndLogin
//
//  Created by owise zoubi on 10/06/2019.
//  Copyright © 2019 owise zoubi. All rights reserved.
//

import Foundation



class Football : NSObject {
    let SERVICE_NAME = "Football"
    
    let backendless = Backendless.sharedInstance()!
    
    static let sharedInstance : Football = {
        let instance = Football()
        return instance
    }()
    
    // sync
    
    func findCompetitionNameById(id: String) -> String {
        
        return backendless.customService.invoke(SERVICE_NAME, method:"findCompetitionNameById", args:[id]) as! String
    }
    
    func getAllCompetitions() -> Any {
        
        return backendless.customService.invoke(SERVICE_NAME, method:"getAllCompetitions", args:[]) as Any
    }
    
    func getCompetitionStandingbyId(competitionID: String) -> Any {
        
        return backendless.customService.invoke(SERVICE_NAME, method:"getCompetitionStandingbyId", args:[competitionID]) as Any
    }
    
    // async
    
    func findCompetitionNameById(id: String, response responseBlock:@escaping(Any?)->(), error errorBlock:@escaping(Fault?)->()) -> Void {
        backendless.customService.invoke(SERVICE_NAME, method:"findCompetitionNameById", args:[id], response:responseBlock, error:errorBlock)
    }
    
    func getAllCompetitions(response responseBlock:@escaping(Any?)->(), error errorBlock:@escaping(Fault?)->()) -> Void {
        backendless.customService.invoke(SERVICE_NAME, method:"getAllCompetitions", args:[], response:responseBlock, error:errorBlock)
    }
    
    func getCompetitionStandingbyId(competitionID: String, response responseBlock:@escaping(Any?)->(), error errorBlock:@escaping(Fault?)->()) -> Void {
        backendless.customService.invoke(SERVICE_NAME, method:"getCompetitionStandingbyId", args:[competitionID], response:responseBlock, error:errorBlock)
    }
    
}

