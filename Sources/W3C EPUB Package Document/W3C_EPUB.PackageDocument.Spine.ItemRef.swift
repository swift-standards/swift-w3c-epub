public import W3C_EPUB_Shared

extension W3C_EPUB.PackageDocument.Spine {
    /// A spine itemref.
    public struct ItemRef: Sendable, Hashable {
        /// Reference to a manifest item ID.
        public var idref: String

        /// Whether this item is linear (part of main reading order).
        public var linear: Bool

        /// Properties for this spine item.
        public var properties: Set<String>

        public init(
            idref: String,
            linear: Bool = true,
            properties: Set<String> = []
        ) {
            self.idref = idref
            self.linear = linear
            self.properties = properties
        }
    }
}
