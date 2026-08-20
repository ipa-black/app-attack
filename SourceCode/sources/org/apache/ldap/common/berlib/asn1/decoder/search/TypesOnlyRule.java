package org.apache.ldap.common.berlib.asn1.decoder.search;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TagEnum;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.asn1.ber.primitives.PrimitiveUtils;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.message.SearchRequestImpl;
/* loaded from: classes3.dex */
public class TypesOnlyRule extends AbstractRule {
    private byte value = 0;
    private boolean octetSet = false;
    private final TagEnum tag = UniversalTag.BOOLEAN;

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        if (i != this.tag.getTagId()) {
            throw new IllegalArgumentException(new StringBuffer("Expecting ").append(this.tag.getName()).append(" with an id of ").append(this.tag.getTagId()).append(" but instead got a tag id of ").append(i).toString());
        }
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void length(int i) {
        if (i != 1) {
            throw new IllegalArgumentException(new StringBuffer("The target primitive for this rule only requires a single octet with a length of 1.  The length of the field however is ").append(i).toString());
        }
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void value(ByteBuffer byteBuffer) {
        if (this.octetSet) {
            throw new IllegalArgumentException("The target primitive for this rule only requires a single octet with a length of 1.  That octet has already been set.");
        }
        while (byteBuffer.hasRemaining()) {
            this.value = byteBuffer.get();
            this.octetSet = true;
        }
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        ((SearchRequestImpl) getDigester().peek(1)).setTypesOnly(PrimitiveUtils.berDecodeBoolean(this.value));
        ((SearchRequestProcessing) getDigester().peek()).next();
        this.value = (byte) 0;
        this.octetSet = false;
    }
}
