public import W3C_EPUB_Shared

extension W3C_EPUB.NavigationDocument {
    /// A navigation list (nav element with epub:type).
    public struct NavigationList: Sendable, Hashable {
        /// The navigation type (toc, page-list, landmarks).
        public var type: NavigationType

        /// Optional heading for this navigation.
        public var heading: String?

        /// The navigation items.
        public var items: [NavigationItem]

        public init(
            type: NavigationType,
            heading: String? = nil,
            items: [NavigationItem] = []
        ) {
            self.type = type
            self.heading = heading
            self.items = items
        }
    }
}
