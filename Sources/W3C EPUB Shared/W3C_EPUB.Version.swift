extension W3C_EPUB {

    public struct Version: Sendable, Hashable, Comparable {
        public let major: Int
        public let minor: Int

        public init(major: Int, minor: Int) {
            self.major = major
            self.minor = minor
        }
    }
}

extension W3C_EPUB.Version {

    public static let v3_3 = W3C_EPUB.Version(major: 3, minor: 3)

    public static let v3_2 = W3C_EPUB.Version(major: 3, minor: 2)

    public static let v3_0 = W3C_EPUB.Version(major: 3, minor: 0)

    public static let v2_0_1 = W3C_EPUB.Version(major: 2, minor: 0)

    public static func < (lhs: W3C_EPUB.Version, rhs: W3C_EPUB.Version) -> Bool {
        if lhs.major != rhs.major {
            return lhs.major < rhs.major
        }
        return lhs.minor < rhs.minor
    }
}

extension W3C_EPUB.Version: CustomStringConvertible {
    public var description: String {
        "\(major).\(minor)"
    }
}
