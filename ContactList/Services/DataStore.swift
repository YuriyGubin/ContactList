//
//  DataStore.swift
//  ContactList
//
//  Created by Yuriy Gubin on 18.10.2022.
//

class DataStore {
    
    static let shared = DataStore()
    
    var names = [
        "Nataly",
        "Irina",
        "Ekaterina",
        "Vera",
        "Elena",
        "Nataliya",
        "Polina",
        "Svetlana",
        "Kira",
        "Nina",
        "Varvara"
    ]
    
    var surnames = [
        "Portman",
        "Petrova",
        "Kirsanova",
        "Tenyunina",
        "Ivanova",
        "Sidorova",
        "Smetanina",
        "Ovsova",
        "Fedorova",
        "Kalinina",
        "Vaseneva"
    ]
    
    var emails = [
        "dream@gmail.com",
        "bigeyes@gmail.com",
        "nicesmile@gmail.com",
        "kindsoul@gmail.com",
        "elasticnut@gmail.com",
        "cutyface@gmail.com",
        "swanneck@gmail.com",
        "rougecheeks@gmail.com",
        "velvetskin@gmail.com",
        "longlegs@gmail.com",
        "clever@gmail.com"
    ]
    
    var phoneNumbers = [
        "+79228227227",
        "+79256984128",
        "+79586243569",
        "+78965412354",
        "+18569874125",
        "+14587896521",
        "+78546985698",
        "+78456215489",
        "+78362145487",
        "+78523652497",
        "+73658741020"
    ]
    
    private init() {}
}
