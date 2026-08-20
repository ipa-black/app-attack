package org.apache.asn1.ber.primitives;

import org.apache.asn1.ber.Tag;
import org.apache.asn1.ber.TagEnum;
import org.apache.asn1.ber.TypeClass;
/* loaded from: classes5.dex */
public class ContextSpecificTag extends TagEnum {
    public ContextSpecificTag(int i, boolean z) {
        super(new StringBuffer().append(z ? "constructed " : "primitive ").append("[").append(i).append("]").toString(), Tag.getIntEncodedTag(TypeClass.CONTEXT_SPECIFIC, i, z), i);
    }
}
