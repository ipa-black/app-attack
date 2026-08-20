package org.apache.ldap.common.berlib.asn1.decoder.search;

import org.apache.asn1.ber.TagEnum;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.message.LockableAttributesImpl;
import org.apache.ldap.common.message.SearchResponseEntryImpl;
/* loaded from: classes3.dex */
public class SearchResponseEntryAttributesRule extends AbstractRule {
    private final TagEnum expected;

    public SearchResponseEntryAttributesRule(TagEnum tagEnum) {
        this.expected = tagEnum;
    }

    public SearchResponseEntryAttributesRule() {
        this.expected = UniversalTag.SEQUENCE_SEQUENCE_OF;
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
        if (i != this.expected.getTagId()) {
            throw new IllegalArgumentException(new StringBuffer("expected tag with id ").append(this.expected.getTagId()).append(" for ").append(this.expected).append(" but got ").append(i).append("instead").toString());
        }
        SearchResponseEntryImpl searchResponseEntryImpl = (SearchResponseEntryImpl) getDigester().peek();
        LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl(searchResponseEntryImpl);
        searchResponseEntryImpl.setAttributes(lockableAttributesImpl);
        getDigester().push(lockableAttributesImpl);
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        getDigester().pop();
    }
}
