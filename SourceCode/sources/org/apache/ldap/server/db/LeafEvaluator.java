package org.apache.ldap.server.db;

import java.math.BigInteger;
import java.util.Comparator;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import org.apache.ldap.common.NotImplementedException;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.filter.LeafNode;
import org.apache.ldap.common.filter.PresenceNode;
import org.apache.ldap.common.filter.ScopeNode;
import org.apache.ldap.common.filter.SimpleNode;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.common.schema.MatchingRule;
import org.apache.ldap.common.schema.Normalizer;
import org.apache.ldap.server.schema.AttributeTypeRegistry;
import org.apache.ldap.server.schema.OidRegistry;
/* loaded from: classes3.dex */
public class LeafEvaluator implements Evaluator {
    private static final int EQUALITY_MATCH = 0;
    private static final int ORDERING_MATCH = 1;
    private static final int SUBSTRING_MATCH = 3;
    private AttributeTypeRegistry attributeTypeRegistry;
    private Database db;
    private OidRegistry oidRegistry;
    private ScopeEvaluator scopeEvaluator;
    private SubstringEvaluator substringEvaluator;

    public LeafEvaluator(Database database, OidRegistry oidRegistry, AttributeTypeRegistry attributeTypeRegistry, ScopeEvaluator scopeEvaluator, SubstringEvaluator substringEvaluator) {
        this.db = database;
        this.oidRegistry = oidRegistry;
        this.attributeTypeRegistry = attributeTypeRegistry;
        this.scopeEvaluator = scopeEvaluator;
        this.substringEvaluator = substringEvaluator;
    }

    public ScopeEvaluator getScopeEvaluator() {
        return this.scopeEvaluator;
    }

    public SubstringEvaluator getSubstringEvaluator() {
        return this.substringEvaluator;
    }

    @Override // org.apache.ldap.server.db.Evaluator
    public boolean evaluate(ExprNode exprNode, IndexRecord indexRecord) throws NamingException {
        if (exprNode instanceof ScopeNode) {
            return this.scopeEvaluator.evaluate(exprNode, indexRecord);
        }
        LeafNode leafNode = (LeafNode) exprNode;
        switch (leafNode.getAssertionType()) {
            case 0:
                return evalEquality((SimpleNode) exprNode, indexRecord);
            case 1:
                return evalPresence(((PresenceNode) exprNode).getAttribute(), indexRecord);
            case 2:
                return this.substringEvaluator.evaluate(exprNode, indexRecord);
            case 3:
                return evalGreater((SimpleNode) exprNode, indexRecord, true);
            case 4:
                return evalGreater((SimpleNode) exprNode, indexRecord, false);
            case 5:
                return evalEquality((SimpleNode) exprNode, indexRecord);
            case 6:
                throw new NotImplementedException();
            default:
                throw new NamingException(new StringBuffer("Unrecognized leaf node type: ").append(leafNode.getAssertionType()).toString());
        }
    }

    private boolean evalGreater(SimpleNode simpleNode, IndexRecord indexRecord, boolean z) throws NamingException {
        String attribute = simpleNode.getAttribute();
        BigInteger entryId = indexRecord.getEntryId();
        if (this.db.hasUserIndexOn(attribute)) {
            Index userIndex = this.db.getUserIndex(attribute);
            if (z) {
                return userIndex.hasValue(simpleNode.getValue(), entryId, true);
            }
            return userIndex.hasValue(simpleNode.getValue(), entryId, false);
        }
        if (indexRecord.getAttributes() == null) {
            indexRecord.setAttributes(this.db.lookup(entryId));
        }
        Attribute attribute2 = indexRecord.getAttributes().get(attribute);
        if (attribute2 == null) {
            return false;
        }
        Normalizer normalizer = getNormalizer(attribute);
        Comparator comparator = getComparator(attribute);
        Object normalize = normalizer.normalize(simpleNode.getValue());
        NamingEnumeration all = attribute2.getAll();
        if (z) {
            while (all.hasMore()) {
                if (comparator.compare(normalizer.normalize(all.next()), normalize) <= 0) {
                    return true;
                }
            }
        } else {
            while (all.hasMore()) {
                if (comparator.compare(normalizer.normalize(all.next()), normalize) >= 0) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean evalPresence(String str, IndexRecord indexRecord) throws NamingException {
        if (this.db.hasUserIndexOn(str)) {
            return this.db.getExistanceIndex().hasValue(str, indexRecord.getEntryId());
        }
        if (indexRecord.getAttributes() == null) {
            indexRecord.setAttributes(this.db.lookup(indexRecord.getEntryId()));
        }
        Attributes attributes = indexRecord.getAttributes();
        return (attributes == null || attributes.get(str) == null) ? false : true;
    }

    private boolean evalEquality(SimpleNode simpleNode, IndexRecord indexRecord) throws NamingException {
        if (this.db.hasUserIndexOn(simpleNode.getAttribute())) {
            return this.db.getUserIndex(simpleNode.getAttribute()).hasValue(simpleNode.getValue(), indexRecord.getEntryId());
        }
        Normalizer normalizer = getNormalizer(simpleNode.getAttribute());
        Comparator comparator = getComparator(simpleNode.getAttribute());
        if (indexRecord.getAttributes() == null) {
            indexRecord.setAttributes(this.db.lookup(indexRecord.getEntryId()));
        }
        Attribute attribute = indexRecord.getAttributes().get(simpleNode.getAttribute());
        if (attribute == null) {
            return false;
        }
        if (attribute.contains(simpleNode.getValue())) {
            return true;
        }
        Object normalize = normalizer.normalize(simpleNode.getValue());
        if (attribute.contains(normalize)) {
            return true;
        }
        NamingEnumeration all = attribute.getAll();
        while (all.hasMore()) {
            if (comparator.compare(normalizer.normalize(all.next()), normalize) == 0) {
                return true;
            }
        }
        return false;
    }

    private Comparator getComparator(String str) throws NamingException {
        return getMatchingRule(str, 0).getComparator();
    }

    private Normalizer getNormalizer(String str) throws NamingException {
        return getMatchingRule(str, 0).getNormalizer();
    }

    private MatchingRule getMatchingRule(String str, int i) throws NamingException {
        AttributeType lookup = this.attributeTypeRegistry.lookup(this.oidRegistry.getOid(str));
        if (i != 0) {
            if (i != 1) {
                if (i == 3) {
                    return lookup.getSubstr();
                }
                throw new NamingException(new StringBuffer("Unknown match type: ").append(i).toString());
            }
            return lookup.getOrdering();
        }
        return lookup.getEquality();
    }
}
