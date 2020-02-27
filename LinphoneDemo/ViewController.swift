import UIKit
import linphonesw

class ViewController: UIViewController {
    
    private let voip = VOIPDelegate()
    private let core = VOIPCore()
    private let foktory = Factory.Instance
    private var realCore: Core? = nil
    private var timer: Timer? = nil
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.initializeLinphone()
        self.makeCall()
    }
    
    func initializeLinphone() {
         guard let path = Bundle.main.path(forResource: "linphonerc", ofType: ""), let foktoryPath = Bundle.main.path(forResource: "linphonerc", ofType: "") else { return }
        
        if let config = try? self.foktory.createConfigWithFactory(path: path, factoryPath: foktoryPath),
            let core = try? self.foktory.createCoreWithConfig(config: config, systemContext: nil)
        {
            self.realCore = core
            self.realCore?.addDelegate(delegate: self.core)
        }
    }
    
    func idle() {
        guard let proxyConfig = self.setIdentify() else {
            print("no identity")
            return
        }
        
        proxyConfig.registerEnabled = true
        self.setTimer()
    }
    
    fileprivate func setTimer(){
        self.timer = Timer.scheduledTimer(
            timeInterval: 0.02, target: self, selector: #selector(iterate), userInfo: nil, repeats: true)
    }
    
    @objc func iterate() {
        self.realCore?.iterate()
    }
    
    
    //"sip_server": "sip1.citykrepost.ru",
    //"login": 1200,
    //"password": "15792c2ff",
    //"door_id": 1,
    //"name": "",
    //"preview": null,
    //"stream": "rtsp://server3.citykrepost.ru/DOMOFON1-1",
    //"active": true
    
    func setIdentify() -> ProxyConfig? {
        // Reference: http://www.linphone.org/docs/liblinphone/group__registration__tutorials.html
        
        let account = "1200"
        let password = "15792c2ff"
        let domain = "sip1.citykrepost.ru"
        let identity = "sip:" + account + "@" + domain;

        /*create proxy config*/
        guard let proxyCfg = try? self.realCore?.createProxyConfig() else { return nil }
        guard let proxyConfig = proxyCfg else { return nil }

        /*parse identity*/
        guard let address = try? self.foktory.createAddress(addr: identity) else { return nil }
        guard let from = try? self.foktory.createParticipantDeviceIdentity(address: address, name: "Bob") else {
            print("\(identity) not a valid sip uri, must be like sip:toto@sip.linphone.org");
            return nil
        }

        /*create authentication structure from identity*/
        guard let info = try? self.foktory.createAuthInfo(username: account, userid: account, passwd: password, ha1: "", realm: "", domain: domain, algorithm: "") else { return nil }
        
        /*add authentication info to LinphoneCore*/
        self.realCore?.addAuthInfo(info: info)

        // configure proxy entries
        /*set identity with user name and domain*/
        do {
            try proxyConfig.setIdentityaddress(newValue: address)
            
            /* we assume domain = proxy server address*/
            let serverAddress = address.domain
            try proxyConfig.setServeraddr(newValue: serverAddress)
            
            /* activate registration for this proxy config*/
            proxyConfig.registerEnabled = true
            
            /*add proxy config to linphone core*/
            try self.realCore?.addProxyConfig(config: proxyConfig)
            
            self.realCore?.defaultProxyConfig = proxyConfig
            return proxyConfig
        } catch {
            print(">>> PIZDA")
            return nil
        }
    }
    
    func makeCall() {
        let account = "1200"
        let password = "15792c2ff"
        let domain = "sip1.citykrepost.ru"
        let identity = "sip:" + account + "@" + domain;
            
        guard let _ = setIdentify() else {
            print("no identity")
            return
        }
        
        guard let address = try? self.foktory.createAddress(addr: identity) else { return }
        
        self.realCore?.inviteAddress(addr: address)
        self.setTimer()
    }


}

