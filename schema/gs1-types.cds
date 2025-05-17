// gs1-types.cds
namespace gs1;

// GLN (Global Location Number): 13 digits
type GLN         : String(13);
// GTIN (Global Trade Item Number): variable length (usually 8, 12, 13, or 14)
type GTIN        : String(14);
// SSCC (Serial Shipping Container Code): always 18 digits
type SSCC        : String(18);
// GRAI (Global Returnable Asset Identifier): EPC-style URI (example: urn:epc:id:grai:1234567.890.1234)
type GRAI        : String(50);
// GIAI (Global Individual Asset Identifier): EPC-style URI
type GIAI        : String(50);
// GSRN (Global Service Relation Number): 18 digits
type GSRN        : String(18);
// Optional type examples (nullable)
type OptionalGLN : String(13);
//can be up to 50 chars
type SGLN        : String(50);
