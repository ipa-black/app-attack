package org.apache.ldap.common.berlib.asn1.encoder.modify;

import javax.naming.directory.ModificationItem;
import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TupleNode;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.berlib.asn1.encoder.EncoderUtils;
import org.apache.ldap.common.berlib.asn1.encoder.ModificationItemEncoder;
import org.apache.ldap.common.message.ModifyRequest;
/* loaded from: classes3.dex */
public class ModifyRequestEncoder {
    public static final ModifyRequestEncoder INSTANCE = new ModifyRequestEncoder();

    public TupleNode encode(ModifyRequest modifyRequest) {
        DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode(modifyRequest.getMessageId());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        DefaultMutableTupleNode defaultMutableTupleNode3 = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode3.getTuple().setTag(LdapTag.MODIFY_REQUEST, false);
        defaultMutableTupleNode3.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode4 = (DefaultMutableTupleNode) EncoderUtils.encode(modifyRequest.getName());
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode4);
        defaultMutableTupleNode4.setParent(defaultMutableTupleNode3);
        DefaultMutableTupleNode defaultMutableTupleNode5 = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode5.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode5.getTuple().setLength(-2);
        for (ModificationItem modificationItem : modifyRequest.getModificationItems()) {
            DefaultMutableTupleNode defaultMutableTupleNode6 = (DefaultMutableTupleNode) ModificationItemEncoder.INSTANCE.encode(modificationItem);
            defaultMutableTupleNode5.addLast(defaultMutableTupleNode6);
            defaultMutableTupleNode6.setParent(defaultMutableTupleNode5);
        }
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode5);
        defaultMutableTupleNode5.setParent(defaultMutableTupleNode3);
        defaultMutableTupleNode.addLast(defaultMutableTupleNode3);
        defaultMutableTupleNode3.setParent(defaultMutableTupleNode);
        return defaultMutableTupleNode;
    }
}
