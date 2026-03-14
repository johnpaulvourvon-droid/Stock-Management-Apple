import GoNativeCore

extension GoNativeCore {

    static func shared() -> GoNativeCore {
        return GoNativeCore()
    }

    var configuration: GoNativeCore {
        return self
    }

}
