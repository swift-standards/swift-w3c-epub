public import W3C_EPUB_Shared

extension W3C_EPUB.PackageDocument {
    /// The Package Document carries bibliographic and structural metadata
    /// about an EPUB Publication.
    public struct Package: Sendable, Hashable {
        /// The unique identifier reference.
        public var uniqueIdentifier: String

        /// The EPUB version.
        public var version: W3C_EPUB.Version

        /// Package metadata.
        public var metadata: Metadata

        /// The manifest of resources.
        public var manifest: Manifest

        /// The spine (reading order).
        public var spine: Spine

        public init(
            uniqueIdentifier: String,
            version: W3C_EPUB.Version = .v3_3,
            metadata: Metadata,
            manifest: Manifest,
            spine: Spine
        ) {
            self.uniqueIdentifier = uniqueIdentifier
            self.version = version
            self.metadata = metadata
            self.manifest = manifest
            self.spine = spine
        }
    }
}
