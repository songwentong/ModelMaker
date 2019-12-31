//
//  ModelName.swift
//
//  this file is auto create by WTKit on 2020-12-31 15:29:28.
//  site:https://github.com/songwentong/ModelMaker
//  Thank you for use my json model maker😜
//

import Foundation
public class ModelName:NSObject, Codable {
    var data:[ModelName_data] = [ModelName_data]()
    var title:String = ""
    var type:String = ""
    enum CodingKeys: String, CodingKey {
        case data = "data"
        case title = "title"
        case type = "type"
    }
}
public extension ModelName{
    override var description: String{
        return debugDescription
    }
    override var debugDescription: String{
        return "debugDescription of ModelName:\ndata:\(data)\ntitle:\(title)\ntype:\(type)\n"
        
    }
}
public class ModelName_data:NSObject, Codable {
    var open_24_hour:Int = -1
    var price:Int = -1
    var low_24_hour:Int = -1
    var change_24_hour:Int = -1
    var target:String = ""
    var volume_24_hour_to:Int = -1
    var volume_24_hour:Int = -1
    var timestamp:Int = -1
    var change_pct_24_hour:Double = -1
    var high_24_hour:Int = -1
    var id:String = ""
    var exchange_name:String = ""
    var source:String = ""
    enum CodingKeys: String, CodingKey {
        case open_24_hour = "open_24_hour"
        case price = "price"
        case low_24_hour = "low_24_hour"
        case change_24_hour = "change_24_hour"
        case target = "target"
        case volume_24_hour_to = "volume_24_hour_to"
        case volume_24_hour = "volume_24_hour"
        case timestamp = "timestamp"
        case change_pct_24_hour = "change_pct_24_hour"
        case high_24_hour = "high_24_hour"
        case id = "id"
        case exchange_name = "exchange_name"
        case source = "source"
    }
}
public extension ModelName_data{
    override var description: String{
        return debugDescription
    }
    override var debugDescription: String{
        return "debugDescription of ModelName_data:\nopen_24_hour:\(open_24_hour)\nprice:\(price)\nlow_24_hour:\(low_24_hour)\nchange_24_hour:\(change_24_hour)\ntarget:\(target)\nvolume_24_hour_to:\(volume_24_hour_to)\nvolume_24_hour:\(volume_24_hour)\ntimestamp:\(timestamp)\nchange_pct_24_hour:\(change_pct_24_hour)\nhigh_24_hour:\(high_24_hour)\nid:\(id)\nexchange_name:\(exchange_name)\nsource:\(source)\n"
        
    }
}
