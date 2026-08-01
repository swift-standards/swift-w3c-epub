public import W3C_EPUB_Shared

extension W3C_EPUB.Publications {
    /// An EPUB Publication is a collection of resources that constitutes
    /// a single intellectual or artistic work.
    public struct Publication: Sendable, Hashable {
        /// The unique identifier for this publication.
        public var uniqueIdentifier: String

        /// The release identifier combines unique identifier and modification date.
        public var releaseIdentifier: String?

        /// The EPUB version this publication conforms to.
        public var version: W3C_EPUB.Version

        public init(
            uniqueIdentifier: String,
            releaseIdentifier: String? = nil,
            version: W3C_EPUB.Version = .v3_3
        ) {
            self.uniqueIdentifier = uniqueIdentifier
            self.releaseIdentifier = releaseIdentifier
            self.version = version
        }
    }
}
