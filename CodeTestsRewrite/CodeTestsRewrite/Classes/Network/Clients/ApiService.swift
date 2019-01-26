//
//  ApiService.swift
//  CodeTestsRewrite
//
//  Created by Jing Gao on 8/1/19.
//  Copyright © 2019 Jing Gao. All rights reserved.
//

import RxSwift

protocol ApiServiceType: EnvironmentInjected {
    func fetchData(urlString: String) -> Single<Data>
}

extension Network {
    struct ApiService: ApiServiceType {
        func fetchData(urlString: String) -> Single<Data> {
            return Single<Data>.create { single in
                guard let url = URL(string: urlString) else {
                    single(.error(NetworkError.invalidUrl))
                    return Disposables.create()
                }
                
                let task = self.session.dataTask(with: url) { data, response, error in
                    if let error = error {
                        single(.error(NetworkError.request(error: error)))
                    }
                    
                    guard let _data: Data = data else {
                        return single(.error(NetworkError.invalidData))
                    }
                    
                    single(.success(_data))
                }
                
                task.resume()
                return Disposables.create()
            }
        }
    }
}
