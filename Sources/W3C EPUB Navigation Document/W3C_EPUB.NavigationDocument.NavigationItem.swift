public import W3C_EPUB_Shared

extension W3C_EPUB.NavigationDocument {
    /// A navigation item (li element containing a or span).
    public struct NavigationItem: Sendable, Hashable {
        /// The display text.
        public var text: String

        /// The href to the content (nil for heading-only items).
        public var href: String?

        /// Child navigation items (for nested lists).
        public var children: [NavigationItem]

        public init(
            text: String,
            href: String? = nil,
            children: [NavigationItem] = []
        ) {
            self.text = text
            self.href = href
            self.children = children
        }
    }
}
