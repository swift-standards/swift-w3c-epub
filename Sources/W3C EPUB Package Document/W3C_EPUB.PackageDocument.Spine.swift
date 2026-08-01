public import W3C_EPUB_Shared

extension W3C_EPUB.PackageDocument {
    /// The spine defines the default reading order.
    public struct Spine: Sendable, Hashable {
        /// Reference to the NCX (for EPUB 2 compatibility).
        public var toc: String?

        /// The spine items.
        public var itemrefs: [ItemRef]

        public init(toc: String? = nil, itemrefs: [ItemRef] = []) {
            self.toc = toc
            self.itemrefs = itemrefs
        }
    }
}
