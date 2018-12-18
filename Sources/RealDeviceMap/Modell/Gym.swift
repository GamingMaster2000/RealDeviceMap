//
//  Gym.swift
//  RealDeviceMap
//
//  Created by Florian Kostenzer on 18.09.18.
//

import Foundation
import PerfectLib
import PerfectMySQL
import POGOProtos

class Gym: JSONConvertibleObject, WebHookEvent, Hashable {
    
    class ParsingError: Error {}
    
    override func getJSONValues() -> [String : Any] {
        return [
            "id":id,
            "lat":lat,
            "lon":lon,
            "name":name as Any,
            "url":url as Any,
            "guard_pokemon_id": guardPokemonId as Any,
            "enabled": enabled as Any,
            "last_modified_timestamp": lastModifiedTimestamp as Any,
            "team_id": teamId as Any,
            "raid_end_timestamp": raidEndTimestamp as Any,
            "raid_spawn_timestamp": raidSpawnTimestamp as Any,
            "raid_battle_timestamp": raidBattleTimestamp as Any,
            "raid_pokemon_id": raidPokemonId as Any,
            "raid_level": raidLevel as Any,
            "availble_slots": availbleSlots as Any,
            "updated": updated ?? 1,
            "ex_raid_eligible": exRaidEligible as Any,
            "in_battle": inBattle as Any,
            "raid_pokemon_form": raidPokemonForm as Any,
            "raid_pokemon_move_1": raidPokemonMove1 as Any,
            "raid_pokemon_move_2": raidPokemonMove2 as Any,
            "raid_pokemon_cp": raidPokemonCp as Any,
            "raid_is_exclusive": raidIsExclusive as Any
        ]
    }
    
    func getWebhookValues(type: String) -> [String : Any] {
        
        let realType: String
        let message: [String: Any]
        if type == "gym" {
            realType = "gym"
            message = [
                "gym_id": id,
                "gym_name":name ?? "Unknown",
                "latitude":lat,
                "longitude":lon,
                "url":url ?? "",
                "enabled": enabled ?? true,
                "team_id": teamId ?? 0,
                "last_modified": lastModifiedTimestamp ?? 0,
                "guard_pokemon_id": guardPokemonId ?? 0,
                "slots_available": availbleSlots ?? 6,
                "raid_active_until": raidEndTimestamp ?? 0,
                "sponsor_id": exRaidEligible ?? 0
            ]
        } else if type == "gym-info" {
            realType = "gym_details"
            message = [
                "id": id,
                "name":name ?? "Unknown",
                "url":url ?? "",
                "latitude":lat,
                "longitude":lon,
                "team": teamId ?? 0,
                "slots_available": availbleSlots ?? 6,
                "sponsor_id": exRaidEligible ?? 0,
                "in_battle": inBattle ?? false,
            ]
        } else if type == "egg" || type == "raid" {
            realType = "raid"
            message = [
                "gym_id": id,
                "gym_name":name ?? "Unknown",
                "latitude":lat,
                "longitude":lon,
                "team_id": teamId ?? 0,
                "spawn": raidSpawnTimestamp ?? 0,
                "start": raidBattleTimestamp ?? 0,
                "end": raidEndTimestamp ?? 0,
                "level": raidLevel ?? 0,
                "pokemon_id": raidPokemonId ?? 0,
                "cp": raidPokemonCp ?? 0,
                "form": raidPokemonForm ?? 0,
                "move_1": raidPokemonMove1 ?? 0,
                "move_2": raidPokemonMove2 ?? 0,
                "sponsor_id": exRaidEligible ?? 0,
                "is_exclusive": raidIsExclusive ?? false,
            ]
        } else {
            realType = "unkown"
            message = [String: Any]()
        }
        return [
            "type": realType,
            "message": message
        ]
    }
    
    public var hashValue: Int {
        return id.hashValue
    }
    
    var id: String
    var lat: Double
    var lon: Double
    
