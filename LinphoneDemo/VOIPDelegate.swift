// †††††

import linphonesw

final class VOIPDelegate: AccountCreatorDelegate {
    
    override init() {
        super.init()
        
        print("VOIPDelegate initialized")
    }
    
    ///    Callback to notify a response of server.
    /// - Parameter creator: LinphoneAccountCreator object
    /// - Parameter status: The status of the LinphoneAccountCreator test existence
    /// operation that has just finished
    ///
    override func onActivateAccount(creator: AccountCreator, status: AccountCreator.Status, resp: String) {
        print(">>> onActivateAccount")
    }
    ///    Callback to notify a response of server.
    /// - Parameter creator: LinphoneAccountCreator object
    /// - Parameter status: The status of the LinphoneAccountCreator test existence
    /// operation that has just finished
    ///
    override func onActivateAlias(creator: AccountCreator, status: AccountCreator.Status, resp: String) {
        print(">>> onActivateAlias")
    }
    ///    Callback to notify a response of server.
    /// - Parameter creator: LinphoneAccountCreator object
    /// - Parameter status: The status of the LinphoneAccountCreator test existence
    /// operation that has just finished
    ///
    override func onIsAccountLinked(creator: AccountCreator, status: AccountCreator.Status, resp: String) {
        print(">>> onIsAccountLinked")
    }
    ///    Callback to notify a response of server.
    /// - Parameter creator: LinphoneAccountCreator object
    /// - Parameter status: The status of the LinphoneAccountCreator test existence
    /// operation that has just finished
    ///
    override func onLinkAccount(creator: AccountCreator, status: AccountCreator.Status, resp: String) {
        print(">>> onLinkAccount")
    }
    ///    Callback to notify a response of server.
    /// - Parameter creator: LinphoneAccountCreator object
    /// - Parameter status: The status of the LinphoneAccountCreator test existence
    /// operation that has just finished
    ///
    override func onIsAliasUsed(creator: AccountCreator, status: AccountCreator.Status, resp: String) {
        print(">>> onIsAliasUsed")
    }
    ///    Callback to notify a response of server.
    /// - Parameter creator: LinphoneAccountCreator object
    /// - Parameter status: The status of the LinphoneAccountCreator test existence
    /// operation that has just finished
    ///
    override func onIsAccountActivated(creator: AccountCreator, status: AccountCreator.Status, resp: String) {
        print(">>> onIsAccountActivated")
    }
    ///    Callback to notify a response of server.
    /// - Parameter creator: LinphoneAccountCreator object
    /// - Parameter status: The status of the LinphoneAccountCreator test existence
    /// operation that has just finished
    ///
    override func onLoginLinphoneAccount(creator: AccountCreator, status: AccountCreator.Status, resp: String) {
        print(">>> onLoginLinphoneAccount")
    }
    ///    Callback to notify a response of server.
    /// - Parameter creator: LinphoneAccountCreator object
    /// - Parameter status: The status of the LinphoneAccountCreator test existence
    /// operation that has just finished
    ///
    override func onIsAccountExist(creator: AccountCreator, status: AccountCreator.Status, resp: String) {
        print(">>> onIsAccountExist")
    }
    ///    Callback to notify a response of server.
    /// - Parameter creator: LinphoneAccountCreator object
    /// - Parameter status: The status of the LinphoneAccountCreator test existence
    /// operation that has just finished
    ///
    override func onUpdateAccount(creator: AccountCreator, status: AccountCreator.Status, resp: String) {
        print(">>> onUpdateAccount")
    }
    ///    Callback to notify a response of server.
    /// - Parameter creator: LinphoneAccountCreator object
    /// - Parameter status: The status of the LinphoneAccountCreator test existence
    /// operation that has just finished
    ///
    override func onRecoverAccount(creator: AccountCreator, status: AccountCreator.Status, resp: String) {
        print(">>> onRecoverAccount")
    }
    ///    Callback to notify a response of server.
    /// - Parameter creator: LinphoneAccountCreator object
    /// - Parameter status: The status of the LinphoneAccountCreator test existence
    /// operation that has just finished
    ///
    override func onCreateAccount(creator: AccountCreator, status: AccountCreator.Status, resp: String) {
        print(">>> onCreateAccount")
    }
    
}

final class VOIPCore: CoreDelegate {
    
    override init() {
        super.init()
        
        print(">>> Core initialized")
    }
    
