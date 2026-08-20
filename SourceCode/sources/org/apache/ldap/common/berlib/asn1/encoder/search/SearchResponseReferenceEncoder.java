package org.apache.ldap.common.berlib.asn1.encoder.search;

import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TupleNode;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.berlib.asn1.encoder.EncoderUtils;
import org.apache.ldap.common.berlib.asn1.encoder.ReferralEncoder;
import org.apache.ldap.common.message.SearchResponseReference;
/* loaded from: classes3.dex */
public class SearchResponseReferenceEncoder {
    public static final SearchResponseReferenceEncoder INSTANCE = new SearchResponseReferenceEncoder();

    public TupleNode encode(SearchResponseReference searchResponseReference) {
        DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode(searchResponseReference.getMessageId());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        DefaultMutableTupleNode defaultMutableTupleNode3 = (DefaultMutableTupleNode) ReferralEncoder.INSTANCE.encode(searchResponseReference.getReferral());
        defaultMutableTupleNode3.getTuple().setTag(LdapTag.SEARCH_RESULT_REFERENCE, false);
        defaultMutableTupleNode3.getTuple().setLength(-2);
        defaultMutableTupleNode.addLast(defaultMutableTupleNode3);
        defaultMutableTupleNode3.setParent(defaultMutableTupleNode);
        return defaultMutableTupleNode;
    }
}
