//
// Created by Vinay Ganesh on 8/2/16.
// Copyright (c) 2016 goldy. All rights reserved.
//

import Foundation
import UIKit

class PersonViewModel: NSObject {
    var firstName:String?
    var lastName:String?

    init(person:Person) {
        super.init()
        self.firstName = person.firstName
        self.lastName = person.lastName

        self.checkLastName()
    }

    func checkLastName() {
        if(self.lastName == "Waugh") {
            self.lastName = "Morton"
        }
    }
}
