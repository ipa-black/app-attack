package org.apache.ldap.server.db.gui;

import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Frame;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.Panel;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.BorderFactory;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;
import org.apache.ldap.common.util.ExceptionUtils;
import org.apache.ldap.common.util.StringTools;
import org.apache.ldap.server.db.Index;
import org.apache.ldap.server.db.IndexEnumeration;
import org.apache.ldap.server.db.IndexRecord;
import org.apache.regexp.RE;
/* loaded from: classes3.dex */
public class IndexDialog extends JDialog {
    public static final String DEFAULT_CURSOR = "Default";
    public static final String EQUALITY_CURSOR = "Equality";
    public static final String GREATER_CURSOR = "Greater";
    public static final String LESS_CURSOR = "Less";
    public static final String REGEX_CURSOR = "Regex";
    private static final long serialVersionUID = 3689917253680445238L;
    private JLabel jLabel1;
    private JLabel jLabel2;
    private JScrollPane jScrollPane2;
    private JPanel m_buttonPnl;
    private JPanel m_cursorPnl;
    private JComboBox m_cursorType;
    private JButton m_doneBut;
    private Index m_index;
    private JTextField m_keyText;
    private JPanel m_listPnl;
    private Panel m_mainPnl;
    private JPanel m_resultsPnl;
    private JTable m_resultsTbl;
    private JButton m_scanBut;
    private JTabbedPane m_tabbedPane;

    public IndexDialog(Frame frame, boolean z, Index index) {
        super(frame, z);
        this.m_mainPnl = new Panel();
        this.m_tabbedPane = new JTabbedPane();
        this.m_listPnl = new JPanel();
        this.m_cursorPnl = new JPanel();
        this.m_resultsPnl = new JPanel();
        this.jScrollPane2 = new JScrollPane();
        this.m_resultsTbl = new JTable();
        this.m_buttonPnl = new JPanel();
        this.m_doneBut = new JButton();
        this.jLabel1 = new JLabel();
        this.m_keyText = new JTextField();
        this.jLabel2 = new JLabel();
        this.m_cursorType = new JComboBox();
        this.m_scanBut = new JButton();
        this.m_index = index;
        initGUI();
    }

