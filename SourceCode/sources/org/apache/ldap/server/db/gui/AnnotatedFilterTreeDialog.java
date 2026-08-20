package org.apache.ldap.server.db.gui;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Frame;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTree;
import javax.swing.tree.TreeModel;
/* loaded from: classes3.dex */
public class AnnotatedFilterTreeDialog extends JDialog {
    private static final long serialVersionUID = 3690476917916513074L;
    private JButton jButton1;
    private JPanel jPanel1;
    private JPanel jPanel2;
    private JPanel jPanel3;
    private JScrollPane jScrollPane1;
    private JTextArea jTextArea1;
    private JTree jTree1;

    public AnnotatedFilterTreeDialog(Frame frame, boolean z) {
        super(frame, z);
        this.jPanel1 = new JPanel();
        this.jTree1 = new JTree();
        this.jPanel2 = new JPanel();
        this.jPanel3 = new JPanel();
        this.jTextArea1 = new JTextArea();
        this.jScrollPane1 = new JScrollPane();
        this.jButton1 = new JButton();
        initGUI();
    }

    private void initGUI() {
        addWindowListener(new WindowAdapter() { // from class: org.apache.ldap.server.db.gui.AnnotatedFilterTreeDialog.1
            public void windowClosing(WindowEvent windowEvent) {
                AnnotatedFilterTreeDialog.this.closeDialog(windowEvent);
            }
        });
        pack();
        getContentPane().setLayout(new GridBagLayout());
        getContentPane().add(this.jPanel1, new GridBagConstraints(0, 0, 1, 1, 1.0d, 0.1d, 11, 1, new Insets(10, 5, 5, 5), 0, 0));
        getContentPane().add(this.jPanel2, new GridBagConstraints(0, 1, 1, 1, 1.0d, 0.8d, 10, 1, new Insets(5, 5, 5, 5), 0, 0));
        getContentPane().add(this.jPanel3, new GridBagConstraints(0, 2, 1, 1, 1.0d, 0.1d, 15, 2, new Insets(0, 0, 0, 0), 0, 0));
        this.jPanel1.setLayout(new BorderLayout(10, 10));
        this.jPanel1.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), "Search Filter", 4, 2, new Font("SansSerif", 0, 14), new Color(60, 60, 60)));
        this.jPanel1.add(this.jTextArea1, "Center");
        this.jScrollPane1.getViewport().add(this.jTree1);
        this.jTree1.setBounds(new Rectangle(238, 142, 82, 80));
        this.jTextArea1.setText("");
        this.jTextArea1.setEditable(false);
        setBounds(new Rectangle(0, 0, 485, (int) TTAdConstant.VIDEO_URL_CODE));
        this.jPanel2.setLayout(new BorderLayout());
        this.jPanel2.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), "Filter Expression Tree", 4, 2, new Font("SansSerif", 0, 14), new Color(60, 60, 60)));
        this.jPanel2.add(this.jScrollPane1, "Center");
        this.jButton1.setText("Done");
        this.jButton1.setActionCommand("Done");
        this.jButton1.addActionListener(new ActionListener() { // from class: org.apache.ldap.server.db.gui.AnnotatedFilterTreeDialog.2
            public void actionPerformed(ActionEvent actionEvent) {
                AnnotatedFilterTreeDialog.this.setVisible(false);
                AnnotatedFilterTreeDialog.this.dispose();
            }
        });
        this.jButton1.setHorizontalAlignment(0);
        this.jButton1.setAlignmentX(0.5f);
        this.jButton1.setHorizontalTextPosition(0);
        this.jPanel3.setPreferredSize(new Dimension(79, 41));
        this.jPanel3.setMinimumSize(new Dimension(79, 41));
        this.jPanel3.setSize(new Dimension(471, 35));
        this.jPanel3.setToolTipText("");
        this.jPanel3.add(this.jButton1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeDialog(WindowEvent windowEvent) {
        windowEvent.getWindow();
        setVisible(false);
        dispose();
    }

    public void setModel(TreeModel treeModel) {
        this.jTree1.setModel(treeModel);
    }

    public void setFilter(String str) {
        this.jTextArea1.setText(str);
    }
}
