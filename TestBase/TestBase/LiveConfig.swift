//
//  LiveConfig.swift
//  TestBase
//
//  Created by chengjian on 2021/11/18.
//  Copyright © 2021 chengjian. All rights reserved.
//

import Foundation
import HandyJSON
class LiveConfig: HandyJSON {
    var status: Int = 0
    var userSig: String?
    var options: Dictionary<Int, Option>?
    var item: LiveInfo?
    required init() {}
    func enableDanmu() -> Bool {
        return options?[OptionType.optionShowGroupMessage]?.switchValue == OptionSwitch.optionSwitchOpen
    }

    func enableLiveEntry() -> Bool {
        return options?[OptionType.optionPopupWindow]?.switchValue == OptionSwitch.optionSwitchOpen
    }

    func getGroupId() -> String {
        return item?.groupId == nil ? "" : item!.groupId!
    }

    func isLiving() -> Bool {
        status == 1
    }
}

class Option: HandyJSON {
    var switchValue: Int = 0
    required init() {}
}

class LiveInfo: HandyJSON {
    var groupId: String?
    required init() {}
}

class OptionType {
    static let optionUnkonw = 0
    static let optionPopupWindow = 1
    static let optionTeamup = 2
    static let optionJoinCustomRoom = 3
    static let optionShowGroupMessage = 4
}

class OptionSwitch {
    static let optionSwitchUnknow = 0
    static let optionSwitchOpen = 1
    static let optionSwitchClose = 2
}
