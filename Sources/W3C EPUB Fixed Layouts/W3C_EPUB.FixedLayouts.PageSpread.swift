public import W3C_EPUB_Shared

extension W3C_EPUB.FixedLayouts {
    /// The page-spread property for spine items.
    public enum PageSpread: String, Sendable, Hashable, CaseIterable {
        /// Page appears on the left side of a spread.
        case left = "page-spread-left"

        /// Page appears on the right side of a spread.
        case right = "page-spread-right"

        /// Page is centered (single page spread).
        case center = "page-spread-center"
    }
}
