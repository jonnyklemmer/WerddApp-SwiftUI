//
//  Network.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/2/22.
//

import Foundation

struct Network {

    // API Results
    /*
    static let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    static let headers = [
        "X-RapidAPI-Host": "wordsapiv1.p.rapidapi.com",
        "X-RapidAPI-Key": apiKey ?? ""
    ]

    static func getRandomWord() async throws -> Network.Wor {
        var request = URLRequest(
            url: URL(string: "https://wordsapiv1.p.rapidapi.com/words/?random=true")!,
            cachePolicy: .useProtocolCachePolicy,
            timeoutInterval: 10.0
        )

        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let (data, _) = try await session.data(for: request)

        let randomWord = try JSONDecoder().decode(Network.RandomWord.self, from: data)

        return randomWord
    }
     */
}

extension String: Error {}
