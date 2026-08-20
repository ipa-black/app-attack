package org.apache.ldap.server.db.gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.Rectangle;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.border.Border;
/* loaded from: classes3.dex */
public class FilterDialog extends JDialog {
    public static final String ANNOTATE_MODE = "Annotate";
    public static final String BASE_SCOPE = "Base Object";
    public static final String CANCEL_CMD = "Cancel";
    public static final String DEBUG_MODE = "Debug";
    public static final String LOAD_CMD = "Load";
    public static final String LOAD_MODE = "Load";
    public static final String RUN_MODE = "Run";
    public static final String SEARCH_CMD = "Search";
    public static final String SINGLE_SCOPE = "Single Level";
    public static final String SUBTREE_SCOPE = "Subtree Level";
    public static final String UNLIMITED = "Unlimited";
    private static final long serialVersionUID = 3760565295319626294L;
    private JLabel jLabel1;
    private JPanel m_basePnl;
    private JTextField m_baseText;
    private JButton m_cancelBut;
    private JPanel m_centerPnl;
    private JTextArea m_filterText;
    private JTextField m_limitField;
    private JLabel m_limitLbl;
    private final String m_mode;
    private JPanel m_northPnl;
    private JComboBox m_scopeChoice;
    private JLabel m_scopeLbl;
    private JScrollPane m_scrollPane;
    private JButton m_searchBut;
    private JPanel m_southPnl;

    public FilterDialog(String str, JFrame jFrame, boolean z) {
        super(jFrame, z);
        this.m_northPnl = new JPanel();
        this.m_centerPnl = new JPanel();
        this.m_filterText = new JTextArea();
        this.m_scopeLbl = new JLabel();
        this.m_scopeChoice = new JComboBox();
        this.m_limitLbl = new JLabel();
        this.m_limitField = new JTextField();
        this.m_southPnl = new JPanel();
        this.m_searchBut = new JButton();
        this.m_cancelBut = new JButton();
        this.m_scrollPane = new JScrollPane();
        this.m_baseText = new JTextField();
        this.m_basePnl = new JPanel();
        this.jLabel1 = new JLabel();
        this.m_mode = str;
        initGUI();
    }

    public void addActionListener(ActionListener actionListener) {
        this.m_searchBut.addActionListener(actionListener);
        this.m_cancelBut.addActionListener(actionListener);
    }

