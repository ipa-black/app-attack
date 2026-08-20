package org.apache.ldap.common.filter;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.TreeSet;
/* loaded from: classes3.dex */
public class BranchNormalizedVisitor implements FilterVisitor {
    @Override // org.apache.ldap.common.filter.FilterVisitor
    public ArrayList getOrder(BranchNode branchNode, ArrayList arrayList) {
        return arrayList;
    }

    @Override // org.apache.ldap.common.filter.FilterVisitor
    public boolean isPrefix() {
        return false;
    }

    @Override // org.apache.ldap.common.filter.FilterVisitor
    public void visit(ExprNode exprNode) {
        if (exprNode instanceof BranchNode) {
            BranchNode branchNode = (BranchNode) exprNode;
            if (branchNode.getOperator() == 11) {
                return;
            }
            TreeSet treeSet = new TreeSet(new NodeComparator());
            ArrayList children = branchNode.getChildren();
            for (int i = 0; i < children.size(); i++) {
                ExprNode exprNode2 = (ExprNode) children.get(i);
                if (!exprNode2.isLeaf()) {
                    visit(exprNode2);
                }
                treeSet.add(exprNode2);
            }
            children.clear();
            children.addAll(treeSet);
        }
    }

    @Override // org.apache.ldap.common.filter.FilterVisitor
    public boolean canVisit(ExprNode exprNode) {
        return exprNode instanceof BranchNode;
    }

    public static String getNormalizedFilter(String str) throws IOException, ParseException {
        return getNormalizedFilter(new FilterParserImpl().parse(str));
    }

    public static String getNormalizedFilter(ExprNode exprNode) {
        new BranchNormalizedVisitor().visit(exprNode);
        StringBuffer stringBuffer = new StringBuffer();
        exprNode.printToBuffer(stringBuffer);
        return stringBuffer.toString().trim();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class NodeComparator implements Comparator {
        NodeComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.setLength(0);
            ((ExprNode) obj).printToBuffer(stringBuffer);
            String stringBuffer2 = stringBuffer.toString();
            stringBuffer.setLength(0);
            ((ExprNode) obj2).printToBuffer(stringBuffer);
            return stringBuffer2.compareTo(stringBuffer.toString());
        }
    }
}
