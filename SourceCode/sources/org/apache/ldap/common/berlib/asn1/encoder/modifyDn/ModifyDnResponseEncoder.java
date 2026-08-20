package org.apache.ldap.common.berlib.asn1.encoder.modifyDn;

import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TupleNode;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.berlib.asn1.encoder.EncoderUtils;
import org.apache.ldap.common.berlib.asn1.encoder.LdapResultEncoder;
import org.apache.ldap.common.message.ModifyDnResponse;
/* loaded from: classes3.dex */
public class ModifyDnResponseEncoder {
    public static final ModifyDnResponseEncoder INSTANCE = new ModifyDnResponseEncoder();

    public TupleNode encode(ModifyDnResponse modifyDnResponse) {
        DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode(modifyDnResponse.getMessageId());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        DefaultMutableTupleNode defaultMutableTupleNode3 = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode3.getTuple().setTag(LdapTag.MODIFYDN_RESPONSE, false);
        defaultMutableTupleNode3.getTuple().setLength(-2);
        LdapResultEncoder.INSTANCE.encode(defaultMutableTupleNode3, modifyDnResponse.getLdapResult());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode3);
        defaultMutableTupleNode3.setParent(defaultMutableTupleNode);
        return defaultMutableTupleNode;
    }
}
