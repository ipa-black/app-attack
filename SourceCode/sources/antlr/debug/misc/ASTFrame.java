package antlr.debug.misc;

import antlr.ASTFactory;
import antlr.CommonAST;
import antlr.collections.AST;
import java.awt.Frame;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JFrame;
import javax.swing.event.TreeSelectionEvent;
import javax.swing.event.TreeSelectionListener;
import javax.swing.tree.TreePath;
import org.slf4j.Logger;
/* loaded from: classes.dex */
public class ASTFrame extends JFrame {
    static final int HEIGHT = 300;
    static final int WIDTH = 200;

    /* loaded from: classes.dex */
    class MyTreeSelectionListener implements TreeSelectionListener {
        MyTreeSelectionListener() {
        }

        public void valueChanged(TreeSelectionEvent treeSelectionEvent) {
            TreePath path = treeSelectionEvent.getPath();
            System.out.println(new StringBuffer("Selected: ").append(path.getLastPathComponent()).toString());
            for (Object obj : path.getPath()) {
                System.out.print(new StringBuffer("->").append(obj).toString());
            }
            System.out.println();
        }
    }

    public ASTFrame(String str, AST ast) {
        super(str);
        new MyTreeSelectionListener();
        getContentPane().add(new JTreeASTPanel(new JTreeASTModel(ast), null), "Center");
        addWindowListener(new WindowAdapter() { // from class: antlr.debug.misc.ASTFrame.1
            public void windowClosing(WindowEvent windowEvent) {
                Frame frame = (Frame) windowEvent.getSource();
                frame.setVisible(false);
                frame.dispose();
            }
        });
        setSize(200, 300);
    }

    public static void main(String[] strArr) {
        ASTFactory aSTFactory = new ASTFactory();
        CommonAST commonAST = (CommonAST) aSTFactory.create(0, Logger.ROOT_LOGGER_NAME);
        commonAST.addChild((CommonAST) aSTFactory.create(0, "C1"));
        commonAST.addChild((CommonAST) aSTFactory.create(0, "C2"));
        commonAST.addChild((CommonAST) aSTFactory.create(0, "C3"));
        new ASTFrame("AST JTree Example", commonAST).setVisible(true);
    }
}
