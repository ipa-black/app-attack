package org.apache.ldap.common.berlib.asn1.decoder.add;

import org.apache.asn1.ber.TagEnum;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.message.AddRequestImpl;
import org.apache.ldap.common.message.LockableAttributesImpl;
/* loaded from: classes3.dex */
public class AddRequestAttributesRule extends AbstractRule {
    private final TagEnum expected;

    public AddRequestAttributesRule(TagEnum tagEnum) {
        this.expected = tagEnum;
    }

    public AddRequestAttributesRule() {
        this.expected = UniversalTag.SEQUENCE_SEQUENCE_OF;
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
        if (i != this.expected.getTagId()) {
            throw new IllegalArgumentException(new StringBuffer("expected tag with id ").append(this.expected.getTagId()).append(" for ").append(this.expected).append(" but got ").append(i).append("instead").toString());
        }
        AddRequestImpl addRequestImpl = (AddRequestImpl) getDigester().peek();
        LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl(addRequestImpl);
        addRequestImpl.setEntry(lockableAttributesImpl);
        getDigester().push(lockableAttributesImpl);
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        getDigester().pop();
    }
}
