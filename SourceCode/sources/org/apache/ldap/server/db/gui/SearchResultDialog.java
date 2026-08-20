package org.apache.ldap.server.db.gui;

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
import java.math.BigInteger;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.JTree;
import javax.swing.ListSelectionModel;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.table.TableModel;
import javax.swing.tree.TreeModel;
/* loaded from: classes3.dex */
public class SearchResultDialog extends JDialog implements ListSelectionListener {
    private static final long serialVersionUID = 3256999964914757684L;
    private JButton jButton1;
    private JPanel jPanel1;
    private JPanel jPanel2;
    private JPanel jPanel3;
    private JPanel jPanel4;
    private JScrollPane jScrollPane1;
    private JScrollPane jScrollPane2;
    private JTextArea jTextArea1;
    private JTree jTree1;
    private JTable m_resultsTbl;

    public SearchResultDialog(Frame frame, boolean z) {
        super(frame, z);
        this.jPanel1 = new JPanel();
        this.jTree1 = new JTree();
        this.jPanel2 = new JPanel();
        this.jPanel3 = new JPanel();
        this.jTextArea1 = new JTextArea();
        this.jScrollPane1 = new JScrollPane();
        this.jButton1 = new JButton();
        this.jPanel4 = new JPanel();
        this.jScrollPane2 = new JScrollPane();
        this.m_resultsTbl = new JTable();
        initGUI();
    }

    private void initGUI() {
        addWindowListener(new WindowAdapter() { // from class: org.apache.ldap.server.db.gui.SearchResultDialog.1
            public void windowClosing(WindowEvent windowEvent) {
                SearchResultDialog.this.closeDialog(windowEvent);
            }
        });
        pack();
        getContentPane().setLayout(new GridBagLayout());
        getContentPane().add(this.jPanel1, new GridBagConstraints(0, 0, 1, 1, 1.0d, 0.1d, 11, 1, new Insets(10, 5, 5, 5), 0, 0));
        getContentPane().add(this.jPanel2, new GridBagConstraints(0, 1, 1, 1, 1.0d, 0.4d, 10, 1, new Insets(5, 5, 5, 5), 0, 0));
        getContentPane().add(this.jPanel3, new GridBagConstraints(0, 3, 1, 1, 1.0d, 0.1d, 15, 1, new Insets(0, 0, 0, 0), 0, 0));
        getContentPane().add(this.jPanel4, new GridBagConstraints(0, 2, 1, 1, 1.0d, 0.4d, 10, 1, new Insets(5, 5, 5, 5), 0, 0));
        this.jPanel1.setLayout(new BorderLayout(10, 10));
        this.jPanel1.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), "Specifications", 4, 2, new Font("SansSerif", 0, 14), new Color(60, 60, 60)));
        this.jPanel1.add(this.jTextArea1, "Center");
        this.jScrollPane1.getViewport().add(this.jTree1);
        this.jTree1.setBounds(new Rectangle(238, 142, 82, 80));
        this.jTextArea1.setText("");
        this.jTextArea1.setEditable(false);
        setBounds(new Rectangle(0, 0, 485, 434));
        setTitle("Search Results");
        this.jPanel2.setLayout(new BorderLayout());
        this.jPanel2.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), "Filter Expression Tree", 4, 2, new Font("SansSerif", 0, 14), new Color(60, 60, 60)));
        this.jPanel2.add(this.jScrollPane1, "Center");
        this.jButton1.setText("Done");
        this.jButton1.setActionCommand("Done");
        this.jButton1.addActionListener(new ActionListener() { // from class: org.apache.ldap.server.db.gui.SearchResultDialog.2
            public void actionPerformed(ActionEvent actionEvent) {
                SearchResultDialog.this.setVisible(false);
                SearchResultDialog.this.dispose();
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
        this.jPanel4.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), "Search Results", 4, 2, new Font("SansSerif", 0, 14), new Color(60, 60, 60)));
        this.jPanel4.setLayout(new BorderLayout());
        this.jPanel4.add(this.jScrollPane2, "Center");
        this.jScrollPane2.getViewport().add(this.m_resultsTbl);
        this.m_resultsTbl.setSize(new Dimension(450, 10));
        this.m_resultsTbl.getSelectionModel().addListSelectionListener(this);
    }

    public void valueChanged(ListSelectionEvent listSelectionEvent) {
        ListSelectionModel listSelectionModel = (ListSelectionModel) listSelectionEvent.getSource();
        int maxSelectionIndex = listSelectionModel.getMaxSelectionIndex();
        for (int minSelectionIndex = listSelectionModel.getMinSelectionIndex(); minSelectionIndex <= maxSelectionIndex; minSelectionIndex++) {
            if (listSelectionModel.isSelectedIndex(minSelectionIndex) && !listSelectionEvent.getValueIsAdjusting()) {
                getParent().selectTreeNode((BigInteger) this.m_resultsTbl.getModel().getValueAt(minSelectionIndex, 0));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeDialog(WindowEvent windowEvent) {
        windowEvent.getWindow();
        setVisible(false);
        dispose();
    }

    public void setTreeModel(TreeModel treeModel) {
        this.jTree1.setModel(treeModel);
    }

    public void setFilter(String str) {
        this.jTextArea1.setText(str);
    }

    public void setTableModel(TableModel tableModel) {
        this.m_resultsTbl.setModel(tableModel);
    }
}
