//
//  NetworkCheck.swift
//  Room28
//
//  Created by 원준연 on 2023/06/15.
//

import UIKit
import Network

final class NetworkCheck {
    static let shared = NetworkCheck()
    private let queue = DispatchQueue.global()
    private let monitor: NWPathMonitor
    public private(set) var isConnected: Bool = false
    public private(set) var connectionType: ConnectionType = .unknown
    
    // 연결타입
    enum ConnectionType {
        case wifi
        case cellular
        case ethernet
        case unknown
    }
    
    // monotior 초기화
    private init() {
        monitor = NWPathMonitor()
    }
    
    // Network Monitoring 시작
    func startMonitoring() {
        monitor.start(queue: queue)
        monitor.pathUpdateHandler = { [weak self] path in
            
            self?.isConnected = path.status == .satisfied
            self?.getConnectionType(path)
            
            if self?.isConnected == true {
                print("연결됨!")
                DispatchQueue.main.async {
                    NotificationCenter.default.post(name: .networkStatusChanged, object: true)
                }
            } else {
                print("연결안됨!")
                DispatchQueue.main.async {
                    NotificationCenter.default.post(name: .networkStatusChanged, object: false)
                }
            }
        }
    }
    
    // Network Monitoring 종료
    func stopMonitoring() {
        monitor.cancel()
    }
    
    // Network 연결 타입
    func getConnectionType(_ path: NWPath) {
        if path.usesInterfaceType(.wifi) {
            connectionType = .wifi
        } else if path.usesInterfaceType(.cellular) {
            connectionType = .cellular
        } else if path.usesInterfaceType(.wiredEthernet) {
            connectionType = .ethernet
        } else {
            connectionType = .unknown
        }
    }
}

class NetWorkCheckingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 네트워크 상태 변경 알림 구독
        NotificationCenter.default.addObserver(self, selector: #selector(networkStatusChanged(_:)), name: .networkStatusChanged, object: nil)
    }
    
    deinit {
        // 알림 구독 해제
        NotificationCenter.default.removeObserver(self, name: .networkStatusChanged, object: nil)
    }
    
    @objc func networkStatusChanged(_ notification: Notification) {
        if let isNetworkAvailable = notification.object as? Bool {
            if isNetworkAvailable {
                // 네트워크 연결 상태가 변경되었을 때 실행할 동작을 여기에 작성
                print("네트워크에 연결되었습니다.")
            } else {
                // 네트워크 연결 상태가 변경되었을 때 실행할 동작을 여기에 작성
                print("네트워크에 연결되어 있지 않습니다.")
                
                // 예: UIAlertController를 사용하여 알림 표시
                DispatchQueue.main.async {
                    let alertController = UIAlertController(title: "네트워크 연결 오류", message: "인터넷에 연결되어 있지 않습니다. 일부 컨탠츠가 표시되지 않을 수 있습니다. 인터넷 연결 상태를 확인해주세요.", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
                    self.present(alertController, animated: true, completion: nil)
                }
                
            }
        }
    }
}

extension NSNotification.Name {
    static let networkStatusChanged = NSNotification.Name("NetworkStatusChanged")
}
