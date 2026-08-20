package org.apache.ldap.common.berlib.asn1.encoder.bind;

import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TupleNode;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.commons.lang.NotImplementedException;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.berlib.asn1.encoder.EncoderUtils;
import org.apache.ldap.common.message.BindRequest;
/* loaded from: classes3.dex */
public class BindRequestEncoder {
    public static final BindRequestEncoder INSTANCE = new BindRequestEncoder();

    public TupleNode encode(BindRequest bindRequest) {
        DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode(bindRequest.getMessageId());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        DefaultMutableTupleNode defaultMutableTupleNode3 = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode3.getTuple().setTag(LdapTag.BIND_REQUEST, false);
        defaultMutableTupleNode3.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode4 = (DefaultMutableTupleNode) EncoderUtils.encode(bindRequest.getVersion3() ? 3 : 2);
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode4);
        defaultMutableTupleNode4.setParent(defaultMutableTupleNode3);
        DefaultMutableTupleNode defaultMutableTupleNode5 = (DefaultMutableTupleNode) EncoderUtils.encode(bindRequest.getName());
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode5);
        defaultMutableTupleNode5.setParent(defaultMutableTupleNode3);
        if (bindRequest.isSimple()) {
            DefaultMutableTupleNode defaultMutableTupleNode6 = (DefaultMutableTupleNode) EncoderUtils.encode(LdapTag.CONTEXT_SPECIFIC_TAG_0, bindRequest.getCredentials());
            defaultMutableTupleNode3.addLast(defaultMutableTupleNode6);
            defaultMutableTupleNode6.setParent(defaultMutableTupleNode3);
            defaultMutableTupleNode.addLast(defaultMutableTupleNode3);
            defaultMutableTupleNode3.setParent(defaultMutableTupleNode);
            return defaultMutableTupleNode;
        }
        throw new NotImplementedException("SASL not yet implemented!");
    }
}
