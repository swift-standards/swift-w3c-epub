public import W3C_EPUB_Shared

extension W3C_EPUB.PackageDocument.Manifest {
    /// A manifest item.
    public struct Item: Sendable, Hashable, Identifiable {
        /// Unique identifier within the manifest.
        public var id: String

        /// Relative path to the resource.
        public var href: String

        /// Media type of the resource.
        public var mediaType: String

        /// Properties such as "nav", "cover-image", or "scripted".
        public var properties: Set<String>

        /// Fallback item ID for foreign resources.
        public var fallback: String?

        public init(
            id: String,
            href: String,
            mediaType: String,
            properties: Set<String> = [],
            fallback: String? = nil
        ) {
            self.id = id
            self.href = href
            self.mediaType = mediaType
            self.properties = properties
            self.fallback = fallback
        }
    }
}
