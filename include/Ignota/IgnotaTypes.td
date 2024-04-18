#ifndef IGNOTA_TYPES
#define IGNOTA_TYPES

include "mlir/IR/AttrTypeBase.td"
include "Ignota/IgnotaDialect.td"


class Ignota_Type<string name, string typeMnemonic, list<Trait> traits = []>
    : TypeDef<Ignota_Dialect, name, traits> {
  let mnemonic = typeMnemonic;
}

def Ignota_CustomType : Ignota_Type<"Custom", "custom"> {
    let summary = "Ignota custom type";
    let description = "Custom type in ignota dialect";
    let parameters = (ins StringRefParameter<"the custom value">:$value);
    let assemblyFormat = "`<` $value `>`";
}

#endif // IGNOTA_TYPES