package org.apache.ldap.common.berlib.asn1.encoder.compare;

import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TupleNode;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.berlib.asn1.encoder.EncoderUtils;
import org.apache.ldap.common.message.CompareRequest;
/* loaded from: classes3.dex */
public class CompareRequestEncoder {
    public static final CompareRequestEncoder INSTANCE = new CompareRequestEncoder();

    public TupleNode encode(CompareRequest compareRequest) {
        DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode(compareRequest.getMessageId());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        DefaultMutableTupleNode defaultMutableTupleNode3 = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode3.getTuple().setTag(LdapTag.COMPARE_REQUEST, false);
        defaultMutableTupleNode3.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode4 = (DefaultMutableTupleNode) EncoderUtils.encode(compareRequest.getName());
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode4);
        defaultMutableTupleNode4.setParent(defaultMutableTupleNode3);
        DefaultMutableTupleNode defaultMutableTupleNode5 = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode5.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode5.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode6 = (DefaultMutableTupleNode) EncoderUtils.encode(compareRequest.getAttributeId());
        defaultMutableTupleNode5.addLast(defaultMutableTupleNode6);
        defaultMutableTupleNode6.setParent(defaultMutableTupleNode5);
        DefaultMutableTupleNode defaultMutableTupleNode7 = (DefaultMutableTupleNode) EncoderUtils.encode(compareRequest.getAssertionValue());
        defaultMutableTupleNode5.addLast(defaultMutableTupleNode7);
        defaultMutableTupleNode7.setParent(defaultMutableTupleNode5);
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode5);
        defaultMutableTupleNode5.setParent(defaultMutableTupleNode3);
        defaultMutableTupleNode.addLast(defaultMutableTupleNode3);
        defaultMutableTupleNode3.setParent(defaultMutableTupleNode);
        return defaultMutableTupleNode;
    }
}
