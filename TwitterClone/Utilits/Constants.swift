//
//  Constants.swift
//  TwitterClone
//
//  Created by Владимир on 17.12.2021.
//  Copyright © 2021 LEADGROUP. All rights reserved.
//

import Firebase
//import FirebaseStorage

let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGES = STORAGE_REF.child("profile_images")

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")
