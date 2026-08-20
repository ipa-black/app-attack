package org.apache.ldap.common.berlib.asn1.encoder;

import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.TagEnum;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TupleNode;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.message.Referral;
/* loaded from: classes3.dex */
public class ReferralEncoder {
    public static final ReferralEncoder INSTANCE = new ReferralEncoder();

    public TupleNode encode(Referral referral) {
        Tuple tuple = new Tuple();
        tuple.setTag((TagEnum) LdapTag.REFERRAL_TAG, false);
        tuple.setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode(tuple);
        for (String str : referral.getLdapUrls()) {
            DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode(str);
            defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
            defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        }
        return defaultMutableTupleNode;
    }
}
