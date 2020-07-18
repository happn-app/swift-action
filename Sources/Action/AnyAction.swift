/*
Copyright 2020 happn

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. */

import Foundation



public protocol AnyAction {
	
	associatedtype ParametersType
	associatedtype ResultType
	
	var isExecuting: Bool {get}
	var latestParameters: ParametersType? {get}
	var result: Result<ResultType, Error>? {get}
	
	func start(
		parameters: ParametersType,
		weakeningMode: WeakeningMode,
		shouldJoinRunningAction: (_ currentParameters: ParametersType) -> Bool,
		shouldRetrievePreviousRun: (_ previousParameters: ParametersType?, _ runWasSuccessful: Bool) -> Bool,
		handler: ((_ result: Result<ResultType, Error>) -> Void)?
	)
	
	func weaken() throws
	func clearLatestParameters() throws
	
}
