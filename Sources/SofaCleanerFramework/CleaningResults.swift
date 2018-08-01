//
//  CleaningResults.swift
//  SofaCleanerFramework
//
//  Created by Isaac Weisberg on 8/1/18.
//

public enum CleaningResults {
    static let successString = "Successfully cleaned the sofa"
    static let fatalFailureString = "FATAL ERROR: failed and an unknown error was thrown"
    static let failureString = "Failed to clean the sofa"

    case success
    case fatalFailure
    case failure(SofaCleanerError)

    var toMessage: String {
        switch self {
        case .success:
            return CleaningResults.successString
        case .fatalFailure:
            return CleaningResults.fatalFailureString
        case .failure(let error):
            return "\(CleaningResults.failureString): \(error.asUserFriendlyMessage)"
        }
    }
}
