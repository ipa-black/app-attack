package org.apache.ldap.common.berlib.asn1.encoder;

import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TupleNode;
import org.apache.asn1.ber.primitives.UniversalTag;
/* loaded from: classes3.dex */
public class AttributeEncoder {
    public static final AttributeEncoder INSTANCE = new AttributeEncoder();

    public TupleNode encode(Attribute attribute) {
        NamingEnumeration namingEnumeration;
        TupleNode encode;
        DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode(attribute.getID());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        try {
            namingEnumeration = attribute.getAll();
        } catch (NamingException e2) {
            e2.printStackTrace();
            namingEnumeration = null;
        }
        DefaultMutableTupleNode defaultMutableTupleNode3 = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode3.getTuple().setTag(UniversalTag.SET_SET_OF, false);
        defaultMutableTupleNode3.getTuple().setLength(-2);
        while (namingEnumeration.hasMoreElements()) {
            Object nextElement = namingEnumeration.nextElement();
            if (nextElement instanceof String) {
                encode = EncoderUtils.encode((String) nextElement);
            } else {
                encode = EncoderUtils.encode((byte[]) nextElement);
            }
            DefaultMutableTupleNode defaultMutableTupleNode4 = (DefaultMutableTupleNode) encode;
            defaultMutableTupleNode3.addFront(defaultMutableTupleNode4);
            defaultMutableTupleNode4.setParent(defaultMutableTupleNode3);
        }
        defaultMutableTupleNode.addLast(defaultMutableTupleNode3);
        defaultMutableTupleNode3.setParent(defaultMutableTupleNode);
        return defaultMutableTupleNode;
    }
}
