public import W3C_EPUB_Shared

extension W3C_EPUB.OCF {

    public enum Compression: Sendable, Hashable {

        case stored

        case deflated
    }
}
