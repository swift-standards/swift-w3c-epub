public import W3C_EPUB_Shared

extension W3C_EPUB.OCF.Container {
    /// A rootfile entry in container.xml.
    public struct Rootfile: Sendable, Hashable {
        /// Path to the package document relative to container root.
        public var fullPath: String

        /// Media type (always application/oebps-package+xml for EPUB).
        public var mediaType: String

        public init(
            fullPath: String,
            mediaType: String = W3C_EPUB.Media.Kind.package.rawValue
        ) {
            self.fullPath = fullPath
            self.mediaType = mediaType
        }
    }
}