    var name: String?
    var url: String?
    var guardPokemonId: UInt16?
    var enabled: Bool?
    var lastModifiedTimestamp: UInt32?
    var teamId: UInt8?
    var raidEndTimestamp: UInt32?
    var raidSpawnTimestamp: UInt32?
    var raidBattleTimestamp: UInt32?
    var raidPokemonId: UInt16?
    var raidLevel: UInt8?
    var raidPokemonMove1: UInt16?
    var raidPokemonMove2: UInt16?
    var raidPokemonForm: UInt8?
    var raidPokemonCp: UInt16?
    var availbleSlots: UInt16?
    var updated: UInt32?
    var exRaidEligible: Bool?
    var inBattle: Bool?
    var raidIsExclusive: Bool?
    var cellId: UInt64?
    
    init(id: String, lat: Double, lon: Double, name: String?, url: String?, guardPokemonId: UInt16?, enabled: Bool?, lastModifiedTimestamp: UInt32?, teamId: UInt8?, raidEndTimestamp: UInt32?, raidSpawnTimestamp: UInt32?, raidBattleTimestamp: UInt32?, raidPokemonId: UInt16?, raidLevel: UInt8?, availbleSlots:UInt16?, updated:UInt32?, exRaidEligible: Bool?, inBattle: Bool?, raidPokemonMove1: UInt16?, raidPokemonMove2: UInt16?, raidPokemonForm: UInt8?, raidPokemonCp: UInt16?, raidIsExclusive: Bool?, cellId: UInt64?) {
        self.id = id
        self.lat = lat
        self.lon = lon
        self.name = name
        self.url = url
        self.guardPokemonId =  guardPokemonId
        self.enabled = enabled
        self.lastModifiedTimestamp = lastModifiedTimestamp
        self.teamId = teamId
        self.raidEndTimestamp = raidEndTimestamp
        self.raidSpawnTimestamp = raidSpawnTimestamp
        self.raidBattleTimestamp = raidBattleTimestamp
        self.raidPokemonId = raidPokemonId
        self.raidLevel = raidLevel
        self.availbleSlots = availbleSlots
        self.updated = updated
        self.exRaidEligible = exRaidEligible
        self.inBattle = inBattle
        self.raidPokemonMove1 = raidPokemonMove1
        self.raidPokemonMove2 = raidPokemonMove2
        self.raidPokemonForm = raidPokemonForm
        self.raidPokemonCp = raidPokemonCp
        self.raidIsExclusive = raidIsExclusive
        self.cellId = cellId
    }
    
    init(fortData: POGOProtos_Map_Fort_FortData, cellId: UInt64) {
        
        self.id = fortData.id
        self.lat = fortData.latitude
        self.lon = fortData.longitude
        self.enabled = fortData.enabled
        self.guardPokemonId = fortData.guardPokemonID.rawValue.toUInt16()
        self.teamId = fortData.ownedByTeam.rawValue.toUInt8()
        self.availbleSlots = UInt16(fortData.gymDisplay.slotsAvailable)
        self.lastModifiedTimestamp = UInt32(fortData.lastModifiedTimestampMs / 1000)
        self.exRaidEligible = fortData.isExRaidEligible
        self.inBattle = fortData.isInBattle
        if fortData.imageURL != "" {
            self.url = fortData.imageURL
        }
        
        if fortData.hasRaidInfo {
            self.raidEndTimestamp = UInt32(fortData.raidInfo.raidEndMs / 1000)
            self.raidSpawnTimestamp = UInt32(fortData.raidInfo.raidSpawnMs / 1000)
            self.raidBattleTimestamp = UInt32(fortData.raidInfo.raidBattleMs / 1000)
            self.raidLevel = UInt8(fortData.raidInfo.raidLevel.rawValue)
            self.raidPokemonId = UInt16(fortData.raidInfo.raidPokemon.pokemonID.rawValue)
            self.raidPokemonMove1 = UInt16(fortData.raidInfo.raidPokemon.move1.rawValue)
            self.raidPokemonMove2 = UInt16(fortData.raidInfo.raidPokemon.move2.rawValue)
            self.raidPokemonForm = UInt8(fortData.raidInfo.raidPokemon.pokemonDisplay.form.rawValue)
            self.raidPokemonCp = UInt16(fortData.raidInfo.raidPokemon.cp)
            self.raidIsExclusive = fortData.raidInfo.isExclusive
        }
        
        self.cellId = cellId
        
    }
    
