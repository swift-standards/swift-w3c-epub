public import W3C_EPUB_Shared

extension W3C_EPUB.FixedLayouts {

    public enum RenditionLayout: String, Sendable, Hashable, CaseIterable {

        case reflowable

        case prePaginated = "pre-paginated"
    }
}