    private void initGUI() {
        addWindowListener(new WindowAdapter() { // from class: org.apache.ldap.server.db.gui.IndexDialog.1
            public void windowClosing(WindowEvent windowEvent) {
                IndexDialog.this.closeDialog();
            }
        });
        pack();
        setTitle(new StringBuffer("Index On Attribute '").append(this.m_index.getAttribute()).append("'").toString());
        setBounds(new Rectangle(0, 0, 512, 471));
        getContentPane().add(this.m_mainPnl, "Center");
        this.m_mainPnl.setLayout(new BorderLayout());
        this.m_mainPnl.add(this.m_tabbedPane, "Center");
        this.m_tabbedPane.add(this.m_listPnl, "Listing");
        this.m_listPnl.setLayout(new GridBagLayout());
        this.m_listPnl.add(this.m_cursorPnl, new GridBagConstraints(0, 0, 1, 1, 1.0d, 0.15d, 11, 1, new Insets(15, 0, 30, 0), 0, 0));
        this.m_listPnl.add(this.m_resultsPnl, new GridBagConstraints(0, 1, 1, 1, 1.0d, 0.8d, 10, 1, new Insets(0, 0, 0, 0), 0, 0));
        this.m_listPnl.add(this.m_buttonPnl, new GridBagConstraints(0, 2, 1, 1, 1.0d, 0.05d, 10, 1, new Insets(0, 0, 0, 0), 0, 0));
        this.m_cursorPnl.setLayout(new GridBagLayout());
        this.m_cursorPnl.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), "Display Cursor Constraints", 4, 2, new Font("SansSerif", 0, 14), new Color(60, 60, 60)));
        this.m_cursorPnl.add(this.jLabel1, new GridBagConstraints(0, 1, 1, 1, 0.0d, 0.0d, 17, 0, new Insets(0, 15, 0, 10), 0, 0));
        this.m_cursorPnl.add(this.m_keyText, new GridBagConstraints(1, 1, 1, 1, 0.4d, 0.0d, 17, 1, new Insets(5, 5, 5, 236), 0, 0));
        this.m_cursorPnl.add(this.jLabel2, new GridBagConstraints(0, 0, 1, 1, 0.0d, 0.0d, 17, 0, new Insets(0, 15, 0, 10), 0, 0));
        this.m_cursorPnl.add(this.m_cursorType, new GridBagConstraints(1, 0, 1, 1, 0.4d, 0.0d, 17, 0, new Insets(5, 5, 5, 0), 0, 0));
        this.m_resultsPnl.setLayout(new BorderLayout());
        this.m_resultsPnl.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), "Scan Results", 4, 2, new Font("SansSerif", 0, 14), new Color(60, 60, 60)));
        this.m_resultsPnl.add(this.jScrollPane2, "Center");
        this.jScrollPane2.getViewport().add(this.m_resultsTbl);
        this.m_buttonPnl.setLayout(new FlowLayout(1, 15, 5));
        this.m_buttonPnl.add(this.m_doneBut);
        this.m_buttonPnl.add(this.m_scanBut);
        this.m_doneBut.setText("Done");
        this.m_doneBut.addActionListener(new ActionListener() { // from class: org.apache.ldap.server.db.gui.IndexDialog.2
            public void actionPerformed(ActionEvent actionEvent) {
                IndexDialog.this.closeDialog();
            }
        });
        this.jLabel1.setText("Key Constraint:");
        this.m_keyText.setText("");
        this.m_keyText.setMinimumSize(new Dimension((int) TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 20));
        this.m_keyText.setPreferredSize(new Dimension((int) TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 20));
        this.m_keyText.setMaximumSize(new Dimension((int) TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 20));
        this.m_keyText.setFont(new Font("SansSerif", 0, 14));
        this.m_keyText.setSize(new Dimension((int) TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 20));
        this.jLabel2.setText("Cursor Type:");
        this.m_cursorType.setMaximumSize(new Dimension(32767, 20));
        this.m_cursorType.setMinimumSize(new Dimension(126, 20));
        this.m_cursorType.setPreferredSize(new Dimension((int) TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 20));
        DefaultComboBoxModel defaultComboBoxModel = new DefaultComboBoxModel();
        defaultComboBoxModel.addElement(DEFAULT_CURSOR);
        defaultComboBoxModel.addElement(EQUALITY_CURSOR);
        defaultComboBoxModel.addElement(GREATER_CURSOR);
        defaultComboBoxModel.addElement(LESS_CURSOR);
        defaultComboBoxModel.addElement(REGEX_CURSOR);
        this.m_cursorType.setModel(defaultComboBoxModel);
        this.m_cursorType.setMaximumRowCount(5);
        this.m_scanBut.setText("Scan");
        this.m_scanBut.addActionListener(new ActionListener() { // from class: org.apache.ldap.server.db.gui.IndexDialog.3
            public void actionPerformed(ActionEvent actionEvent) {
                IndexDialog indexDialog = IndexDialog.this;
                indexDialog.doScan(indexDialog.m_keyText.getText(), (String) IndexDialog.this.m_cursorType.getSelectedItem());
            }
        });
        doScan(null, DEFAULT_CURSOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeDialog() {
        setVisible(false);
        dispose();
    }

    public boolean doScan(String str, String str2) {
        IndexEnumeration listIndices;
        if (str == null || str.trim().equals("")) {
            str = null;
        }
        if (str == null && str2 != DEFAULT_CURSOR) {
            JOptionPane.showMessageDialog((Component) null, new StringBuffer("Cannot use a ").append(str2).append(" scan type with a null key constraint.").toString(), "Missing Key Constraint", 0);
            return false;
        }
        try {
            if (str2 == EQUALITY_CURSOR) {
                listIndices = this.m_index.listIndices(str);
            } else if (str2 == GREATER_CURSOR) {
                listIndices = this.m_index.listIndices((Object) str, true);
            } else if (str2 == LESS_CURSOR) {
                listIndices = this.m_index.listIndices((Object) str, false);
            } else if (str2 == REGEX_CURSOR) {
                RE regex = StringTools.getRegex(str);
                int indexOf = str.indexOf(42);
                if (indexOf > 0) {
                    String substring = str.substring(0, indexOf);
                    System.out.println(new StringBuffer("Regex prefix = ").append(substring).toString());
                    listIndices = this.m_index.listIndices(regex, substring);
                } else {
                    listIndices = this.m_index.listIndices(regex);
                }
            } else {
                listIndices = this.m_index.listIndices();
            }
            Object[] objArr = null;
            DefaultTableModel defaultTableModel = new DefaultTableModel(new Object[]{"Keys ( Attribute Value )", "Values ( Entry Id )"}, 0);
            int i = 0;
            while (listIndices.hasMore()) {
                IndexRecord indexRecord = (IndexRecord) listIndices.next();
                defaultTableModel.addRow(new Object[]{indexRecord.getIndexKey(), indexRecord.getEntryId()});
                i++;
            }
            this.m_resultsTbl.setModel(defaultTableModel);
            this.m_resultsPnl.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), new StringBuffer("Scan Results: ").append(i).toString(), 4, 2, new Font("SansSerif", 0, 14), new Color(60, 60, 60)));
            if (isVisible()) {
                validate();
            }
            return true;
        } catch (Exception e2) {
            String stackTrace = ExceptionUtils.getStackTrace(e2);
            if (stackTrace.length() > 1024) {
                stackTrace = new StringBuffer(String.valueOf(stackTrace.substring(0, 1024))).append("\n. . . TRUNCATED . . .").toString();
            }
            String stringBuffer = new StringBuffer("Error while scanning index on attribute ").append(this.m_index.getAttribute()).append(" using a ").append(str2).append(" cursor type with a key constraint of '").append(str).append("':\n").append(stackTrace).toString();
            JTextArea jTextArea = new JTextArea();
            jTextArea.setText(stringBuffer);
            JOptionPane.showMessageDialog((Component) null, jTextArea, "Index Scan Error", 0);
            return false;
        }
    }
}
