package org.apache.ldap.common.berlib.asn1.encoder.modifyDn;

import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TupleNode;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.berlib.asn1.encoder.EncoderUtils;
import org.apache.ldap.common.message.ModifyDnRequest;
/* loaded from: classes3.dex */
public class ModifyDnRequestEncoder {
    public static final ModifyDnRequestEncoder INSTANCE = new ModifyDnRequestEncoder();

    public TupleNode encode(ModifyDnRequest modifyDnRequest) {
        DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode(modifyDnRequest.getMessageId());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        DefaultMutableTupleNode defaultMutableTupleNode3 = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode3.getTuple().setTag(LdapTag.MODIFYDN_REQUEST, false);
        defaultMutableTupleNode3.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode4 = (DefaultMutableTupleNode) EncoderUtils.encode(modifyDnRequest.getName());
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode4);
        defaultMutableTupleNode4.setParent(defaultMutableTupleNode3);
        DefaultMutableTupleNode defaultMutableTupleNode5 = (DefaultMutableTupleNode) EncoderUtils.encode(modifyDnRequest.getNewRdn());
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode5);
        defaultMutableTupleNode5.setParent(defaultMutableTupleNode3);
        DefaultMutableTupleNode defaultMutableTupleNode6 = (DefaultMutableTupleNode) EncoderUtils.encode(modifyDnRequest.getDeleteOldRdn());
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode6);
        defaultMutableTupleNode6.setParent(defaultMutableTupleNode3);
        if (modifyDnRequest.getNewSuperior() != null) {
            DefaultMutableTupleNode defaultMutableTupleNode7 = (DefaultMutableTupleNode) EncoderUtils.encode(LdapTag.CONTEXT_SPECIFIC_TAG_0, modifyDnRequest.getNewSuperior());
            defaultMutableTupleNode3.addLast(defaultMutableTupleNode7);
            defaultMutableTupleNode7.setParent(defaultMutableTupleNode3);
        }
        defaultMutableTupleNode.addLast(defaultMutableTupleNode3);
        defaultMutableTupleNode3.setParent(defaultMutableTupleNode);
        return defaultMutableTupleNode;
    }
}
