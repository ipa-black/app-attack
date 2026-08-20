package org.apache.ldap.common.berlib.asn1.encoder;

import javax.naming.directory.ModificationItem;
import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TupleNode;
import org.apache.asn1.ber.primitives.UniversalTag;
/* loaded from: classes3.dex */
public class ModificationItemEncoder {
    public static final ModificationItemEncoder INSTANCE = new ModificationItemEncoder();

    public TupleNode encode(ModificationItem modificationItem) {
        DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode(UniversalTag.ENUMERATED, getLdapModOp(modificationItem.getModificationOp()));
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        DefaultMutableTupleNode defaultMutableTupleNode3 = (DefaultMutableTupleNode) AttributeEncoder.INSTANCE.encode(modificationItem.getAttribute());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode3);
        defaultMutableTupleNode3.setParent(defaultMutableTupleNode);
        return defaultMutableTupleNode;
    }

    private int getLdapModOp(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return 1;
                }
                throw new IllegalArgumentException("Unrecognized JNDI ModificationItem operation");
            }
            return 2;
        }
        return 0;
    }
}
