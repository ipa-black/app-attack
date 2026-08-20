package org.apache.ldap.common.berlib.asn1.encoder.modify;

import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TupleNode;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.berlib.asn1.encoder.EncoderUtils;
import org.apache.ldap.common.berlib.asn1.encoder.LdapResultEncoder;
import org.apache.ldap.common.message.ModifyResponse;
/* loaded from: classes3.dex */
public class ModifyResponseEncoder {
    public static final ModifyResponseEncoder INSTANCE = new ModifyResponseEncoder();

    public TupleNode encode(ModifyResponse modifyResponse) {
        DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode(modifyResponse.getMessageId());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        DefaultMutableTupleNode defaultMutableTupleNode3 = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode3.getTuple().setTag(LdapTag.MODIFY_RESPONSE, false);
        defaultMutableTupleNode3.getTuple().setLength(-2);
        LdapResultEncoder.INSTANCE.encode(defaultMutableTupleNode3, modifyResponse.getLdapResult());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode3);
        defaultMutableTupleNode3.setParent(defaultMutableTupleNode);
        return defaultMutableTupleNode;
    }
}
