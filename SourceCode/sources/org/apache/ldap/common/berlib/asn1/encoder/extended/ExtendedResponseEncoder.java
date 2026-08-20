package org.apache.ldap.common.berlib.asn1.encoder.extended;

import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TupleNode;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.berlib.asn1.encoder.EncoderUtils;
import org.apache.ldap.common.berlib.asn1.encoder.LdapResultEncoder;
import org.apache.ldap.common.message.ExtendedResponse;
/* loaded from: classes3.dex */
public class ExtendedResponseEncoder {
    public static final ExtendedResponseEncoder INSTANCE = new ExtendedResponseEncoder();

    public TupleNode encode(ExtendedResponse extendedResponse) {
        DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode(extendedResponse.getMessageId());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        DefaultMutableTupleNode defaultMutableTupleNode3 = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode3.getTuple().setTag(LdapTag.EXTENDED_RESPONSE, false);
        defaultMutableTupleNode3.getTuple().setLength(-2);
        LdapResultEncoder.INSTANCE.encode(defaultMutableTupleNode3, extendedResponse.getLdapResult());
        if (extendedResponse.getResponseName() != null) {
            DefaultMutableTupleNode defaultMutableTupleNode4 = (DefaultMutableTupleNode) EncoderUtils.encode(LdapTag.CONTEXT_SPECIFIC_TAG_10, extendedResponse.getResponseName());
            defaultMutableTupleNode3.addLast(defaultMutableTupleNode4);
            defaultMutableTupleNode4.setParent(defaultMutableTupleNode3);
        }
        if (extendedResponse.getResponse() != null) {
            DefaultMutableTupleNode defaultMutableTupleNode5 = (DefaultMutableTupleNode) EncoderUtils.encode(LdapTag.CONTEXT_SPECIFIC_TAG_11, extendedResponse.getResponse());
            defaultMutableTupleNode3.addLast(defaultMutableTupleNode5);
            defaultMutableTupleNode5.setParent(defaultMutableTupleNode3);
        }
        defaultMutableTupleNode.addLast(defaultMutableTupleNode3);
        defaultMutableTupleNode3.setParent(defaultMutableTupleNode);
        return defaultMutableTupleNode;
    }
}
