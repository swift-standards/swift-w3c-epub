public import W3C_EPUB_Shared

extension W3C_EPUB.NavigationDocument {

    public struct NavigationItem: Sendable, Hashable {

        public var text: String

        public var href: String?

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
