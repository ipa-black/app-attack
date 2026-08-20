package antlr.debug.misc;

import antlr.collections.AST;
import java.util.NoSuchElementException;
import javax.swing.event.TreeModelListener;
import javax.swing.tree.TreeModel;
import javax.swing.tree.TreePath;
/* loaded from: classes.dex */
public class JTreeASTModel implements TreeModel {
    AST root;

    public void addTreeModelListener(TreeModelListener treeModelListener) {
    }

    public void removeTreeModelListener(TreeModelListener treeModelListener) {
    }

    public JTreeASTModel(AST ast) {
        this.root = null;
        if (ast == null) {
            throw new IllegalArgumentException("root is null");
        }
        this.root = ast;
    }

    public Object getChild(Object obj, int i) {
        if (obj == null) {
            return null;
        }
        AST firstChild = ((AST) obj).getFirstChild();
        if (firstChild != null) {
            for (int i2 = 0; firstChild != null && i2 < i; i2++) {
                firstChild = firstChild.getNextSibling();
            }
            return firstChild;
        }
        throw new ArrayIndexOutOfBoundsException("node has no children");
    }

    public int getChildCount(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("root is null");
        }
        AST firstChild = ((AST) obj).getFirstChild();
        int i = 0;
        while (firstChild != null) {
            firstChild = firstChild.getNextSibling();
            i++;
        }
        return i;
    }

    public int getIndexOfChild(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw new IllegalArgumentException("root or child is null");
        }
        AST firstChild = ((AST) obj).getFirstChild();
        if (firstChild != null) {
            int i = 0;
            while (firstChild != null && firstChild != obj2) {
                firstChild = firstChild.getNextSibling();
                i++;
            }
            if (firstChild == obj2) {
                return i;
            }
            throw new NoSuchElementException("node is not a child");
        }
        throw new ArrayIndexOutOfBoundsException("node has no children");
    }

    public Object getRoot() {
        return this.root;
    }

    public boolean isLeaf(Object obj) {
        if (obj != null) {
            return ((AST) obj).getFirstChild() == null;
        }
        throw new IllegalArgumentException("node is null");
    }

    public void valueForPathChanged(TreePath treePath, Object obj) {
        System.out.println("heh, who is calling this mystery method?");
    }
}
