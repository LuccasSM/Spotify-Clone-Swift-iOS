//
//  AuthManager.swift
//  Spotify
//
//  Created by Luccas Santana Marinho on 15/09/22.
//

import Foundation

final class AuthManager {
    
    struct Constants {
        static let clientID = "0149e90054b1403594ead9011637f24b"
        static let clientSecret = "1fdf1495150f49869b28553b9eb02620"
    }
    
    static let shared = AuthManager()
    
    private init() {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://iosacademy.io/"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)"
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