    override func onTransferStateChanged(lc: Core, transfered: Call, newCallState: Call.State) { print(">>>>>>> Core onTransferStateChanged")}
    override func onFriendListCreated(lc: Core, list: FriendList) { print(">>>>>>> Core onFriendListCreated")}
    override func onSubscriptionStateChanged(lc: Core, lev: Event, state: SubscriptionState) { print(">>>>>>> Core onSubscriptionStateChanged")}
    override func onCallLogUpdated(lc: Core, newcl: CallLog) { print(">>>>>>> Core onCallLogUpdated")}
    override func onCallStateChanged(lc: Core, call: Call, cstate: Call.State, message: String) { print(">>>>>>> Core onCallStateChanged \(cstate.rawValue)")}
    override func onAuthenticationRequested(lc: Core, authInfo: AuthInfo, method: AuthMethod) { print(">>>>>>> Core onAuthenticationRequested")}
    override func onNotifyPresenceReceivedForUriOrTel(lc: Core, lf: Friend, uriOrTel: String, presenceModel: PresenceModel) { print(">>>>>>> Core onNotifyPresenceReceivedForUriOrTel")}
    override func onChatRoomStateChanged(lc: Core, cr: ChatRoom, state: ChatRoom.State) { print(">>>>>>> Core onChatRoomStateChanged")}
    override func onBuddyInfoUpdated(lc: Core, lf: Friend) { print(">>>>>>> Core onBuddyInfoUpdated")}
    override func onNetworkReachable(lc: Core, reachable: Bool) { print(">>>>>>> Core onNetworkReachable")}
    override func onNotifyReceived(lc: Core, lev: Event, notifiedEvent: String, body: Content) { print(">>>>>>> Core onNotifyReceived")}
    override func onNewSubscriptionRequested(lc: Core, lf: Friend, url: String) { print(">>>>>>> Core onNewSubscriptionRequested")}
    override func onCallStatsUpdated(lc: Core, call: Call, stats: CallStats) { print(">>>>>>> Core onCallStatsUpdated")}
    override func onNotifyPresenceReceived(lc: Core, lf: Friend) { print(">>>>>>> Core onNotifyPresenceReceived")}
    override func onEcCalibrationAudioInit(lc: Core) { print(">>>>>>> Core onEcCalibrationAudioInit")}
    override func onMessageReceived(lc: Core, room: ChatRoom, message: ChatMessage) { print(">>>>>>> Core onMessageReceived")}
    override func onEcCalibrationResult(lc: Core, status: EcCalibratorStatus, delayMs: Int) { print(">>>>>>> Core onEcCalibrationResult")}
    override func onSubscribeReceived(lc: Core, lev: Event, subscribeEvent: String, body: Content) { print(">>>>>>> Core onSubscribeReceived")}
    override func onInfoReceived(lc: Core, call: Call, msg: InfoMessage) { print(">>>>>>> Core onInfoReceived")}
    override func onChatRoomRead(lc: Core, room: ChatRoom) { print(">>>>>>> Core onChatRoomRead")}
    override func onRegistrationStateChanged(lc: Core, cfg: ProxyConfig, cstate: RegistrationState, message: String) { print(">>>>>>> Core onRegistrationStateChanged")}
    override func onFriendListRemoved(lc: Core, list: FriendList) { print(">>>>>>> Core onFriendListRemoved")}
    override func onReferReceived(lc: Core, referTo: String) { print(">>>>>>> Core onReferReceived")}
    override func onQrcodeFound(lc: Core, result: String) { print(">>>>>>> Core onQrcodeFound")}
    override func onConfiguringStatus(lc: Core, status: ConfiguringState, message: String) { print(">>>>>>> Core onConfiguringStatus")}
    override func onCallCreated(lc: Core, call: Call) { print(">>>>>>> Core onCallCreated")}
    override func onPublishStateChanged(lc: Core, lev: Event, state: PublishState) { print(">>>>>>> Core onPublishStateChanged")}
    override func onCallEncryptionChanged(lc: Core, call: Call, on: Bool, authenticationToken: String) { print(">>>>>>> Core onCallEncryptionChanged")}
    override func onIsComposingReceived(lc: Core, room: ChatRoom) { print(">>>>>>> Core onIsComposingReceived")}
    override func onMessageReceivedUnableDecrypt(lc: Core, room: ChatRoom, message: ChatMessage) { print(">>>>>>> Core onMessageReceivedUnableDecrypt")}
    override func onLogCollectionUploadProgressIndication(lc: Core, offset: Int, total: Int) { print(">>>>>>> Core onLogCollectionUploadProgressIndication")}
    override func onChatRoomSubjectChanged(lc: Core, cr: ChatRoom) { print(">>>>>>> Core onChatRoomSubjectChanged")}
    override func onVersionUpdateCheckResultReceived(lc: Core, result: VersionUpdateCheckResult, version: String, url: String) { print(">>>>>>> Core onVersionUpdateCheckResultReceived")}
    override func onEcCalibrationAudioUninit(lc: Core) { print(">>>>>>> Core onEcCalibrationAudioUninit")}
    override func onGlobalStateChanged(lc: Core, gstate: GlobalState, message: String) { print(">>>>>>> Core onGlobalStateChanged")}
    override func onLogCollectionUploadStateChanged(lc: Core, state: Core.LogCollectionUploadState, info: String) { print(">>>>>>> Core onLogCollectionUploadStateChanged")}
    override func onDtmfReceived(lc: Core, call: Call, dtmf: Int) { print(">>>>>>> Core onDtmfReceived")}
    override func onChatRoomEphemeralMessageDeleted(lc: Core, cr: ChatRoom) { print(">>>>>>> Core onChatRoomEphemeralMessageDeleted")}
    override func onMessageSent(lc: Core, room: ChatRoom, message: ChatMessage) { print(">>>>>>> onMessageSent")}
    
}
