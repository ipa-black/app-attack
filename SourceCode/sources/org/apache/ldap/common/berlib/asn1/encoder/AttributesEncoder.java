package org.apache.ldap.common.berlib.asn1.encoder;

import javax.naming.NamingEnumeration;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TupleNode;
import org.apache.asn1.ber.primitives.UniversalTag;
/* loaded from: classes3.dex */
public class AttributesEncoder {
    public static final AttributesEncoder INSTANCE = new AttributesEncoder();

    public TupleNode encode(Attributes attributes) {
        DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode.getTuple().setLength(-2);
        NamingEnumeration all = attributes.getAll();
        while (all.hasMoreElements()) {
            DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) AttributeEncoder.INSTANCE.encode((Attribute) all.nextElement());
            defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
            defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        }
        return defaultMutableTupleNode;
    }
}
