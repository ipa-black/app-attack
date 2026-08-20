package org.apache.ldap.server.db;

import java.util.Iterator;
import javax.naming.NamingException;
import org.apache.ldap.common.filter.BranchNode;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.server.schema.AttributeTypeRegistry;
import org.apache.ldap.server.schema.OidRegistry;
/* loaded from: classes3.dex */
public class ExpressionEvaluator implements Evaluator {
    private LeafEvaluator leafEvaluator;

    public ExpressionEvaluator(LeafEvaluator leafEvaluator) {
        this.leafEvaluator = leafEvaluator;
    }

    public ExpressionEvaluator(Database database, OidRegistry oidRegistry, AttributeTypeRegistry attributeTypeRegistry) {
        this.leafEvaluator = new LeafEvaluator(database, oidRegistry, attributeTypeRegistry, new ScopeEvaluator(database), new SubstringEvaluator(database, oidRegistry, attributeTypeRegistry));
    }

    public LeafEvaluator getLeafEvaluator() {
        return this.leafEvaluator;
    }

    @Override // org.apache.ldap.server.db.Evaluator
    public boolean evaluate(ExprNode exprNode, IndexRecord indexRecord) throws NamingException {
        if (exprNode.isLeaf()) {
            return this.leafEvaluator.evaluate(exprNode, indexRecord);
        }
        BranchNode branchNode = (BranchNode) exprNode;
        switch (branchNode.getOperator()) {
            case 9:
                Iterator it = branchNode.getChildren().iterator();
                while (it.hasNext()) {
                    if (evaluate((ExprNode) it.next(), indexRecord)) {
                        return true;
                    }
                }
                return false;
            case 10:
                Iterator it2 = branchNode.getChildren().iterator();
                while (it2.hasNext()) {
                    if (!evaluate((ExprNode) it2.next(), indexRecord)) {
                        return false;
                    }
                }
                return true;
            case 11:
                if (branchNode.getChild() != null) {
                    return !evaluate(branchNode.getChild(), indexRecord);
                }
                throw new NamingException(new StringBuffer("Negation has no child: ").append(exprNode).toString());
            default:
                throw new NamingException(new StringBuffer("Unrecognized branch node operator: ").append(branchNode.getOperator()).toString());
        }
    }
}
