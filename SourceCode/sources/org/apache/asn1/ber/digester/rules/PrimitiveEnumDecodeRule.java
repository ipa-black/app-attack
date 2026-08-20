package org.apache.asn1.ber.digester.rules;

import org.apache.asn1.ber.TagEnum;
import org.apache.asn1.ber.primitives.UniversalTag;
/* loaded from: classes5.dex */
public class PrimitiveEnumDecodeRule extends PrimitiveIntDecodeRule {
    public PrimitiveEnumDecodeRule() {
        super(UniversalTag.ENUMERATED);
    }

    public PrimitiveEnumDecodeRule(TagEnum tagEnum) {
        super(tagEnum);
    }
}
