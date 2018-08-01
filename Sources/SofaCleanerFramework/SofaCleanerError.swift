//
//  SofaCleanerError.swift
//  SofaCleanerFramework
//
//  Created by Isaac Weisberg on 8/1/18.
//

public enum SofaCleanerError: Error {
    static let tubeTypeMessage = "Incompatible tube type"
    static let cleanerSucksMessage = "Your cleaner is ass"
    static let deadMouseMessage = "Dead mouse is stuck in the tube"
    static let deadNakedWomanMessage = "A dead naked woman is stuck in the fridge"

    case incompatibleTubeType
    case cleanerItselfSucksAndWontWork
    case aDeadMouseGotStuckInTube
    case suddenlyADeadNakedWomanEmerges

    var asUserFriendlyMessage: String {
        if case .incompatibleTubeType = self {

        }
        return "Because fuck you that's why"
    }
}
