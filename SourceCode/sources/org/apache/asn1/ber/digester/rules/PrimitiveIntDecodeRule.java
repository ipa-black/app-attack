package org.apache.asn1.ber.digester.rules;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TagEnum;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.asn1.ber.primitives.PrimitiveUtils;
import org.apache.asn1.ber.primitives.UniversalTag;
/* loaded from: classes5.dex */
public class PrimitiveIntDecodeRule extends AbstractRule {
    private int length;
    private int pos;
    private final TagEnum tag;
    private final byte[] value;

    public PrimitiveIntDecodeRule() {
        this.value = new byte[4];
        this.tag = UniversalTag.INTEGER;
    }

    public PrimitiveIntDecodeRule(TagEnum tagEnum) {
        this.value = new byte[4];
        this.tag = tagEnum;
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        if (i != this.tag.getTagId()) {
            throw new IllegalArgumentException(new StringBuffer("Expecting ").append(this.tag.getName()).append(" with an id of ").append(this.tag.getTagId()).append(" but instead got a tag id of ").append(i).toString());
        }
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void length(int i) {
        if (i > 4 || i < 0) {
            throw new IllegalArgumentException(new StringBuffer("The target primitive for this rule can only hold integers of 32 bits or 4 bytes.  The length of the field however is ").append(i).toString());
        }
        this.length = i;
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void value(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return;
        }
        while (byteBuffer.hasRemaining()) {
            int i = this.pos;
            if (i + 1 > this.length) {
                return;
            }
            this.value[i] = byteBuffer.get();
            this.pos++;
        }
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        int decodeInt = PrimitiveUtils.decodeInt(this.value, 0, this.length);
        if (getDigester() != null) {
            getDigester().pushInt(decodeInt);
        }
        this.pos = 0;
        this.length = 0;
    }

    boolean equals(byte b2, int i) {
        return this.value[i] == b2;
    }
}
