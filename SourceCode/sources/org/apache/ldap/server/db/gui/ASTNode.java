package org.apache.ldap.server.db.gui;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import javax.swing.tree.TreeNode;
import org.apache.ldap.common.filter.BranchNode;
import org.apache.ldap.common.filter.ExprNode;
/* loaded from: classes3.dex */
public class ASTNode implements TreeNode {
    private final ArrayList children = new ArrayList(2);
    private final ExprNode exprNode;
    private final ASTNode parent;

    public ASTNode(ASTNode aSTNode, ExprNode exprNode) {
        this.exprNode = exprNode;
        if (aSTNode == null) {
            this.parent = this;
        } else {
            this.parent = aSTNode;
        }
        try {
            if (exprNode.isLeaf()) {
                return;
            }
            ArrayList children = ((BranchNode) exprNode).getChildren();
            for (int i = 0; i < children.size(); i++) {
                this.children.add(new ASTNode(this, (ExprNode) children.get(i)));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public Enumeration children() {
        return Collections.enumeration(this.children);
    }

    public boolean getAllowsChildren() {
        return !this.exprNode.isLeaf();
    }

    public TreeNode getChildAt(int i) {
        return (TreeNode) this.children.get(i);
    }

    public int getChildCount() {
        return this.children.size();
    }

    public int getIndex(TreeNode treeNode) {
        return this.children.indexOf(treeNode);
    }

    public TreeNode getParent() {
        return this.parent;
    }

    public boolean isLeaf() {
        return this.children.size() <= 0;
    }

    public String toString() {
        return this.exprNode.toString();
    }

    public ExprNode getExprNode() {
        return this.exprNode;
    }
}
