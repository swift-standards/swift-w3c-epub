public import W3C_EPUB_Shared

extension W3C_EPUB.Publications {
    /// Conformance levels for EPUB Publications.
    public enum ConformanceLevel: String, Sendable, Hashable, CaseIterable {
        /// The publication meets all MUST requirements.
        case conforming

        /// The publication meets all requirements for optimized delivery.
        case optimized
    }
}
