package antlr.collections.impl;

import antlr.collections.AST;
import antlr.collections.ASTEnumeration;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public class ASTEnumerator implements ASTEnumeration {
    int i = 0;
    VectorEnumerator nodes;

    public ASTEnumerator(Vector vector) {
        this.nodes = new VectorEnumerator(vector);
    }

    @Override // antlr.collections.ASTEnumeration
    public boolean hasMoreNodes() {
        boolean z;
        synchronized (this.nodes) {
            z = this.i <= this.nodes.vector.lastElement;
        }
        return z;
    }

    @Override // antlr.collections.ASTEnumeration
    public AST nextNode() {
        AST ast;
        synchronized (this.nodes) {
            if (this.i <= this.nodes.vector.lastElement) {
                Object[] objArr = this.nodes.vector.data;
                int i = this.i;
                this.i = i + 1;
                ast = (AST) objArr[i];
            } else {
                throw new NoSuchElementException("ASTEnumerator");
            }
        }
        return ast;
    }
}