    public func addDetails(fortData: POGOProtos_Networking_Responses_FortDetailsResponse) {
        
        self.id = fortData.fortID
        self.lat = fortData.latitude
        self.lon = fortData.longitude
        if !fortData.imageUrls.isEmpty {
            self.url = fortData.imageUrls[0]
        }
        self.name = fortData.name
        self.teamId = fortData.teamColor.rawValue.toUInt8()
        
    }
    
    public func save(mysql: MySQL?=nil) throws {
        
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[GYM] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        let oldGym: Gym?
        do {
            oldGym = try Gym.getWithId(mysql: mysql, id: id)
        } catch {
            oldGym = nil
        }
        let mysqlStmt = MySQLStmt(mysql)
        
        updated = UInt32(Date().timeIntervalSince1970)
        
        if oldGym == nil {
            WebHookController.global.addGymEvent(gym: self)
            WebHookController.global.addGymInfoEvent(gym: self)
            let raidBattleTime = Date(timeIntervalSince1970: Double(raidBattleTimestamp ?? 0))
            let raidEndTime = Date(timeIntervalSince1970: Double(raidEndTimestamp ?? 0))
            let now = Date()
            
            
            if raidBattleTime > now && self.raidLevel ?? 0 != 0 {
                WebHookController.global.addEggEvent(gym: self)
            } else if raidEndTime > now && self.raidPokemonId ?? 0 != 0 {
                WebHookController.global.addRaidEvent(gym: self)
            }

            
            let sql = """
                INSERT INTO gym (id, lat, lon, name, url, guarding_pokemon_id, last_modified_timestamp, team_id, raid_end_timestamp, raid_spawn_timestamp, raid_battle_timestamp, raid_pokemon_id, enabled, availble_slots, raid_level, ex_raid_eligible, in_battle, raid_pokemon_move_1, raid_pokemon_move_2, raid_pokemon_form, raid_pokemon_cp, raid_is_exclusive, cell_id, updated)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, UNIX_TIMESTAMP())
            """
            _ = mysqlStmt.prepare(statement: sql)
            mysqlStmt.bindParam(id)
        } else {
            if oldGym!.cellId != nil && self.cellId == nil {
                self.cellId = oldGym!.cellId
            }
            if oldGym!.name != nil && self.name == nil {
                self.name = oldGym!.name
            }
            if oldGym!.url != nil && self.url == nil {
                self.url = oldGym!.url
            }
            if oldGym!.raidIsExclusive != nil && self.raidIsExclusive == nil {
                self.raidIsExclusive = oldGym!.raidIsExclusive
            }

            if oldGym!.availbleSlots != self.availbleSlots || oldGym!.teamId != self.teamId || oldGym!.inBattle != self.inBattle {
                WebHookController.global.addGymInfoEvent(gym: self)
            }
            
            if self.raidSpawnTimestamp != nil && raidSpawnTimestamp != 0 &&
                (
                    oldGym!.raidLevel != self.raidLevel ||
                    oldGym!.raidPokemonId != self.raidPokemonId ||
                    oldGym!.raidSpawnTimestamp != self.raidSpawnTimestamp
                ) {
                
                let raidBattleTime = Date(timeIntervalSince1970: Double(raidBattleTimestamp ?? 0))
                let raidEndTime = Date(timeIntervalSince1970: Double(raidEndTimestamp ?? 0))
                let now = Date()
                
                
                if raidBattleTime > now && self.raidLevel ?? 0 != 0 {
                    WebHookController.global.addEggEvent(gym: self)
                } else if raidEndTime > now && self.raidPokemonId ?? 0 != 0 {
                    WebHookController.global.addRaidEvent(gym: self)
                }
                
            }
            
            let sql = """
                UPDATE gym
                SET lat = ?, lon = ? , name = ? , url = ? , guarding_pokemon_id = ? , last_modified_timestamp = ? , team_id = ? , raid_end_timestamp = ? , raid_spawn_timestamp = ? , raid_battle_timestamp = ? , raid_pokemon_id = ? , enabled = ? , availble_slots = ? , updated = UNIX_TIMESTAMP(), raid_level = ?, ex_raid_eligible = ?, in_battle = ?, raid_pokemon_move_1 = ?, raid_pokemon_move_2 = ?, raid_pokemon_form = ?, raid_pokemon_cp = ?, raid_is_exclusive = ?, cell_id = ?
                WHERE id = ?
            """
            _ = mysqlStmt.prepare(statement: sql)
        }
        
        mysqlStmt.bindParam(lat)
        mysqlStmt.bindParam(lon)
        mysqlStmt.bindParam(name)
        mysqlStmt.bindParam(url)
        mysqlStmt.bindParam(guardPokemonId)
        mysqlStmt.bindParam(lastModifiedTimestamp)
        mysqlStmt.bindParam(teamId)
        mysqlStmt.bindParam(raidEndTimestamp)
        mysqlStmt.bindParam(raidSpawnTimestamp)
        mysqlStmt.bindParam(raidBattleTimestamp)
        mysqlStmt.bindParam(raidPokemonId)
        mysqlStmt.bindParam(enabled)
        mysqlStmt.bindParam(availbleSlots)
        mysqlStmt.bindParam(raidLevel)
        mysqlStmt.bindParam(exRaidEligible)
        mysqlStmt.bindParam(inBattle)
        mysqlStmt.bindParam(raidPokemonMove1)
        mysqlStmt.bindParam(raidPokemonMove2)
        mysqlStmt.bindParam(raidPokemonForm)
        mysqlStmt.bindParam(raidPokemonCp)
        mysqlStmt.bindParam(raidIsExclusive)
        mysqlStmt.bindParam(cellId)
        
        if oldGym != nil {
            mysqlStmt.bindParam(id)
        }
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[GYM] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
    }
    
