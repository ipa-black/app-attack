package org.apache.ldap.server.db.gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Frame;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.border.Border;
/* loaded from: classes3.dex */
public class AboutDialog extends JDialog {
    private static final long serialVersionUID = 3257853194544952884L;
    private FlowLayout btnPaneLayout;
    private JPanel btnPanel;
    private JTextArea commentField;
    private String comments;
    private JPanel contentPane;
    private GridBagLayout contentPaneLayout;
    private JLabel copLabel;
    private String copyright;
    private BorderLayout formLayout;
    private JLabel image;
    private JPanel jPanel1;
    private JPanel jPanel2;
    private JButton okButton;
    private JLabel prodLabel;
    private String product;
    private String title;
    private JLabel verLabel;
    private String version;

    public AboutDialog(Frame frame, boolean z) {
        super(frame, z);
        this.title = "About";
        this.product = "Eve jdbm partition inspector";
        this.version = "0.1";
        this.copyright = "Copyright (c) 2003";
        this.comments = "This is the jdbm partition viewer or introspector.\nIrregular behavior can be analyzed by using this tool to inspect\nthe state of system indices and entry attributes within the partition's database.";
        this.contentPane = new JPanel();
        this.prodLabel = new JLabel();
        this.verLabel = new JLabel();
        this.copLabel = new JLabel();
        this.commentField = new JTextArea();
        this.btnPanel = new JPanel();
        this.okButton = new JButton();
        this.image = new JLabel();
        this.formLayout = new BorderLayout();
        this.contentPaneLayout = new GridBagLayout();
        this.btnPaneLayout = new FlowLayout();
        this.jPanel1 = new JPanel();
        this.jPanel2 = new JPanel();
        initGUI();
        pack();
    }

    public AboutDialog() {
        this.title = "About";
        this.product = "Eve jdbm partition inspector";
        this.version = "0.1";
        this.copyright = "Copyright (c) 2003";
        this.comments = "This is the jdbm partition viewer or introspector.\nIrregular behavior can be analyzed by using this tool to inspect\nthe state of system indices and entry attributes within the partition's database.";
        this.contentPane = new JPanel();
        this.prodLabel = new JLabel();
        this.verLabel = new JLabel();
        this.copLabel = new JLabel();
        this.commentField = new JTextArea();
        this.btnPanel = new JPanel();
        this.okButton = new JButton();
        this.image = new JLabel();
        this.formLayout = new BorderLayout();
        this.contentPaneLayout = new GridBagLayout();
        this.btnPaneLayout = new FlowLayout();
        this.jPanel1 = new JPanel();
        this.jPanel2 = new JPanel();
        setModal(true);
        initGUI();
        pack();
    }

    private void initGUI() {
        addWindowListener(new WindowAdapter() { // from class: org.apache.ldap.server.db.gui.AboutDialog.1
            public void windowClosing(WindowEvent windowEvent) {
                AboutDialog.this.closeDialog(windowEvent);
            }
        });
        getContentPane().setLayout(this.formLayout);
        this.contentPane.setLayout(this.contentPaneLayout);
        this.contentPane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), "Directory Project: Eve", 4, 2, new Font("SansSerif", 0, 14), new Color(60, 60, 60)));
        this.prodLabel.setText(this.product);
        this.prodLabel.setAlignmentX(0.5f);
        this.contentPane.add(this.prodLabel, new GridBagConstraints(-1, -1, 0, 1, 0.0d, 0.0d, 18, 0, new Insets(5, 5, 0, 0), 5, 0));
        this.verLabel.setText(this.version);
        this.contentPane.add(this.verLabel, new GridBagConstraints(-1, -1, 0, 1, 0.0d, 0.0d, 18, 0, new Insets(5, 5, 0, 0), 0, 0));
        this.copLabel.setText(this.copyright);
        this.contentPane.add(this.copLabel, new GridBagConstraints(-1, -1, 0, 1, 0.0d, 0.0d, 18, 0, new Insets(5, 5, 0, 0), 0, 0));
        this.commentField.setBackground(getBackground());
        this.commentField.setForeground(this.copLabel.getForeground());
        this.commentField.setFont(this.copLabel.getFont());
        this.commentField.setText(this.comments);
        this.commentField.setEditable(false);
        this.commentField.setBorder((Border) null);
        this.contentPane.add(this.commentField, new GridBagConstraints(-1, -1, 0, 3, 0.0d, 1.0d, 18, 1, new Insets(5, 5, 5, 0), 0, 0));
        this.image.setText("Eve");
        this.image.setIcon(new ImageIcon(getClass().getResource("server.gif")));
        this.image.setHorizontalAlignment(11);
        this.image.setMinimumSize(new Dimension(98, 44));
        this.image.setMaximumSize(new Dimension(98, 44));
        this.image.setAlignmentX(0.5f);
        this.image.setBorder(BorderFactory.createEmptyBorder());
        this.image.setPreferredSize(new Dimension(98, 44));
        this.image.setSize(new Dimension(98, 200));
        this.btnPanel.setLayout(this.btnPaneLayout);
        this.okButton.setText("OK");
        this.okButton.addActionListener(new ActionListener() { // from class: org.apache.ldap.server.db.gui.AboutDialog.2
            public void actionPerformed(ActionEvent actionEvent) {
                AboutDialog.this.setVisible(false);
                AboutDialog.this.dispose();
            }
        });
        this.btnPanel.add(this.okButton);
        getContentPane().add(this.image, "West");
        getContentPane().add(this.contentPane, "Center");
        getContentPane().add(this.btnPanel, "South");
        getContentPane().add(this.jPanel1, "North");
        getContentPane().add(this.jPanel2, "East");
        setTitle(this.title);
        setResizable(false);
        setFont(new Font("Dialog", 1, 12));
        this.formLayout.setHgap(15);
        this.jPanel1.setMinimumSize(new Dimension(10, 30));
        this.jPanel1.setPreferredSize(new Dimension(10, 30));
        this.jPanel1.setSize(new Dimension(564, 35));
        this.jPanel2.setMinimumSize(new Dimension(72, 165));
        this.jPanel2.setPreferredSize(new Dimension(80, 165));
        this.jPanel2.setSize(new Dimension(72, 170));
        this.jPanel2.setMaximumSize(new Dimension(80, 165));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeDialog(WindowEvent windowEvent) {
        windowEvent.getWindow();
        setVisible(false);
        dispose();
    }
}
