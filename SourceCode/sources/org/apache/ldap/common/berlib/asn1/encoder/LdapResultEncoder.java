package org.apache.ldap.common.berlib.asn1.encoder;

import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.message.LdapResult;
/* loaded from: classes3.dex */
public class LdapResultEncoder {
    public static final LdapResultEncoder INSTANCE = new LdapResultEncoder();

    public void encode(DefaultMutableTupleNode defaultMutableTupleNode, LdapResult ldapResult) {
        DefaultMutableTupleNode defaultMutableTupleNode2;
        DefaultMutableTupleNode defaultMutableTupleNode3 = (DefaultMutableTupleNode) EncoderUtils.encode(UniversalTag.ENUMERATED, ldapResult.getResultCode().getValue());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode3);
        defaultMutableTupleNode3.setParent(defaultMutableTupleNode);
        if (ldapResult.getMatchedDn() == null) {
            defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode("");
        } else {
            defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode(ldapResult.getMatchedDn());
        }
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        if (ldapResult.getErrorMessage() != null) {
            DefaultMutableTupleNode defaultMutableTupleNode4 = (DefaultMutableTupleNode) EncoderUtils.encode(ldapResult.getErrorMessage());
            defaultMutableTupleNode.addLast(defaultMutableTupleNode4);
            defaultMutableTupleNode4.setParent(defaultMutableTupleNode);
        } else {
            DefaultMutableTupleNode defaultMutableTupleNode5 = (DefaultMutableTupleNode) EncoderUtils.encode("");
            defaultMutableTupleNode.addLast(defaultMutableTupleNode5);
            defaultMutableTupleNode5.setParent(defaultMutableTupleNode);
        }
        if (ldapResult.getReferral() == null || ldapResult.getReferral().getLdapUrls().size() <= 0) {
            return;
        }
        DefaultMutableTupleNode defaultMutableTupleNode6 = (DefaultMutableTupleNode) ReferralEncoder.INSTANCE.encode(ldapResult.getReferral());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode6);
        defaultMutableTupleNode6.setParent(defaultMutableTupleNode);
    }
}