    public static func getAll(mysql: MySQL?=nil, minLat: Double, maxLat: Double, minLon: Double, maxLon: Double, updated: UInt32, raidsOnly: Bool, showRaids: Bool) throws -> [Gym] {
        
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[GYM] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        var sql = """
            SELECT id, lat, lon, name, url, guarding_pokemon_id, last_modified_timestamp, team_id, raid_end_timestamp, raid_spawn_timestamp, raid_battle_timestamp, raid_pokemon_id, enabled, availble_slots, updated, raid_level, ex_raid_eligible, in_battle, raid_pokemon_move_1, raid_pokemon_move_2, raid_pokemon_form, raid_pokemon_cp, raid_is_exclusive, cell_id
            FROM gym
            WHERE lat >= ? AND lat <= ? AND lon >= ? AND lon <= ? AND updated > ?
        """
        if raidsOnly {
            sql += " AND raid_end_timestamp >= UNIX_TIMESTAMP()"
        }
        
        let mysqlStmt = MySQLStmt(mysql)
        _ = mysqlStmt.prepare(statement: sql)
        mysqlStmt.bindParam(minLat)
        mysqlStmt.bindParam(maxLat)
        mysqlStmt.bindParam(minLon)
        mysqlStmt.bindParam(maxLon)
        mysqlStmt.bindParam(updated)

        guard mysqlStmt.execute() else {
            Log.error(message: "[GYM] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
        let results = mysqlStmt.results()
        
        var gyms = [Gym]()
        while let result = results.next() {
            let id = result[0] as! String
            let lat = result[1] as! Double
            let lon = result[2] as! Double
            let name = result[3] as? String
            let url = result[4] as? String
            let guardPokemonId = result[5] as? UInt16
            let lastModifiedTimestamp = result[6] as? UInt32
            let teamId = result[7] as? UInt8
            
            let raidEndTimestamp: UInt32?
            let raidSpawnTimestamp: UInt32?
            let raidBattleTimestamp: UInt32?
            let raidPokemonId: UInt16?
            if showRaids {
                raidEndTimestamp = result[8] as? UInt32
                raidSpawnTimestamp = result[9] as? UInt32
                raidBattleTimestamp = result[10] as? UInt32
                raidPokemonId = result[11] as? UInt16
            } else {
                raidEndTimestamp = nil
                raidSpawnTimestamp = nil
                raidBattleTimestamp = nil
                raidPokemonId = nil
            }
            
            let enabled = (result[12] as? UInt8)?.toBool()
            let availbleSlots = result[13] as? UInt16
            let updated = result[14] as! UInt32
            let raidLevel = result[15] as? UInt8
            let exRaidEligible = (result[16] as? UInt8)?.toBool()
            let inBattle = (result[17] as? UInt8)?.toBool()
            let raidPokemonMove1 = result[18] as? UInt16
            let raidPokemonMove2 = result[19] as? UInt16
            let raidPokemonForm = result[20] as? UInt8
            let raidPokemonCp = result[21] as? UInt16
            let raidIsExclusive = (result[22] as? UInt8)?.toBool()
            let cellId = result[23] as? UInt64
            
            gyms.append(Gym(id: id, lat: lat, lon: lon, name: name, url: url, guardPokemonId: guardPokemonId, enabled: enabled, lastModifiedTimestamp: lastModifiedTimestamp, teamId: teamId, raidEndTimestamp: raidEndTimestamp, raidSpawnTimestamp: raidSpawnTimestamp, raidBattleTimestamp: raidBattleTimestamp, raidPokemonId: raidPokemonId, raidLevel: raidLevel, availbleSlots: availbleSlots, updated: updated, exRaidEligible: exRaidEligible, inBattle: inBattle, raidPokemonMove1: raidPokemonMove1, raidPokemonMove2: raidPokemonMove2, raidPokemonForm: raidPokemonForm, raidPokemonCp: raidPokemonCp, raidIsExclusive: raidIsExclusive, cellId: cellId))
        }
        return gyms
        
    }

    public static func getWithId(mysql: MySQL?=nil, id: String) throws -> Gym? {
        
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[GYM] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        let sql = """
            SELECT id, lat, lon, name, url, guarding_pokemon_id, last_modified_timestamp, team_id, raid_end_timestamp, raid_spawn_timestamp, raid_battle_timestamp, raid_pokemon_id, enabled, availble_slots, updated, raid_level, ex_raid_eligible, in_battle, raid_pokemon_move_1, raid_pokemon_move_2, raid_pokemon_form, raid_pokemon_cp, raid_is_exclusive, cell_id
            FROM gym
            WHERE id = ?
        """
        
        let mysqlStmt = MySQLStmt(mysql)
        _ = mysqlStmt.prepare(statement: sql)
        mysqlStmt.bindParam(id)
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[GYM] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
        let results = mysqlStmt.results()
        if results.numRows == 0 {
            return nil
        }
        
        let result = results.next()!
        let id = result[0] as! String
        let lat = result[1] as! Double
        let lon = result[2] as! Double
        let name = result[3] as? String
        let url = result[4] as? String
        let guardPokemonId = result[5] as? UInt16
        let lastModifiedTimestamp = result[6] as? UInt32
        let teamId = result[7] as? UInt8
        let raidEndTimestamp = result[8] as? UInt32
        let raidSpawnTimestamp = result[9] as? UInt32
        let raidBattleTimestamp = result[10] as? UInt32
        let raidPokemonId = result[11] as? UInt16
        let enabled = (result[12] as? UInt8)?.toBool()
        let availbleSlots = result[13] as? UInt16
        let updated = result[14] as! UInt32
        let raidLevel = result[15] as? UInt8
        let exRaidEligible = (result[16] as? UInt8)?.toBool()
        let inBattle = (result[17] as? UInt8)?.toBool()
        let raidPokemonMove1 = result[18] as? UInt16
        let raidPokemonMove2 = result[19] as? UInt16
        let raidPokemonForm = result[20] as? UInt8
        let raidPokemonCp = result[21] as? UInt16
        let raidIsExclusive = (result[22] as? UInt8)?.toBool()
        let cellId = result[23] as? UInt64
        
        return Gym(id: id, lat: lat, lon: lon, name: name, url: url, guardPokemonId: guardPokemonId, enabled: enabled, lastModifiedTimestamp: lastModifiedTimestamp, teamId: teamId, raidEndTimestamp: raidEndTimestamp, raidSpawnTimestamp: raidSpawnTimestamp, raidBattleTimestamp: raidBattleTimestamp, raidPokemonId: raidPokemonId, raidLevel: raidLevel, availbleSlots: availbleSlots, updated: updated, exRaidEligible: exRaidEligible, inBattle: inBattle, raidPokemonMove1: raidPokemonMove1, raidPokemonMove2: raidPokemonMove2, raidPokemonForm: raidPokemonForm, raidPokemonCp: raidPokemonCp, raidIsExclusive: raidIsExclusive, cellId: cellId)
    }
    
    public static func getWithIDs(mysql: MySQL?=nil, ids: [String]) throws -> [Gym] {
        
        if ids.count > 60000 {
            var result = [Gym]()
            for i in 0..<(Int(ceil(Double(ids.count)/60000.0))) {
                let start = 60000 * i
                let end = min(60000 * (i+1) - 1, ids.count - 1)
                let splice = Array(ids[start...end])
                if let spliceResult = try? getWithIDs(mysql: mysql, ids: splice) {
                    result += spliceResult
                }
            }
            return result
        }
        
        if ids.count == 0 {
            return [Gym]()
        }
        
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[GYM] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        var inSQL = "("
        for _ in 1..<ids.count {
            inSQL += "?, "
        }
        inSQL += "?)"
        
        let sql = """
        SELECT id, lat, lon, name, url, guarding_pokemon_id, last_modified_timestamp, team_id, raid_end_timestamp, raid_spawn_timestamp, raid_battle_timestamp, raid_pokemon_id, enabled, availble_slots, updated, raid_level, ex_raid_eligible, in_battle, raid_pokemon_move_1, raid_pokemon_move_2, raid_pokemon_form, raid_pokemon_cp, raid_is_exclusive, cell_id
        FROM gym
        WHERE id IN \(inSQL)
        """
        
        let mysqlStmt = MySQLStmt(mysql)
        _ = mysqlStmt.prepare(statement: sql)
        for id in ids {
            mysqlStmt.bindParam(id)
        }
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[GYM] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
        let results = mysqlStmt.results()
        
        var gyms = [Gym]()
        while let result = results.next() {
            let id = result[0] as! String
            let lat = result[1] as! Double
            let lon = result[2] as! Double
            let name = result[3] as? String
            let url = result[4] as? String
            let guardPokemonId = result[5] as? UInt16
            let lastModifiedTimestamp = result[6] as? UInt32
            let teamId = result[7] as? UInt8
            let raidEndTimestamp = result[8] as? UInt32
            let raidSpawnTimestamp = result[9] as? UInt32
            let raidBattleTimestamp = result[10] as? UInt32
            let raidPokemonId = result[11] as? UInt16
            let enabled = (result[12] as? UInt8)?.toBool()
            let availbleSlots = result[13] as? UInt16
            let updated = result[14] as! UInt32
            let raidLevel = result[15] as? UInt8
            let exRaidEligible = (result[16] as? UInt8)?.toBool()
            let inBattle = (result[17] as? UInt8)?.toBool()
            let raidPokemonMove1 = result[18] as? UInt16
            let raidPokemonMove2 = result[19] as? UInt16
            let raidPokemonForm = result[20] as? UInt8
            let raidPokemonCp = result[21] as? UInt16
            let raidIsExclusive = (result[22] as? UInt8)?.toBool()
            let cellId = result[23] as? UInt64
            
            gyms.append(Gym(id: id, lat: lat, lon: lon, name: name, url: url, guardPokemonId: guardPokemonId, enabled: enabled, lastModifiedTimestamp: lastModifiedTimestamp, teamId: teamId, raidEndTimestamp: raidEndTimestamp, raidSpawnTimestamp: raidSpawnTimestamp, raidBattleTimestamp: raidBattleTimestamp, raidPokemonId: raidPokemonId, raidLevel: raidLevel, availbleSlots: availbleSlots, updated: updated, exRaidEligible: exRaidEligible, inBattle: inBattle, raidPokemonMove1: raidPokemonMove1, raidPokemonMove2: raidPokemonMove2, raidPokemonForm: raidPokemonForm, raidPokemonCp: raidPokemonCp, raidIsExclusive: raidIsExclusive, cellId: cellId))
        }
        return gyms
    }
  
    public static func getWithCellIDs(mysql: MySQL?=nil, cellIDs: [UInt64]) throws -> [Gym] {
        
        if cellIDs.count > 60000 {
            var result = [Gym]()
            for i in 0..<(Int(ceil(Double(cellIDs.count)/60000.0))) {
                let start = 60000 * i
                let end = min(60000 * (i+1) - 1, cellIDs.count - 1)
                let splice = Array(cellIDs[start...end])
                if let spliceResult = try? getWithCellIDs(mysql: mysql, cellIDs: splice) {
                    result += spliceResult
                }
            }
            return result
        }
        
        if cellIDs.count == 0 {
            return [Gym]()
        }
        
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[GYM] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        var inSQL = "("
        for _ in 1..<cellIDs.count {
            inSQL += "?, "
        }
        inSQL += "?)"
        
        let sql = """
            SELECT id, lat, lon, name, url, guarding_pokemon_id, last_modified_timestamp, team_id, raid_end_timestamp, raid_spawn_timestamp, raid_battle_timestamp, raid_pokemon_id, enabled, availble_slots, updated, raid_level, ex_raid_eligible, in_battle, raid_pokemon_move_1, raid_pokemon_move_2, raid_pokemon_form, raid_pokemon_cp, raid_is_exclusive, cell_id
            FROM gym
            WHERE cell_id IN \(inSQL)
        """
        
        let mysqlStmt = MySQLStmt(mysql)
        _ = mysqlStmt.prepare(statement: sql)
        for id in cellIDs {
            mysqlStmt.bindParam(id)
        }
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[GYM] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
        let results = mysqlStmt.results()
        
        var gyms = [Gym]()
        while let result = results.next() {
            let id = result[0] as! String
            let lat = result[1] as! Double
            let lon = result[2] as! Double
            let name = result[3] as? String
            let url = result[4] as? String
            let guardPokemonId = result[5] as? UInt16
            let lastModifiedTimestamp = result[6] as? UInt32
            let teamId = result[7] as? UInt8
            let raidEndTimestamp = result[8] as? UInt32
            let raidSpawnTimestamp = result[9] as? UInt32
            let raidBattleTimestamp = result[10] as? UInt32
            let raidPokemonId = result[11] as? UInt16
            let enabled = (result[12] as? UInt8)?.toBool()
            let availbleSlots = result[13] as? UInt16
            let updated = result[14] as! UInt32
            let raidLevel = result[15] as? UInt8
            let exRaidEligible = (result[16] as? UInt8)?.toBool()
            let inBattle = (result[17] as? UInt8)?.toBool()
            let raidPokemonMove1 = result[18] as? UInt16
            let raidPokemonMove2 = result[19] as? UInt16
            let raidPokemonForm = result[20] as? UInt8
            let raidPokemonCp = result[21] as? UInt16
            let raidIsExclusive = (result[22] as? UInt8)?.toBool()
            let cellId = result[23] as? UInt64
            
            gyms.append(Gym(id: id, lat: lat, lon: lon, name: name, url: url, guardPokemonId: guardPokemonId, enabled: enabled, lastModifiedTimestamp: lastModifiedTimestamp, teamId: teamId, raidEndTimestamp: raidEndTimestamp, raidSpawnTimestamp: raidSpawnTimestamp, raidBattleTimestamp: raidBattleTimestamp, raidPokemonId: raidPokemonId, raidLevel: raidLevel, availbleSlots: availbleSlots, updated: updated, exRaidEligible: exRaidEligible, inBattle: inBattle, raidPokemonMove1: raidPokemonMove1, raidPokemonMove2: raidPokemonMove2, raidPokemonForm: raidPokemonForm, raidPokemonCp: raidPokemonCp, raidIsExclusive: raidIsExclusive, cellId: cellId))
        }
        return gyms
    }
    
    public static func clearOld(mysql: MySQL?=nil, ids: [String], cellId: UInt64) throws -> UInt {
        
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[GYM] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        let notInSQL: String
        
        if ids.count != 0 {
            var inSQL = "("
            for _ in 1..<ids.count {
                inSQL += "?, "
            }
            inSQL += "?)"
            notInSQL = "AND id NOT IN \(inSQL)"
        } else {
            notInSQL = ""
        }
        
        let sql = """
            DELETE FROM gym
            WHERE cell_id = ? \(notInSQL)
        """
        
        let mysqlStmt = MySQLStmt(mysql)
        _ = mysqlStmt.prepare(statement: sql)
        mysqlStmt.bindParam(cellId)
        for id in ids {
            mysqlStmt.bindParam(id)
        }
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[GYM] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
        
        return mysqlStmt.affectedRows()
        
    }
    
    static func == (lhs: Gym, rhs: Gym) -> Bool {
        return lhs.id == rhs.id
    }
    
}
