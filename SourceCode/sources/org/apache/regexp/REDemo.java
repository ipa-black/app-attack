package org.apache.regexp;

import java.applet.Applet;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.Label;
import java.awt.TextArea;
import java.awt.TextField;
import java.awt.event.TextEvent;
import java.awt.event.TextListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.CharArrayWriter;
import java.io.PrintWriter;
import javax.swing.JFrame;
/* loaded from: classes3.dex */
public class REDemo extends Applet implements TextListener {
    TextField fieldMatch;
    TextField fieldRE;
    TextArea outMatch;
    TextArea outRE;
    RE r = new RE();
    REDebugCompiler compiler = new REDebugCompiler();

    public void init() {
        GridBagLayout gridBagLayout = new GridBagLayout();
        setLayout(gridBagLayout);
        GridBagConstraints gridBagConstraints = new GridBagConstraints();
        gridBagConstraints.insets = new Insets(5, 5, 5, 5);
        gridBagConstraints.anchor = 13;
        gridBagLayout.setConstraints(add(new Label("Regular expression:", 2)), gridBagConstraints);
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = 17;
        TextField textField = new TextField("\\[([:javastart:][:javapart:]*)\\]", 40);
        this.fieldRE = textField;
        gridBagLayout.setConstraints(add(textField), gridBagConstraints);
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = -1;
        gridBagConstraints.anchor = 13;
        gridBagLayout.setConstraints(add(new Label("String:", 2)), gridBagConstraints);
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridx = -1;
        gridBagConstraints.anchor = 17;
        TextField textField2 = new TextField("aaa([foo])aaa", 40);
        this.fieldMatch = textField2;
        gridBagLayout.setConstraints(add(textField2), gridBagConstraints);
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridx = -1;
        gridBagConstraints.fill = 1;
        gridBagConstraints.weighty = 1.0d;
        gridBagConstraints.weightx = 1.0d;
        TextArea textArea = new TextArea();
        this.outRE = textArea;
        gridBagLayout.setConstraints(add(textArea), gridBagConstraints);
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridx = -1;
        TextArea textArea2 = new TextArea();
        this.outMatch = textArea2;
        gridBagLayout.setConstraints(add(textArea2), gridBagConstraints);
        this.fieldRE.addTextListener(this);
        this.fieldMatch.addTextListener(this);
        textValueChanged(null);
    }

    void sayRE(String str) {
        this.outRE.setText(str);
    }

    void sayMatch(String str) {
        this.outMatch.setText(str);
    }

    String throwableToString(Throwable th) {
        String name = th.getClass().getName();
        String message = th.getMessage();
        return message != null ? new StringBuffer(String.valueOf(name)).append("\n").append(message).toString() : name;
    }

    void updateRE(String str) {
        try {
            this.r.setProgram(this.compiler.compile(str));
            CharArrayWriter charArrayWriter = new CharArrayWriter();
            this.compiler.dumpProgram(new PrintWriter(charArrayWriter));
            sayRE(charArrayWriter.toString());
            System.out.println(charArrayWriter);
        } catch (Exception e2) {
            this.r.setProgram(null);
            sayRE(throwableToString(e2));
        } catch (Throwable th) {
            this.r.setProgram(null);
            sayRE(throwableToString(th));
        }
    }

    void updateMatch(String str) {
        try {
            if (this.r.match(str)) {
                String str2 = "Matches.\n\n";
                for (int i = 0; i < this.r.getParenCount(); i++) {
                    str2 = new StringBuffer(String.valueOf(str2)).append("$").append(i).append(" = ").append(this.r.getParen(i)).append("\n").toString();
                }
                sayMatch(str2);
                return;
            }
            sayMatch("Does not match");
        } catch (Throwable th) {
            sayMatch(throwableToString(th));
        }
    }

    public void textValueChanged(TextEvent textEvent) {
        if (textEvent == null || textEvent.getSource() == this.fieldRE) {
            updateRE(this.fieldRE.getText());
        }
        updateMatch(this.fieldMatch.getText());
    }

    public static void main(String[] strArr) {
        JFrame jFrame = new JFrame("RE Demo");
        jFrame.addWindowListener(new WindowAdapter() { // from class: org.apache.regexp.REDemo.1
            public void windowClosing(WindowEvent windowEvent) {
                System.exit(0);
            }
        });
        Container contentPane = jFrame.getContentPane();
        contentPane.setLayout(new FlowLayout());
        REDemo rEDemo = new REDemo();
        contentPane.add(rEDemo);
        rEDemo.init();
        jFrame.pack();
        jFrame.setVisible(true);
    }
}
