package antlr;

import antlr.collections.AST;
/* loaded from: classes.dex */
public class DumpASTVisitor implements ASTVisitor {
    protected int level = 0;

    private void tabs() {
        for (int i = 0; i < this.level; i++) {
            System.out.print("   ");
        }
    }

    @Override // antlr.ASTVisitor
    public void visit(AST ast) {
        for (AST ast2 = ast; ast2 != null && ast2.getFirstChild() == null; ast2 = ast2.getNextSibling()) {
        }
        while (ast != null) {
            tabs();
            if (ast.getText() == null) {
                System.out.print("nil");
            } else {
                System.out.print(ast.getText());
            }
            System.out.print(new StringBuffer(" [").append(ast.getType()).append("] ").toString());
            System.out.println("");
            if (ast.getFirstChild() != null) {
                this.level++;
                visit(ast.getFirstChild());
                this.level--;
            }
            ast = ast.getNextSibling();
        }
    }
}
