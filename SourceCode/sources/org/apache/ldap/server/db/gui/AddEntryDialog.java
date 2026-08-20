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
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.naming.directory.Attributes;
import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.DefaultCellEditor;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPopupMenu;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import org.apache.ldap.common.message.LockableAttributesImpl;
import org.apache.ldap.server.jndi.JavaLdapSupport;
/* loaded from: classes3.dex */
public class AddEntryDialog extends JDialog implements ActionListener {
    static /* synthetic */ Class class$0 = null;
    private static final long serialVersionUID = 3544671793504663604L;
    private JPanel m_attrPnl;
    private JScrollPane m_attrScrollPnl;
    private JTable m_attrTbl;
    private JPanel m_buttonPnl;
    private JButton m_cancelBut;
    private Attributes m_childEntry;
    private JPanel m_dnPnl;
    private JTextField m_dnText;
    private JButton m_doneBut;
    private JPanel m_namePnl;
    private JPopupMenu m_popup;
    private JComboBox m_rdnChoice;
    private JLabel m_rdnLbl;
    private JPanel m_rdnPnl;

    public AddEntryDialog(Frame frame, boolean z) {
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
        LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
        this.m_childEntry = lockableAttributesImpl;
        lockableAttributesImpl.put(JavaLdapSupport.OBJECTCLASS_ATTR, JavaLdapSupport.TOP_ATTR);
        initGUI();
    }

    private void initGUI() {
        addWindowListener(new WindowAdapter() { // from class: org.apache.ldap.server.db.gui.AddEntryDialog.1
            public void windowClosing(WindowEvent windowEvent) {
                AddEntryDialog.this.closeDialog();
            }
        });
        pack();
        setBounds(new Rectangle(0, 0, 447, 364));
        setTitle("Add New Entry");
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
        this.m_attrTbl.setCellSelectionEnabled(true);
        this.m_doneBut.setText("Done");
        this.m_buttonPnl.setLayout(new FlowLayout(2, 10, 5));
        this.m_buttonPnl.add(this.m_doneBut);
        this.m_buttonPnl.add(this.m_cancelBut);
        this.m_cancelBut.setText("Cancel");
        this.m_cancelBut.addActionListener(new ActionListener() { // from class: org.apache.ldap.server.db.gui.AddEntryDialog.2
            public void actionPerformed(ActionEvent actionEvent) {
                AddEntryDialog.this.closeDialog();
            }
        });
        this.m_attrScrollPnl.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), "Attributes", 4, 2, new Font("SansSerif", 0, 14), new Color(60, 60, 60)));
        this.m_attrTbl.setModel(new AttributesTableModel(this.m_childEntry, null, null, true));
        this.m_popup = new JPopupMenu();
        JMenuItem jMenuItem = new JMenuItem("Add");
        jMenuItem.setActionCommand("Add");
        jMenuItem.addActionListener(this);
        this.m_popup.add(jMenuItem);
        JMenuItem jMenuItem2 = new JMenuItem("Delete");
        jMenuItem2.setActionCommand("Delete");
        jMenuItem2.addActionListener(this);
        this.m_popup.add(jMenuItem2);
        this.m_attrTbl.addMouseListener(new PopupListener());
        setUpEditor(this.m_attrTbl);
    }

    private void setUpEditor(JTable jTable) {
        final JTextField jTextField = new JTextField();
        DefaultCellEditor defaultCellEditor = new DefaultCellEditor(this, jTextField) { // from class: org.apache.ldap.server.db.gui.AddEntryDialog.3
            private static final long serialVersionUID = 3256727286014554675L;
            final /* synthetic */ AddEntryDialog this$0;

            {
                this.this$0 = this;
            }

            public Object getCellEditorValue() {
                System.out.println(new StringBuffer("Editor returning '").append(jTextField.getText()).append("'").toString());
                return jTextField.getText();
            }
        };
        Class<?> cls = class$0;
        if (cls == null) {
            try {
                cls = Class.forName("java.lang.String");
                class$0 = cls;
            } catch (ClassNotFoundException e2) {
                throw new NoClassDefFoundError(e2.getMessage());
            }
        }
        jTable.setDefaultEditor(cls, defaultCellEditor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class PopupListener extends MouseAdapter {
        PopupListener() {
        }

        public void mousePressed(MouseEvent mouseEvent) {
            maybeShowPopup(mouseEvent);
        }

        public void mouseReleased(MouseEvent mouseEvent) {
            maybeShowPopup(mouseEvent);
        }

        private void maybeShowPopup(MouseEvent mouseEvent) {
            if (mouseEvent.isPopupTrigger()) {
                AddEntryDialog.this.m_popup.show(mouseEvent.getComponent(), mouseEvent.getX(), mouseEvent.getY());
            }
        }
    }

    public void actionPerformed(ActionEvent actionEvent) {
        String actionCommand = actionEvent.getActionCommand();
        AttributesTableModel model = this.m_attrTbl.getModel();
        int selectedRow = this.m_attrTbl.getSelectedRow();
        System.out.println(actionCommand);
        if (selectedRow >= model.getRowCount() || selectedRow < 0) {
            JOptionPane.showMessageDialog(this, "Row needs to be selected to apply operation");
        }
        if (actionCommand.equals("Add")) {
            model.insert(selectedRow, "xxxx", "xxxx");
        } else if (actionCommand.equals("Delete")) {
            model.delete(selectedRow);
        } else {
            JOptionPane.showMessageDialog(this, "Unrecognized action - abandoning action processing.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeDialog() {
        setVisible(false);
        dispose();
    }

    public void setParentDn(String str) {
        this.m_dnText.setText(str);
    }

    public Attributes getChildEntry() {
        return this.m_childEntry;
    }

    public String getChildDn() {
        return this.m_dnText.getText();
    }
}
