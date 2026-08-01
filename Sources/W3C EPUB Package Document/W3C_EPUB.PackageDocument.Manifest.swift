public import W3C_EPUB_Shared

extension W3C_EPUB.PackageDocument {
    /// The manifest lists all resources in the publication.
    public struct Manifest: Sendable, Hashable {
        /// The manifest items.
        public var items: [Item]

        public init(items: [Item] = []) {
            self.items = items
        }
    }
}
