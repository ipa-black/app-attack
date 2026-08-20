package org.apache.ldap.server.db.gui;

import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
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
import javax.naming.directory.Attributes;
import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
/* loaded from: classes3.dex */
public class EntryDialog extends JDialog {
    private static final long serialVersionUID = 3761684611092001592L;
    private JPanel m_attrPnl;
    private JScrollPane m_attrScrollPnl;
    private JTable m_attrTbl;
    private JPanel m_buttonPnl;
    private JButton m_cancelBut;
    private String m_dn;
    private JPanel m_dnPnl;
    private JTextField m_dnText;
    private JButton m_doneBut;
    private Attributes m_entry;
    private JPanel m_namePnl;
    private String m_opMode;
    private String m_rdn;
    private JComboBox m_rdnChoice;
    private JLabel m_rdnLbl;
    private JPanel m_rdnPnl;

    public EntryDialog(Frame frame, String str, boolean z) {
        super(frame, z);
        this.m_namePnl = new JPanel();
        this.m_attrPnl = new JPanel();
        this.m_buttonPnl = new JPanel();
        this.m_rdnPnl = new JPanel();
        this.m_dnPnl = new JPanel();
        this.m_rdnLbl = new JLabel();
        this.m_rdnChoice = new JComboBox();
        this.m_dnText = new JTextField();
        this.m_attrScrollPnl = new JScrollPane();
        this.m_attrTbl = new JTable();
        this.m_doneBut = new JButton();
        this.m_cancelBut = new JButton();
        this.m_opMode = str;
        initGUI();
    }

    private void initGUI() {
        addWindowListener(new WindowAdapter() { // from class: org.apache.ldap.server.db.gui.EntryDialog.1
            public void windowClosing(WindowEvent windowEvent) {
                EntryDialog.this.closeDialog();
            }
        });
        pack();
        setBounds(new Rectangle(0, 0, 447, 364));
        setTitle("Entry Dialog");
        getContentPane().setLayout(new GridBagLayout());
        getContentPane().add(this.m_namePnl, new GridBagConstraints(0, 0, 1, 1, 1.0d, 0.0d, 11, 2, new Insets(5, 5, 5, 5), 0, 0));
        getContentPane().add(this.m_attrPnl, new GridBagConstraints(0, 1, 1, 1, 1.0d, 1.0d, 10, 1, new Insets(5, 5, 5, 5), 0, 0));
        getContentPane().add(this.m_buttonPnl, new GridBagConstraints(0, 2, 1, 1, 1.0d, 0.05d, 10, 2, new Insets(0, 0, 0, 20), 0, 0));
        this.m_namePnl.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), "Naming", 4, 2, new Font("SansSerif", 0, 14), new Color(60, 60, 60)));
        this.m_namePnl.setLayout(new BoxLayout(this.m_namePnl, 1));
        this.m_namePnl.add(this.m_rdnPnl);
        this.m_namePnl.add(this.m_dnPnl);
        this.m_rdnLbl.setText("Rdn:");
        this.m_rdnPnl.setLayout(new GridBagLayout());
        this.m_rdnPnl.add(this.m_rdnChoice, new GridBagConstraints(1, 0, 1, 1, 1.0d, 0.0d, 17, 0, new Insets(0, 10, 0, 0), 0, 0));
        this.m_rdnPnl.add(this.m_rdnLbl, new GridBagConstraints(0, 0, 1, 1, 0.0d, 0.0d, 17, 0, new Insets(0, 10, 0, 0), 0, 0));
        this.m_dnPnl.setLayout(new GridBagLayout());
        this.m_dnPnl.add(this.m_dnText, new GridBagConstraints(1, 0, 1, 1, 1.0d, 0.0d, 17, 2, new Insets(0, 5, 0, 0), 0, 0));
        this.m_dnText.setText("unknown");
        this.m_dnText.setEditable(false);
        this.m_dnText.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), "Dn", 4, 2, new Font("SansSerif", 0, 14), new Color(60, 60, 60)));
        this.m_rdnChoice.setEditable(true);
        this.m_rdnChoice.setMaximumRowCount(6);
        this.m_rdnChoice.setSize(new Dimension((int) TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 24));
        this.m_attrPnl.setLayout(new BorderLayout());
        this.m_attrPnl.add(this.m_attrScrollPnl, "Center");
        this.m_attrScrollPnl.getViewport().add(this.m_attrTbl);
        this.m_attrTbl.setBounds(new Rectangle(78, 60, 32, 32));
        this.m_attrTbl.setEditingColumn(1);
        this.m_attrTbl.setCellSelectionEnabled(true);
        this.m_doneBut.setText("Done");
        this.m_buttonPnl.setLayout(new FlowLayout(2, 10, 5));
        this.m_buttonPnl.add(this.m_doneBut);
        this.m_buttonPnl.add(this.m_cancelBut);
        this.m_cancelBut.setText("Cancel");
        this.m_cancelBut.addActionListener(new ActionListener() { // from class: org.apache.ldap.server.db.gui.EntryDialog.2
            public void actionPerformed(ActionEvent actionEvent) {
                EntryDialog.this.closeDialog();
            }
        });
        this.m_attrScrollPnl.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), "Attributes", 4, 2, new Font("SansSerif", 0, 14), new Color(60, 60, 60)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeDialog() {
        setVisible(false);
        dispose();
    }

    public void setDn(String str) {
        this.m_dn = str;
        this.m_dnText.setText(str);
    }

    public void setRdn(String str) {
        this.m_rdn = str;
    }

    public void setEntry(Attributes attributes) {
        this.m_entry = attributes;
    }
}
