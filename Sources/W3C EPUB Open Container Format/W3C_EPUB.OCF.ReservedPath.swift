public import W3C_EPUB_Shared

extension W3C_EPUB.OCF {
    /// Reserved file and directory names in OCF.
    public enum ReservedPath: String, Sendable, Hashable, CaseIterable {
        /// The mimetype file (must be first, uncompressed).
        case mimetype

        /// The META-INF directory.
        case metaInf = "META-INF"

        /// The container.xml file.
        case container = "META-INF/container.xml"

        /// The encryption.xml file (optional).
        case encryption = "META-INF/encryption.xml"

        /// The manifest.xml file (optional, for signatures).
        case manifest = "META-INF/manifest.xml"

        /// The metadata.xml file (optional).
        case metadata = "META-INF/metadata.xml"

        /// The rights.xml file (optional).
        case rights = "META-INF/rights.xml"

        /// The signatures.xml file (optional).
        case signatures = "META-INF/signatures.xml"
    }
}

extension W3C_EPUB.OCF {
    /// The expected mimetype file content.
    public static let mimetypeContent = "application/epub+zip"

    /// The container.xml namespace.
    public static let containerNamespace = "urn:oasis:names:tc:opendocument:xmlns:container"
}
