//
//  SofaCleanerError.swift
//  SofaCleanerFramework
//
//  Created by Isaac Weisberg on 8/1/18.
//

public enum SofaCleanerError: Error {
    case incompatibleTubeType
    case cleanerItselfSucksAndWontWork
    case aDeadMouseGotStuckInTube
    case suddenlyADeadNakedWomanEmerges

    var asUserFriendlyMessage: String {
        // FIXME: implement the messages
        return "Because fuck you that's why"
    }
}
