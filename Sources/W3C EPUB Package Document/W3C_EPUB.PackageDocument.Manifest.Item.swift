public import W3C_EPUB_Shared

extension W3C_EPUB.PackageDocument.Manifest {

    public struct Item: Sendable, Hashable, Identifiable {

        public var id: String

        public var href: String

        public var mediaType: String

        public var properties: Set<String>

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
