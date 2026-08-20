package org.apache.asn1.ber.digester.rules;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TagEnum;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.asn1.ber.primitives.UniversalTag;
/* loaded from: classes5.dex */
public class PrimitiveOctetStringRule extends AbstractRule {
    private final ByteAccumulator accumulator;
    private boolean isConstructed;
    private final TagEnum tag;

    public PrimitiveOctetStringRule() {
        this.accumulator = new ByteAccumulator(0);
        this.isConstructed = false;
        this.tag = UniversalTag.OCTET_STRING;
    }

    public PrimitiveOctetStringRule(TagEnum tagEnum) {
        this.accumulator = new ByteAccumulator(0);
        this.isConstructed = false;
        this.tag = tagEnum;
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        boolean z2 = !z;
        this.isConstructed = z2;
        if (!z2 && this.tag.getTagId() != i) {
            throw new IllegalArgumentException(new StringBuffer("Expecting ").append(this.tag.getName()).append(" with an id of ").append(this.tag.getTagId()).append(" but instead got a tag id of ").append(i).toString());
        }
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void length(int i) {
        if (this.isConstructed || -2 == i) {
            return;
        }
        this.accumulator.ensureCapacity(i);
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void value(ByteBuffer byteBuffer) {
        if (this.isConstructed || byteBuffer == null || !byteBuffer.hasRemaining()) {
            return;
        }
        this.accumulator.fill(byteBuffer);
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        if (this.isConstructed) {
            return;
        }
        getDigester().push(this.accumulator.drain(0));
        this.isConstructed = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteAccumulator getAccumulator() {
        return this.accumulator;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isConstructed() {
        return this.isConstructed;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setConstructed(boolean z) {
        this.isConstructed = z;
    }

    protected TagEnum getTag() {
        return this.tag;
    }
}
