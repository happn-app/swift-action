/*
 * Util.swift
 * Action
 *
 * Created by François Lamboley on 17/07/2020.
 */

import Foundation



extension Result {
	
	var isSuccessful: Bool {
		switch self {
			case .success: return true
			case .failure: return false
		}
	}
	
}
