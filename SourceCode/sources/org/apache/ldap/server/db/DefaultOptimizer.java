package org.apache.ldap.server.db;

import com.onesignal.shortcutbadger.impl.NewHtcHomeBadger;
import java.math.BigInteger;
import java.util.ArrayList;
import javax.naming.NamingException;
import org.apache.ldap.common.filter.AssertionNode;
import org.apache.ldap.common.filter.BranchNode;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.filter.LeafNode;
import org.apache.ldap.common.filter.PresenceNode;
import org.apache.ldap.common.filter.ScopeNode;
import org.apache.ldap.common.filter.SimpleNode;
/* loaded from: classes3.dex */
public class DefaultOptimizer implements Optimizer {
    private static final BigInteger MAX = BigInteger.valueOf(2147483647L);
    private Database db;

    public DefaultOptimizer(Database database) {
        this.db = database;
    }

    @Override // org.apache.ldap.server.db.Optimizer
    public void annotate(ExprNode exprNode) throws NamingException {
        BigInteger bigInteger;
        BigInteger bigInteger2 = MAX;
        if (exprNode instanceof ScopeNode) {
            bigInteger = getScopeScan((ScopeNode) exprNode);
        } else if (exprNode instanceof AssertionNode) {
            bigInteger = bigInteger2;
        } else if (exprNode.isLeaf()) {
            LeafNode leafNode = (LeafNode) exprNode;
            switch (leafNode.getAssertionType()) {
                case 0:
                    bigInteger = getEqualityScan((SimpleNode) leafNode);
                    break;
                case 1:
                    bigInteger = getPresenceScan((PresenceNode) leafNode);
                    break;
                case 2:
                    bigInteger = getFullScan(leafNode);
                    break;
                case 3:
                    bigInteger = getGreaterLessScan((SimpleNode) leafNode, true);
                    break;
                case 4:
                    bigInteger = getGreaterLessScan((SimpleNode) leafNode, false);
                    break;
                case 5:
                    bigInteger = getEqualityScan((SimpleNode) leafNode);
                    break;
                case 6:
                    bigInteger = getFullScan(leafNode);
                    break;
                default:
                    throw new IllegalArgumentException("Unrecognized leaf node");
            }
        } else {
            BranchNode branchNode = (BranchNode) exprNode;
            switch (branchNode.getOperator()) {
                case 9:
                    bigInteger = getDisjunctionScan(branchNode);
                    break;
                case 10:
                    bigInteger = getConjunctionScan(branchNode);
                    break;
                case 11:
                    bigInteger = getNegationScan(branchNode);
                    break;
                default:
                    throw new IllegalArgumentException("Unrecognized branch node type");
            }
        }
        if (bigInteger.compareTo(BigInteger.ZERO) >= 0) {
            bigInteger2 = bigInteger;
        }
        exprNode.set(NewHtcHomeBadger.COUNT, bigInteger2);
    }

    private BigInteger getConjunctionScan(BranchNode branchNode) throws NamingException {
        BigInteger valueOf = BigInteger.valueOf(2147483647L);
        ArrayList children = branchNode.getChildren();
        for (int i = 0; i < children.size(); i++) {
            ExprNode exprNode = (ExprNode) children.get(i);
            annotate(exprNode);
            valueOf = ((BigInteger) exprNode.get(NewHtcHomeBadger.COUNT)).min(valueOf);
        }
        return valueOf;
    }

    private BigInteger getNegationScan(BranchNode branchNode) throws NamingException {
        ExprNode exprNode = (ExprNode) branchNode.getChildren().get(0);
        annotate(exprNode);
        if (exprNode.isLeaf() && !(exprNode instanceof ScopeNode) && !(exprNode instanceof AssertionNode) && !(exprNode instanceof PresenceNode)) {
            return BigInteger.valueOf(this.db.getUserIndex(((LeafNode) exprNode).getAttribute()).count());
        }
        return BigInteger.valueOf(this.db.count());
    }

    private BigInteger getDisjunctionScan(BranchNode branchNode) throws NamingException {
        ArrayList children = branchNode.getChildren();
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i = 0; i < children.size(); i++) {
            ExprNode exprNode = (ExprNode) children.get(i);
            annotate(exprNode);
            bigInteger = bigInteger.add((BigInteger) exprNode.get(NewHtcHomeBadger.COUNT));
        }
        return bigInteger;
    }

    private BigInteger getEqualityScan(SimpleNode simpleNode) throws NamingException {
        if (this.db.hasUserIndexOn(simpleNode.getAttribute())) {
            return BigInteger.valueOf(this.db.getUserIndex(simpleNode.getAttribute()).count(simpleNode.getValue()));
        }
        return MAX;
    }

    private BigInteger getGreaterLessScan(SimpleNode simpleNode, boolean z) throws NamingException {
        if (this.db.hasUserIndexOn(simpleNode.getAttribute())) {
            return BigInteger.valueOf(this.db.getUserIndex(simpleNode.getAttribute()).count(simpleNode.getValue(), z));
        }
        return MAX;
    }

    private BigInteger getFullScan(LeafNode leafNode) throws NamingException {
        if (this.db.hasUserIndexOn(leafNode.getAttribute())) {
            return BigInteger.valueOf(this.db.getUserIndex(leafNode.getAttribute()).count());
        }
        return MAX;
    }

    private BigInteger getPresenceScan(PresenceNode presenceNode) throws NamingException {
        if (this.db.hasUserIndexOn(presenceNode.getAttribute())) {
            return BigInteger.valueOf(this.db.getExistanceIndex().count(presenceNode.getAttribute()));
        }
        return MAX;
    }

    private BigInteger getScopeScan(ScopeNode scopeNode) throws NamingException {
        int scope = scopeNode.getScope();
        if (scope != 0) {
            if (scope == 1) {
                return BigInteger.valueOf(this.db.getChildCount(this.db.getEntryId(scopeNode.getBaseDn())));
            } else if (scope == 2) {
                return BigInteger.valueOf(this.db.count());
            } else {
                throw new IllegalArgumentException("Unrecognized search scope value for filter scope node");
            }
        }
        return BigInteger.ONE;
    }
}
