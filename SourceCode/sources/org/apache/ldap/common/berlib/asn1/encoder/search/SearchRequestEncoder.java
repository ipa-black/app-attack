package org.apache.ldap.common.berlib.asn1.encoder.search;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.TagEnum;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TupleNode;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.berlib.asn1.encoder.EncoderUtils;
import org.apache.ldap.common.filter.BranchNode;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.filter.ExtensibleNode;
import org.apache.ldap.common.filter.LeafNode;
import org.apache.ldap.common.filter.PresenceNode;
import org.apache.ldap.common.filter.SimpleNode;
import org.apache.ldap.common.filter.SubstringNode;
import org.apache.ldap.common.message.SearchRequest;
/* loaded from: classes3.dex */
public class SearchRequestEncoder {
    public static final SearchRequestEncoder INSTANCE = new SearchRequestEncoder();

    public TupleNode encode(SearchRequest searchRequest) {
        DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode(searchRequest.getMessageId());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        DefaultMutableTupleNode defaultMutableTupleNode3 = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode3.getTuple().setTag(LdapTag.SEARCH_REQUEST, false);
        defaultMutableTupleNode3.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode4 = (DefaultMutableTupleNode) EncoderUtils.encode(searchRequest.getBase());
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode4);
        defaultMutableTupleNode4.setParent(defaultMutableTupleNode3);
        DefaultMutableTupleNode defaultMutableTupleNode5 = (DefaultMutableTupleNode) EncoderUtils.encode(UniversalTag.ENUMERATED, searchRequest.getScope().getLdapValue());
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode5);
        defaultMutableTupleNode5.setParent(defaultMutableTupleNode3);
        DefaultMutableTupleNode defaultMutableTupleNode6 = (DefaultMutableTupleNode) EncoderUtils.encode(UniversalTag.ENUMERATED, searchRequest.getDerefAliases().getValue());
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode6);
        defaultMutableTupleNode6.setParent(defaultMutableTupleNode3);
        DefaultMutableTupleNode defaultMutableTupleNode7 = (DefaultMutableTupleNode) EncoderUtils.encode(searchRequest.getSizeLimit());
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode7);
        defaultMutableTupleNode7.setParent(defaultMutableTupleNode3);
        DefaultMutableTupleNode defaultMutableTupleNode8 = (DefaultMutableTupleNode) EncoderUtils.encode(searchRequest.getTimeLimit());
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode8);
        defaultMutableTupleNode8.setParent(defaultMutableTupleNode3);
        DefaultMutableTupleNode defaultMutableTupleNode9 = (DefaultMutableTupleNode) EncoderUtils.encode(searchRequest.getTypesOnly());
        defaultMutableTupleNode3.addLast(defaultMutableTupleNode9);
        defaultMutableTupleNode9.setParent(defaultMutableTupleNode3);
        encode(defaultMutableTupleNode3, searchRequest.getFilter());
        DefaultMutableTupleNode encode = encode(searchRequest.getAttributes());
        defaultMutableTupleNode3.addLast(encode);
        encode.setParent(defaultMutableTupleNode3);
        defaultMutableTupleNode.addLast(defaultMutableTupleNode3);
        defaultMutableTupleNode3.setParent(defaultMutableTupleNode);
        return defaultMutableTupleNode;
    }

    public void encode(DefaultMutableTupleNode defaultMutableTupleNode, TagEnum tagEnum, SimpleNode simpleNode) {
        DefaultMutableTupleNode defaultMutableTupleNode2 = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode2.getTuple().setTag(tagEnum, false);
        defaultMutableTupleNode2.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode3 = (DefaultMutableTupleNode) EncoderUtils.encode(simpleNode.getAttribute());
        defaultMutableTupleNode2.addLast(defaultMutableTupleNode3);
        defaultMutableTupleNode3.setParent(defaultMutableTupleNode2);
        DefaultMutableTupleNode defaultMutableTupleNode4 = (DefaultMutableTupleNode) EncoderUtils.encode(simpleNode.getValue());
        defaultMutableTupleNode2.addLast(defaultMutableTupleNode4);
        defaultMutableTupleNode4.setParent(defaultMutableTupleNode2);
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
    }

    public void encode(DefaultMutableTupleNode defaultMutableTupleNode, TagEnum tagEnum, SubstringNode substringNode) {
        DefaultMutableTupleNode defaultMutableTupleNode2 = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode2.getTuple().setTag(tagEnum, false);
        defaultMutableTupleNode2.getTuple().setLength(-2);
        DefaultMutableTupleNode defaultMutableTupleNode3 = (DefaultMutableTupleNode) EncoderUtils.encode(substringNode.getAttribute());
        defaultMutableTupleNode2.addLast(defaultMutableTupleNode3);
        defaultMutableTupleNode3.setParent(defaultMutableTupleNode2);
        if (substringNode.getInitial() != null || substringNode.getFinal() != null || substringNode.getAny().size() > 0) {
            DefaultMutableTupleNode defaultMutableTupleNode4 = new DefaultMutableTupleNode(new Tuple());
            defaultMutableTupleNode4.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
            defaultMutableTupleNode4.getTuple().setLength(-2);
            if (substringNode.getInitial() != null) {
                DefaultMutableTupleNode defaultMutableTupleNode5 = (DefaultMutableTupleNode) EncoderUtils.encode(LdapTag.CONTEXT_SPECIFIC_TAG_0, substringNode.getInitial());
                defaultMutableTupleNode4.addLast(defaultMutableTupleNode5);
                defaultMutableTupleNode5.setParent(defaultMutableTupleNode4);
            }
            if (substringNode.getAny().size() > 0) {
                for (int i = 0; i < substringNode.getAny().size(); i++) {
                    DefaultMutableTupleNode defaultMutableTupleNode6 = (DefaultMutableTupleNode) EncoderUtils.encode(LdapTag.CONTEXT_SPECIFIC_TAG_1, (String) substringNode.getAny().get(i));
                    defaultMutableTupleNode4.addLast(defaultMutableTupleNode6);
                    defaultMutableTupleNode6.setParent(defaultMutableTupleNode4);
                }
            }
            if (substringNode.getFinal() != null) {
                DefaultMutableTupleNode defaultMutableTupleNode7 = (DefaultMutableTupleNode) EncoderUtils.encode(LdapTag.CONTEXT_SPECIFIC_TAG_2, substringNode.getFinal());
                defaultMutableTupleNode4.addLast(defaultMutableTupleNode7);
                defaultMutableTupleNode7.setParent(defaultMutableTupleNode4);
            }
            defaultMutableTupleNode2.addLast(defaultMutableTupleNode4);
            defaultMutableTupleNode4.setParent(defaultMutableTupleNode2);
        }
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
    }

    public void encode(DefaultMutableTupleNode defaultMutableTupleNode, TagEnum tagEnum, PresenceNode presenceNode) {
        DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode(LdapTag.CONTEXT_SPECIFIC_TAG_7, presenceNode.getAttribute());
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
    }

    public void encode(DefaultMutableTupleNode defaultMutableTupleNode, TagEnum tagEnum, ExtensibleNode extensibleNode) {
        DefaultMutableTupleNode defaultMutableTupleNode2 = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode2.getTuple().setTag(tagEnum, false);
        defaultMutableTupleNode2.getTuple().setLength(-2);
        if (extensibleNode.getMatchingRuleId() != null) {
            DefaultMutableTupleNode defaultMutableTupleNode3 = (DefaultMutableTupleNode) EncoderUtils.encode(LdapTag.CONTEXT_SPECIFIC_TAG_1, extensibleNode.getMatchingRuleId());
            defaultMutableTupleNode2.addLast(defaultMutableTupleNode3);
            defaultMutableTupleNode3.setParent(defaultMutableTupleNode2);
        }
        if (extensibleNode.getAttribute() != null) {
            DefaultMutableTupleNode defaultMutableTupleNode4 = (DefaultMutableTupleNode) EncoderUtils.encode(LdapTag.CONTEXT_SPECIFIC_TAG_2, extensibleNode.getAttribute());
            defaultMutableTupleNode2.addLast(defaultMutableTupleNode4);
            defaultMutableTupleNode4.setParent(defaultMutableTupleNode2);
        }
        DefaultMutableTupleNode defaultMutableTupleNode5 = (DefaultMutableTupleNode) EncoderUtils.encode(LdapTag.CONTEXT_SPECIFIC_TAG_3, extensibleNode.getValue());
        defaultMutableTupleNode2.addLast(defaultMutableTupleNode5);
        defaultMutableTupleNode5.setParent(defaultMutableTupleNode2);
        DefaultMutableTupleNode defaultMutableTupleNode6 = (DefaultMutableTupleNode) EncoderUtils.encode(LdapTag.CONTEXT_SPECIFIC_TAG_4, extensibleNode.dnAttributes());
        defaultMutableTupleNode2.addLast(defaultMutableTupleNode6);
        defaultMutableTupleNode6.setParent(defaultMutableTupleNode2);
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
    }

    public void encodeBranchNode(DefaultMutableTupleNode defaultMutableTupleNode, BranchNode branchNode) {
        DefaultMutableTupleNode defaultMutableTupleNode2 = new DefaultMutableTupleNode(new Tuple());
        if (branchNode.isNegation()) {
            defaultMutableTupleNode2.getTuple().setTag((TagEnum) LdapTag.CONTEXT_SPECIFIC_TAG_2, false);
            defaultMutableTupleNode2.getTuple().setLength(-2);
            encode(defaultMutableTupleNode2, branchNode.getChild());
            defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
            defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
            return;
        }
        if (branchNode.isConjunction()) {
            defaultMutableTupleNode2.getTuple().setTag((TagEnum) LdapTag.CONTEXT_SPECIFIC_TAG_0, false);
        } else if (branchNode.isDisjunction()) {
            defaultMutableTupleNode2.getTuple().setTag((TagEnum) LdapTag.CONTEXT_SPECIFIC_TAG_1, false);
        }
        defaultMutableTupleNode2.getTuple().setLength(-2);
        ArrayList children = branchNode.getChildren();
        for (int i = 0; i < children.size(); i++) {
            encode(defaultMutableTupleNode2, (ExprNode) children.get(i));
        }
        defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
        defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void encode(DefaultMutableTupleNode defaultMutableTupleNode, ExprNode exprNode) {
        if (exprNode.isLeaf()) {
            LeafNode leafNode = (LeafNode) exprNode;
            switch (leafNode.getAssertionType()) {
                case 0:
                    encode(defaultMutableTupleNode, LdapTag.CONTEXT_SPECIFIC_TAG_3, (SimpleNode) leafNode);
                    return;
                case 1:
                    encode(defaultMutableTupleNode, LdapTag.CONTEXT_SPECIFIC_TAG_7, (PresenceNode) leafNode);
                    break;
                case 2:
                    encode(defaultMutableTupleNode, (SubstringNode) leafNode);
                    return;
                case 3:
                    encode(defaultMutableTupleNode, LdapTag.CONTEXT_SPECIFIC_TAG_5, (SimpleNode) leafNode);
                    return;
                case 4:
                    encode(defaultMutableTupleNode, LdapTag.CONTEXT_SPECIFIC_TAG_6, (SimpleNode) leafNode);
                    return;
                case 5:
                    break;
                case 6:
                    encode(defaultMutableTupleNode, (ExtensibleNode) leafNode);
                    return;
                default:
                    throw new IllegalArgumentException(new StringBuffer("Unrecognized assertion type value: ").append(leafNode.getAssertionType()).toString());
            }
            encode(defaultMutableTupleNode, LdapTag.CONTEXT_SPECIFIC_TAG_8, (SimpleNode) leafNode);
            return;
        }
        encodeBranchNode(defaultMutableTupleNode, (BranchNode) exprNode);
    }

    private DefaultMutableTupleNode encode(Collection collection) {
        DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode(new Tuple());
        defaultMutableTupleNode.getTuple().setTag(UniversalTag.SEQUENCE_SEQUENCE_OF, false);
        defaultMutableTupleNode.getTuple().setLength(-2);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) EncoderUtils.encode((String) it.next());
            defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
            defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
        }
        return defaultMutableTupleNode;
    }
}
