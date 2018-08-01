//
//  SofaCleaner.swift
//  SofaCleanerFramework
//
//  Created by Isaac Weisberg on 8/1/18.
//

public class SofaCleaner {
    public enum CleanerTube {
        case round
        case square
        case inAFormOfAHumanLiver
    }

    private(set) public var tube: CleanerTube

    public init(withTube tubeType: CleanerTube) {
        self.tube = tubeType
    }

    public func clean(sofa: Sofa) -> CleaningResults {
        let range = 0...sofa.cushionCount
        do {
            try range.forEach { index in
                try sofa.cleanCushion(at: index, with: tube)
            }
        } catch {
            if let error = error as? SofaCleanerError {
                return .failure(error)
            } else {
                return .fatalFailure
            }
        }

        return .success
    }
}
