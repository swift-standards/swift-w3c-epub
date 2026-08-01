public import W3C_EPUB_Shared

extension W3C_EPUB.FixedLayouts {
    /// The rendition layout property.
    public enum RenditionLayout: String, Sendable, Hashable, CaseIterable {
        /// Reflowable content (default).
        case reflowable

        /// Pre-paginated (fixed-layout) content.
        case prePaginated = "pre-paginated"
    }
}
