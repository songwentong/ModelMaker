//
//  MyModel.swift
//
//  this file is auto create by WTKit on 2019-12-20 11:39:42.
//  site:https://github.com/songwentong/ModelMaker
//  Thank you for use my json model maker😜
//

import Foundation
public class MyModel:NSObject, Codable {
    var title:String = ""
    var type:String = ""
    var data:[MyModel_data] = [MyModel_data]()
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case type = "type"
        case data = "data"
    }
}
public extension MyModel{
    override var description: String{
        return debugDescription
    }
    override var debugDescription: String{
        return "debugDescription of MyModel:\ntitle:\(title)\ntype:\(type)\ndata:\(data)\n"

    }
}
public class MyModel_data:NSObject, Codable {
    var volume_24_hour_to:Int = -1
    var exchange_name:String = ""
    var id:String = ""
    var timestamp:Int = -1
    var price:Int = -1
    var target:String = ""
    var source:String = ""
    var open_24_hour:Int = -1
    var change_24_hour:Int = -1
    var high_24_hour:Int = -1
    var change_pct_24_hour:Double = -1
    var volume_24_hour:Int = -1
    var low_24_hour:Int = -1
    enum CodingKeys: String, CodingKey {
        case volume_24_hour_to = "volume_24_hour_to"
        case exchange_name = "exchange_name"
        case id = "id"
        case timestamp = "timestamp"
        case price = "price"
        case target = "target"
        case source = "source"
        case open_24_hour = "open_24_hour"
        case change_24_hour = "change_24_hour"
        case high_24_hour = "high_24_hour"
        case change_pct_24_hour = "change_pct_24_hour"
        case volume_24_hour = "volume_24_hour"
        case low_24_hour = "low_24_hour"
    }
}
public extension MyModel_data{
    override var description: String{
        return debugDescription
    }
    override var debugDescription: String{
        return "debugDescription of MyModel_data:\nvolume_24_hour_to:\(volume_24_hour_to)\nexchange_name:\(exchange_name)\nid:\(id)\ntimestamp:\(timestamp)\nprice:\(price)\ntarget:\(target)\nsource:\(source)\nopen_24_hour:\(open_24_hour)\nchange_24_hour:\(change_24_hour)\nhigh_24_hour:\(high_24_hour)\nchange_pct_24_hour:\(change_pct_24_hour)\nvolume_24_hour:\(volume_24_hour)\nlow_24_hour:\(low_24_hour)\n"

    }
}
