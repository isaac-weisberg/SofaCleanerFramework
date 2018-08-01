//
//  Sofa.swift
//  SofaCleanerFramework
//
//  Created by Isaac Weisberg on 8/1/18.
//

public protocol Sofa {
    var cushionCount: Int { get }

    func cleanCushion(at index: Int, with tube: SofaCleaner.CleanerTube) throws
}
