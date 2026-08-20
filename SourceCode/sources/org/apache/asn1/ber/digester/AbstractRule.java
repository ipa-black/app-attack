package org.apache.asn1.ber.digester;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TypeClass;
/* loaded from: classes5.dex */
public abstract class AbstractRule implements Rule {
    private BERDigester digester = null;

    @Override // org.apache.asn1.ber.digester.Rule
    public void finish() {
    }

    @Override // org.apache.asn1.ber.digester.Rule
    public void length(int i) {
    }

    @Override // org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
    }

    @Override // org.apache.asn1.ber.digester.Rule
    public void value(ByteBuffer byteBuffer) {
    }

    @Override // org.apache.asn1.ber.digester.Rule
    public BERDigester getDigester() {
        return this.digester;
    }

    @Override // org.apache.asn1.ber.digester.Rule
    public void setDigester(BERDigester bERDigester) {
        this.digester = bERDigester;
    }
}