    private void initGUI() {
        this.m_baseText.setText("");
        addWindowListener(new WindowAdapter() { // from class: org.apache.ldap.server.db.gui.FilterDialog.1
            public void windowClosing(WindowEvent windowEvent) {
                FilterDialog.this.closeDialog(windowEvent);
            }
        });
        pack();
        getContentPane().setLayout(new GridBagLayout());
        getContentPane().add(this.m_northPnl, new GridBagConstraints(0, 0, 1, 1, 0.9d, 0.0d, 11, 1, new Insets(5, 5, 6, 0), 0, 0));
        getContentPane().add(this.m_centerPnl, new GridBagConstraints(0, 1, 1, 1, 0.9d, 0.9d, 10, 1, new Insets(10, 10, 10, 10), 0, 0));
        getContentPane().add(this.m_southPnl, new GridBagConstraints(0, 2, 1, 1, 1.0d, 0.0d, 15, 1, new Insets(0, 0, 2, 0), 0, 0));
        this.m_northPnl.setLayout(new GridBagLayout());
        this.m_northPnl.setBorder((Border) null);
        this.m_northPnl.add(this.m_scopeLbl, new GridBagConstraints(0, 0, 1, 1, 0.2d, 0.0d, 10, 0, new Insets(5, 0, 5, 0), 0, 0));
        this.m_northPnl.add(this.m_scopeChoice, new GridBagConstraints(1, 0, 1, 1, 1.0d, 0.0d, 10, 2, new Insets(9, 0, 7, 5), 0, 0));
        this.m_northPnl.add(this.m_limitLbl, new GridBagConstraints(2, 0, 1, 1, 0.0d, 0.0d, 10, 0, new Insets(5, 10, 5, 5), 0, 0));
        this.m_northPnl.add(this.m_limitField, new GridBagConstraints(3, 0, 1, 1, 1.0d, 0.0d, 10, 2, new Insets(11, 0, 9, 10), 0, 0));
        this.m_northPnl.add(this.m_basePnl, new GridBagConstraints(0, 1, 4, 1, 0.0d, 0.0d, 10, 1, new Insets(5, 10, 5, 10), 0, 0));
        this.m_filterText.setText("");
        this.m_filterText.setBorder((Border) null);
        this.m_centerPnl.setLayout(new BorderLayout());
        this.m_centerPnl.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), "Search Filter", 4, 2, new Font("SansSerif", 0, 14), new Color(60, 60, 60)));
        this.m_scrollPane.getViewport().add(this.m_filterText);
        this.m_centerPnl.add(this.m_scrollPane, "Center");
        this.m_scopeLbl.setText("Scope:");
        this.m_scopeLbl.setFont(new Font("Dialog", 0, 14));
        this.m_scopeChoice.setSize(new Dimension(115, 25));
        this.m_scopeChoice.setMaximumSize(new Dimension(32767, 25));
        this.m_scopeChoice.setMinimumSize(new Dimension(115, 25));
        this.m_scopeChoice.setPreferredSize(new Dimension(115, 25));
        this.m_scopeChoice.addItem(BASE_SCOPE);
        this.m_scopeChoice.addItem(SINGLE_SCOPE);
        this.m_scopeChoice.addItem(SUBTREE_SCOPE);
        this.m_limitLbl.setText("Limit:");
        this.m_limitField.setText(UNLIMITED);
        this.m_limitField.setHorizontalAlignment(0);
        this.m_southPnl.setLayout(new FlowLayout(1, 15, 5));
        this.m_southPnl.add(this.m_searchBut);
        if (this.m_mode != "Load") {
            this.m_searchBut.setText(SEARCH_CMD);
            this.m_searchBut.setActionCommand(SEARCH_CMD);
            this.m_southPnl.add(this.m_cancelBut);
        } else {
            this.m_searchBut.setText("Load");
            this.m_searchBut.setActionCommand("Load");
        }
        this.m_cancelBut.setText("Cancel");
        this.m_cancelBut.setActionCommand("Cancel");
        setBounds(new Rectangle(0, 0, 595, 331));
        this.m_basePnl.setLayout(new GridBagLayout());
        this.m_basePnl.add(this.jLabel1, new GridBagConstraints(0, 0, 1, 1, 0.0d, 0.0d, 17, 0, new Insets(0, 0, 0, 0), 0, 0));
        this.m_basePnl.add(this.m_baseText, new GridBagConstraints(1, 0, 1, 1, 1.0d, 0.0d, 13, 2, new Insets(5, 5, 5, 0), 0, 0));
        this.jLabel1.setText("Search Base:");
        this.jLabel1.setFont(new Font("SansSerif", 0, 14));
        String str = this.m_mode;
        if (str == RUN_MODE) {
            setTitle("Search Filter Dialog: Execute mode");
        } else if (str == "Load") {
            setTitle("Search Filter Dialog: Load mode");
        } else if (str == DEBUG_MODE) {
            setTitle("Search Filter Dialog: Debug mode");
        } else if (str == ANNOTATE_MODE) {
            setTitle("Search Filter Dialog: Annotate mode");
            this.m_scopeChoice.setEnabled(false);
            this.m_limitField.setEnabled(false);
            this.m_baseText.setEnabled(false);
        } else {
            throw new RuntimeException("Unrecognized mode.");
        }
    }

    public void closeDialog(WindowEvent windowEvent) {
        setVisible(false);
        dispose();
    }

    public String getScope() {
        return (String) this.m_scopeChoice.getItemAt(this.m_scopeChoice.getSelectedIndex());
    }

    public String getLimit() {
        return this.m_limitField.getText();
    }

    public String getFilter() {
        return this.m_filterText.getText();
    }

    public void setBase(String str) {
        this.m_baseText.setText(str);
    }

    public void setScope(String str) {
        this.m_scopeChoice.setSelectedItem(str);
    }

    public String getBase() {
        return this.m_baseText.getText();
    }
}
