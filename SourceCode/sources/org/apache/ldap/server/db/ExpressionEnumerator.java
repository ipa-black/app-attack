package org.apache.ldap.server.db;

import com.onesignal.shortcutbadger.impl.NewHtcHomeBadger;
import java.math.BigInteger;
import java.util.ArrayList;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import org.apache.ldap.common.NotImplementedException;
import org.apache.ldap.common.filter.AssertionNode;
import org.apache.ldap.common.filter.BranchNode;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.filter.LeafNode;
import org.apache.ldap.common.filter.PresenceNode;
import org.apache.ldap.common.filter.ScopeNode;
import org.apache.ldap.common.filter.SimpleNode;
import org.apache.ldap.server.schema.AttributeTypeRegistry;
/* loaded from: classes3.dex */
public class ExpressionEnumerator implements Enumerator {
    private Database db;
    private ExpressionEvaluator evaluator;
    private ScopeEnumerator scopeEnumerator;
    private SubstringEnumerator substringEnumerator;

    public ExpressionEnumerator(Database database, AttributeTypeRegistry attributeTypeRegistry, ExpressionEvaluator expressionEvaluator) {
        this.db = database;
        this.evaluator = expressionEvaluator;
        LeafEvaluator leafEvaluator = expressionEvaluator.getLeafEvaluator();
        this.scopeEnumerator = new ScopeEnumerator(database, leafEvaluator.getScopeEvaluator());
        this.substringEnumerator = new SubstringEnumerator(database, attributeTypeRegistry, leafEvaluator.getSubstringEvaluator());
    }

    @Override // org.apache.ldap.server.db.Enumerator
    public NamingEnumeration enumerate(ExprNode exprNode) throws NamingException {
        if (exprNode instanceof ScopeNode) {
            return this.scopeEnumerator.enumerate(exprNode);
        }
        if (exprNode instanceof AssertionNode) {
            throw new IllegalArgumentException("Cannot produce enumeration on an AssertionNode");
        }
        if (exprNode.isLeaf()) {
            LeafNode leafNode = (LeafNode) exprNode;
            switch (leafNode.getAssertionType()) {
                case 0:
                    return enumEquality((SimpleNode) exprNode);
                case 1:
                    return enumPresence((PresenceNode) exprNode);
                case 2:
                    return this.substringEnumerator.enumerate(leafNode);
                case 3:
                    return enumGreater((SimpleNode) exprNode, true);
                case 4:
                    return enumGreater((SimpleNode) exprNode, false);
                case 5:
                    return enumEquality((SimpleNode) exprNode);
                case 6:
                    throw new NotImplementedException();
                default:
                    throw new IllegalArgumentException("Unknown leaf assertion");
            }
        }
        BranchNode branchNode = (BranchNode) exprNode;
        switch (branchNode.getOperator()) {
            case 9:
                return enumDisj(branchNode);
            case 10:
                return enumConj(branchNode);
            case 11:
                return enumNeg(branchNode);
            default:
                throw new IllegalArgumentException("Unknown branch logical operator");
        }
    }

    private NamingEnumeration enumDisj(BranchNode branchNode) throws NamingException {
        ArrayList children = branchNode.getChildren();
        int size = children.size();
        NamingEnumeration[] namingEnumerationArr = new NamingEnumeration[size];
        for (int i = 0; i < size; i++) {
            namingEnumerationArr[i] = enumerate((ExprNode) children.get(i));
        }
        return new DisjunctionEnumeration(namingEnumerationArr);
    }

    private NamingEnumeration enumNeg(final BranchNode branchNode) throws NamingException {
        IndexEnumeration listIndices;
        if (branchNode.getChild().isLeaf()) {
            listIndices = this.db.getUserIndex(((LeafNode) branchNode.getChild()).getAttribute()).listIndices();
        } else {
            listIndices = this.db.getNdnIndex().listIndices();
        }
        return new IndexAssertionEnumeration(listIndices, new IndexAssertion() { // from class: org.apache.ldap.server.db.ExpressionEnumerator.1
            @Override // org.apache.ldap.server.db.IndexAssertion
            public boolean assertCandidate(IndexRecord indexRecord) throws NamingException {
                return !ExpressionEnumerator.this.evaluator.evaluate(branchNode.getChild(), indexRecord);
            }
        }, true);
    }

    private NamingEnumeration enumConj(BranchNode branchNode) throws NamingException {
        final ArrayList children = branchNode.getChildren();
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (int i3 = 0; i3 < children.size(); i3++) {
            int intValue = ((BigInteger) ((ExprNode) children.get(i3)).get(NewHtcHomeBadger.COUNT)).intValue();
            i = Math.min(i, intValue);
            if (i == intValue) {
                i2 = i3;
            }
        }
        final ExprNode exprNode = (ExprNode) children.get(i2);
        return new IndexAssertionEnumeration(enumerate(exprNode), new IndexAssertion() { // from class: org.apache.ldap.server.db.ExpressionEnumerator.2
            @Override // org.apache.ldap.server.db.IndexAssertion
            public boolean assertCandidate(IndexRecord indexRecord) throws NamingException {
                for (int i4 = 0; i4 < children.size(); i4++) {
                    ExprNode exprNode2 = (ExprNode) children.get(i4);
                    if (exprNode2 != exprNode && !ExpressionEnumerator.this.evaluator.evaluate(exprNode2, indexRecord)) {
                        return false;
                    }
                }
                return true;
            }
        });
    }

    private NamingEnumeration enumPresence(PresenceNode presenceNode) throws NamingException {
        if (this.db.hasUserIndexOn(presenceNode.getAttribute())) {
            return this.db.getExistanceIndex().listIndices(presenceNode.getAttribute());
        }
        return nonIndexedScan(presenceNode);
    }

    private NamingEnumeration enumGreater(SimpleNode simpleNode, boolean z) throws NamingException {
        if (this.db.hasUserIndexOn(simpleNode.getAttribute())) {
            Index userIndex = this.db.getUserIndex(simpleNode.getAttribute());
            if (z) {
                return userIndex.listIndices((Object) simpleNode.getValue(), true);
            }
            return userIndex.listIndices((Object) simpleNode.getValue(), false);
        }
        return nonIndexedScan(simpleNode);
    }

    private NamingEnumeration enumEquality(SimpleNode simpleNode) throws NamingException {
        if (this.db.hasUserIndexOn(simpleNode.getAttribute())) {
            return this.db.getUserIndex(simpleNode.getAttribute()).listIndices(simpleNode.getValue());
        }
        return nonIndexedScan(simpleNode);
    }

    private NamingEnumeration nonIndexedScan(final LeafNode leafNode) throws NamingException {
        return new IndexAssertionEnumeration(this.db.getNdnIndex().listIndices(), new IndexAssertion() { // from class: org.apache.ldap.server.db.ExpressionEnumerator.3
            @Override // org.apache.ldap.server.db.IndexAssertion
            public boolean assertCandidate(IndexRecord indexRecord) throws NamingException {
                return ExpressionEnumerator.this.evaluator.getLeafEvaluator().evaluate(leafNode, indexRecord);
            }
        });
    }
}
