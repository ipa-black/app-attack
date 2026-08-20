package org.apache.ldap.server.db.gui;

import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.bidmachine.protobuf.EventTypeExtended;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.Rectangle;
import java.awt.Toolkit;
import java.awt.Window;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Stack;
import javax.naming.Context;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.naming.directory.SearchControls;
import javax.swing.BorderFactory;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSeparator;
import javax.swing.JSplitPane;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.JTree;
import javax.swing.border.Border;
import javax.swing.event.TreeSelectionEvent;
import javax.swing.event.TreeSelectionListener;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.TreeNode;
import javax.swing.tree.TreePath;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.filter.FilterParserImpl;
import org.apache.ldap.common.ldif.LdifIterator;
import org.apache.ldap.common.ldif.LdifParserImpl;
import org.apache.ldap.common.message.LockableAttributesImpl;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.common.util.StringTools;
import org.apache.ldap.server.ContextPartition;
import org.apache.ldap.server.PartitionNexus;
import org.apache.ldap.server.db.Database;
import org.apache.ldap.server.db.Index;
import org.apache.ldap.server.db.IndexRecord;
import org.apache.ldap.server.db.SearchEngine;
import org.apache.ldap.server.jndi.ProviderNexusAspect;
/* loaded from: classes3.dex */
public class MainFrame extends JFrame {
    private static final long serialVersionUID = 4049353102291513657L;
    private Database database;
    private SearchEngine eng;
    private JLabel statusBar = new JLabel("Ready");
    private JPanel mainPnl = new JPanel();
    private JSplitPane splitPane = new JSplitPane();
    private JTabbedPane tabbedPane = new JTabbedPane();
    private JPanel entryPnl = new JPanel();
    private JPanel idxPnl = new JPanel();
    private JScrollPane treePane = new JScrollPane();
    private JTree tree = new JTree();
    private JScrollPane entryPane = new JScrollPane();
    private JTable entryTbl = new JTable();
    private JScrollPane idxPane = new JScrollPane();
    private JTable idxTbl = new JTable();
    private JMenu searchMenu = new JMenu();
    private JMenuItem annotate = new JMenuItem();
    private JMenuItem run = new JMenuItem();
    private JMenuItem debug = new JMenuItem();
    private JMenu indices = new JMenu();
    private boolean doCleanUp = false;
    private HashMap nodes = new HashMap();
    private EntryNode root = null;

    public MainFrame(Database database, SearchEngine searchEngine) throws NamingException {
        this.database = null;
        this.database = database;
        this.eng = searchEngine;
        initGUI();
        buildIndicesMenu(this.database);
        pack();
        load();
    }

    private void initGUI() {
        this.mainPnl.setBorder((Border) null);
        this.mainPnl.setLayout(new BorderLayout());
        this.mainPnl.add(this.splitPane, "Center");
        this.splitPane.add(this.tabbedPane, TtmlNode.RIGHT);
        this.splitPane.add(this.treePane, TtmlNode.LEFT);
        this.tabbedPane.add(this.entryPnl, "Entry Attributes");
        this.tabbedPane.add(this.idxPnl, "Entry Indices");
        this.entryPnl.setLayout(new BorderLayout());
        this.entryPnl.add(this.entryPane, "Center");
        this.idxPnl.setLayout(new BorderLayout());
        this.idxPnl.add(this.idxPane, "Center");
        getContentPane().setLayout(new BorderLayout());
        JPanel jPanel = new JPanel();
        jPanel.setPreferredSize(new Dimension(798, 461));
        jPanel.setLayout(new BorderLayout());
        jPanel.setBorder(BorderFactory.createEtchedBorder());
        jPanel.add(this.mainPnl, "North");
        getContentPane().add(jPanel, "Center");
        setTitle("Backend DB Viewer");
        getContentPane().add(this.statusBar, "South");
        JMenuBar jMenuBar = new JMenuBar();
        JMenu jMenu = new JMenu("Backend");
        jMenu.setText("Backend");
        jMenu.setBackground(new Color((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE));
        jMenu.setMnemonic('B');
        JMenuItem jMenuItem = new JMenuItem("Add");
        jMenu.add(jMenuItem);
        jMenuItem.setMnemonic('A');
        jMenuItem.setBackground(new Color((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE));
        jMenuItem.addActionListener(new ActionListener() { // from class: org.apache.ldap.server.db.gui.MainFrame.1
            public void actionPerformed(ActionEvent actionEvent) {
                MainFrame.this.doAddDialog();
            }
        });
        JMenuItem jMenuItem2 = new JMenuItem("Import");
        jMenu.add(jMenuItem2);
        jMenuItem2.setMnemonic('I');
        jMenuItem2.setBackground(new Color((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE));
        jMenuItem2.addActionListener(new ActionListener() { // from class: org.apache.ldap.server.db.gui.MainFrame.2
            public void actionPerformed(ActionEvent actionEvent) {
                MainFrame.this.doImport();
            }
        });
        JMenuItem jMenuItem3 = new JMenuItem("Exit");
        jMenu.add(jMenuItem3);
        jMenuItem3.setMnemonic('E');
        jMenuItem3.setBackground(new Color((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE));
        jMenuItem3.addActionListener(new ActionListener() { // from class: org.apache.ldap.server.db.gui.MainFrame.3
            public void actionPerformed(ActionEvent actionEvent) {
                MainFrame.this.exitForm();
            }
        });
        JMenu jMenu2 = new JMenu("Help");
        jMenu2.setMnemonic('H');
        JMenuItem jMenuItem4 = new JMenuItem("About");
        jMenuItem4.setMnemonic('A');
        jMenuItem4.setBackground(new Color((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE));
        jMenuItem4.addActionListener(new ActionListener() { // from class: org.apache.ldap.server.db.gui.MainFrame.4
            public void actionPerformed(ActionEvent actionEvent) {
                AboutDialog aboutDialog = new AboutDialog(MainFrame.this, true);
                MainFrame.this.centerOnScreen(aboutDialog);
                aboutDialog.setVisible(true);
            }
        });
        jMenu2.setBackground(new Color((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE));
        jMenu2.add(jMenuItem4);
        jMenuBar.setBackground(new Color(196, 197, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE));
        jMenuBar.add(jMenu);
        jMenuBar.add(this.searchMenu);
        jMenuBar.add(this.indices);
        jMenuBar.add(jMenu2);
        setJMenuBar(jMenuBar);
        setBounds(new Rectangle(0, 0, (int) EventTypeExtended.EVENT_TYPE_EXTENDED_NURL_VALUE, 515));
        setSize(new Dimension((int) EventTypeExtended.EVENT_TYPE_EXTENDED_NURL_VALUE, 515));
        setResizable(true);
        addWindowListener(new WindowAdapter() { // from class: org.apache.ldap.server.db.gui.MainFrame.5
            public void windowClosing(WindowEvent windowEvent) {
                MainFrame.this.exitForm();
            }
        });
        this.treePane.getViewport().add(this.tree);
        this.tree.setBounds(new Rectangle(6, 184, 82, 80));
        this.tree.setShowsRootHandles(true);
        this.tree.setToolTipText("DB DIT");
        this.tree.setScrollsOnExpand(true);
        this.tree.getSelectionModel().addTreeSelectionListener(new TreeSelectionListener() { // from class: org.apache.ldap.server.db.gui.MainFrame.6
            public void valueChanged(TreeSelectionEvent treeSelectionEvent) {
                TreePath newLeadSelectionPath = treeSelectionEvent.getNewLeadSelectionPath();
                if (newLeadSelectionPath == null) {
                    return;
                }
                Object lastPathComponent = newLeadSelectionPath.getLastPathComponent();
                try {
                    if (lastPathComponent instanceof EntryNode) {
                        MainFrame.this.displayEntry(((EntryNode) lastPathComponent).getEntryId(), ((EntryNode) lastPathComponent).getLdapEntry());
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
        this.entryPane.getViewport().add(this.entryTbl);
        this.entryTbl.setBounds(new Rectangle(321, 103, 32, 32));
        this.idxPane.getViewport().add(this.idxTbl);
        this.idxTbl.setBounds(new Rectangle(429, (int) TsExtractor.TS_STREAM_TYPE_SPLICE_INFO, 32, 32));
        this.treePane.setSize(new Dimension(285, 435));
        this.treePane.setPreferredSize(new Dimension(285, 403));
        this.searchMenu.setText(FilterDialog.SEARCH_CMD);
        this.searchMenu.setBackground(new Color((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE));
        this.searchMenu.add(this.run);
        this.searchMenu.add(this.debug);
        this.searchMenu.add(this.annotate);
        ActionListener actionListener = new ActionListener() { // from class: org.apache.ldap.server.db.gui.MainFrame.7
            public void actionPerformed(ActionEvent actionEvent) {
                System.out.println(new StringBuffer("action command = ").append(actionEvent.getActionCommand()).toString());
                MainFrame.this.doFilterDialog(actionEvent.getActionCommand());
            }
        };
        this.annotate.setText(FilterDialog.ANNOTATE_MODE);
        this.annotate.setActionCommand(FilterDialog.ANNOTATE_MODE);
        this.annotate.setBackground(new Color((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE));
        this.annotate.addActionListener(actionListener);
        this.run.setText(FilterDialog.RUN_MODE);
        this.run.setActionCommand(FilterDialog.RUN_MODE);
        this.run.setBackground(new Color((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE));
        this.run.addActionListener(actionListener);
        this.debug.setText(FilterDialog.DEBUG_MODE);
        this.debug.setActionCommand(FilterDialog.DEBUG_MODE);
        this.debug.setBackground(new Color((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE));
        this.debug.addActionListener(actionListener);
        this.indices.setText("Indices");
        this.indices.setBackground(new Color((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void centerOnScreen(Window window) {
        Dimension size = window.getSize();
        Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
        size.height = size.height > screenSize.height ? screenSize.height : size.height;
        size.width = size.width > screenSize.width ? screenSize.width : size.width;
        window.setLocation((screenSize.width - size.width) / 2, (screenSize.height - size.height) / 2);
    }

    public void doAddDialog() {
        try {
            TreePath selectionPath = this.tree.getSelectionModel().getSelectionPath();
            String obj = this.database.getSuffix().toString();
            if (selectionPath != null) {
                Object lastPathComponent = selectionPath.getLastPathComponent();
                if (lastPathComponent instanceof EntryNode) {
                    obj = ((EntryNode) lastPathComponent).getEntryDn();
                }
            }
            if (obj == null) {
                JOptionPane.showMessageDialog(this, "Must select a parent entry to add a child to!");
                return;
            }
            AddEntryDialog addEntryDialog = new AddEntryDialog(this, false);
            addEntryDialog.setParentDn(obj);
            centerOnScreen(addEntryDialog);
            addEntryDialog.setEnabled(true);
            addEntryDialog.setVisible(true);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public String getSelectedDn() {
        TreePath selectionPath = this.tree.getSelectionModel().getSelectionPath();
        if (selectionPath == null) {
            return this.database.getSuffix().toString();
        }
        Object lastPathComponent = selectionPath.getLastPathComponent();
        if (lastPathComponent instanceof EntryNode) {
            try {
                return ((EntryNode) lastPathComponent).getEntryDn();
            } catch (NamingException e2) {
                e2.printStackTrace();
                return null;
            }
        }
        return this.database.getSuffix().toString();
    }

    public void doImport() {
        LdifParserImpl ldifParserImpl = new LdifParserImpl();
        JFileChooser jFileChooser = new JFileChooser();
        int showOpenDialog = jFileChooser.showOpenDialog(this);
        File selectedFile = jFileChooser.getSelectedFile();
        if (showOpenDialog != 0) {
            return;
        }
        try {
            LdifIterator ldifIterator = new LdifIterator(new FileReader(selectedFile));
            while (ldifIterator.hasNext()) {
                LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
                ldifParserImpl.parse(lockableAttributesImpl, (String) ldifIterator.next());
                String str = (String) lockableAttributesImpl.get("dn").get();
                LdapName ldapName = new LdapName(StringTools.deepTrimToLower(str));
                lockableAttributesImpl.remove("dn");
                if (this.database.getEntryId(ldapName.toString()) == null) {
                    this.database.add(str, ldapName, lockableAttributesImpl);
                    load();
                }
            }
        } catch (NamingException e2) {
            e2.printStackTrace();
        } catch (FileNotFoundException e3) {
            e3.printStackTrace();
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitForm() {
        Database database;
        setEnabled(false);
        setVisible(false);
        dispose();
        if (!this.doCleanUp || (database = this.database) == null) {
            return;
        }
        try {
            database.sync();
            this.database.close();
        } catch (NamingException e2) {
            e2.printStackTrace();
        }
        System.exit(0);
    }

    public void doRunDebugAnnotate(FilterDialog filterDialog, String str) {
        try {
            if (str == FilterDialog.RUN_MODE) {
                doRun(filterDialog.getFilter(), filterDialog.getScope(), filterDialog.getBase(), filterDialog.getLimit());
            } else if (str == FilterDialog.DEBUG_MODE) {
                doDebug(filterDialog.getFilter(), filterDialog.getScope(), filterDialog.getBase(), filterDialog.getLimit());
            } else if (str == FilterDialog.ANNOTATE_MODE) {
                doAnnotate(filterDialog.getFilter());
            } else {
                throw new RuntimeException("Unrecognized mode.");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void doFilterDialog(final String str) {
        final FilterDialog filterDialog = new FilterDialog(str, this, true);
        if (this.tree.getSelectionModel().getSelectionPath() != null) {
            filterDialog.setBase(getSelectedDn());
        } else {
            filterDialog.setBase(this.database.getSuffix().toString());
        }
        filterDialog.addActionListener(new ActionListener() { // from class: org.apache.ldap.server.db.gui.MainFrame.8
            public void actionPerformed(ActionEvent actionEvent) {
                String actionCommand = actionEvent.getActionCommand();
                if (actionCommand.equals(FilterDialog.SEARCH_CMD)) {
                    MainFrame.this.doRunDebugAnnotate(filterDialog, str);
                } else if (!actionCommand.equals("Cancel")) {
                    throw new RuntimeException(new StringBuffer("Unrecognized FilterDialog command: ").append(actionCommand).toString());
                }
                filterDialog.setVisible(false);
                filterDialog.dispose();
            }
        });
        filterDialog.setSize(456, 256);
        centerOnScreen(filterDialog);
        filterDialog.setEnabled(true);
        filterDialog.setVisible(true);
    }

    public boolean doRun(String str, String str2, String str3, String str4) throws Exception {
        System.out.println(new StringBuffer("Search attempt using filter '").append(str).append("' with scope '").append(str2).append("' and a return limit of '").append(str4).append("'").toString());
        try {
            ExprNode parse = new FilterParserImpl().parse(str);
            SearchControls searchControls = new SearchControls();
            if (str2 == FilterDialog.BASE_SCOPE) {
                searchControls.setSearchScope(0);
            } else if (str2 == FilterDialog.SINGLE_SCOPE) {
                searchControls.setSearchScope(1);
            } else if (str2 == FilterDialog.SUBTREE_SCOPE) {
                searchControls.setSearchScope(2);
            } else {
                throw new RuntimeException(new StringBuffer("Unexpected scope parameter: ").append(str2).toString());
            }
            int parseInt = !str4.equals(FilterDialog.UNLIMITED) ? Integer.parseInt(str4) : Integer.MAX_VALUE;
            Hashtable hashtable = new Hashtable();
            hashtable.put("java.naming.ldap.derefAliases", "always");
            SearchEngine searchEngine = this.eng;
            LdapName ldapName = new LdapName(str3);
            try {
                if ((this instanceof Context) && !(this instanceof ContextPartition) && (searchEngine instanceof PartitionNexus) && !(searchEngine instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
                }
                NamingEnumeration search = searchEngine.search(ldapName, hashtable, parse, searchControls);
                TableModel defaultTableModel = new DefaultTableModel(new String[]{"id", "dn"}, 0);
                Object[] objArr = new Object[2];
                int i = 0;
                while (search.hasMore() && i < parseInt) {
                    BigInteger entryId = ((IndexRecord) search.next()).getEntryId();
                    objArr[0] = entryId;
                    objArr[1] = this.database.getEntryDn(entryId);
                    defaultTableModel.addRow(objArr);
                    i++;
                }
                SearchResultDialog searchResultDialog = new SearchResultDialog(this, false);
                StringBuffer stringBuffer = new StringBuffer("base: ");
                stringBuffer.append(str3);
                stringBuffer.append("\nscope: ");
                stringBuffer.append(str2);
                stringBuffer.append("\nlimit: ");
                stringBuffer.append(str4);
                stringBuffer.append("\ntotal: ");
                stringBuffer.append(i);
                stringBuffer.append("\nfilter:\n");
                stringBuffer.append(str);
                stringBuffer.append("\n");
                searchResultDialog.setFilter(stringBuffer.toString());
                searchResultDialog.setTreeModel(new DefaultTreeModel(new ASTNode(null, parse), true));
                searchResultDialog.setTableModel(defaultTableModel);
                centerOnScreen(searchResultDialog);
                searchResultDialog.setVisible(true);
                return true;
            } finally {
                if ((this instanceof Context) && !(this instanceof ContextPartition) && (searchEngine instanceof PartitionNexus) && !(searchEngine instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            JTextArea jTextArea = new JTextArea();
            String message = e2.getMessage();
            if (message.length() > 1024) {
                message = new StringBuffer(String.valueOf(message.substring(0, 1024))).append("\n. . . truncated . . .").toString();
            }
            jTextArea.setText(message);
            jTextArea.setEnabled(false);
            JOptionPane.showMessageDialog((Component) null, jTextArea, "Syntax Error", 0);
            return false;
        }
    }

    public void doDebug(String str, String str2, String str3, String str4) {
        System.out.println(new StringBuffer("Search attempt using filter '").append(str).append("' with scope '").append(str2).append("' and a return limit of '").append(str4).append("'").toString());
    }

    public void selectTreeNode(BigInteger bigInteger) {
        Stack stack = new Stack();
        for (TreeNode treeNode = (EntryNode) this.nodes.get(bigInteger); treeNode != null && treeNode != treeNode.getParent(); treeNode = treeNode.getParent()) {
            stack.push(treeNode);
        }
        Object[] objArr = stack.size() == 0 ? new Object[]{this.root} : new Object[stack.size()];
        for (int i = 0; stack.size() > 0 && i < objArr.length; i++) {
            objArr[i] = stack.pop();
        }
        TreePath treePath = new TreePath(objArr);
        this.tree.scrollPathToVisible(treePath);
        this.tree.getSelectionModel().setSelectionPath(treePath);
        this.tree.validate();
    }

    public boolean doAnnotate(String str) throws Exception {
        try {
            ExprNode parse = new FilterParserImpl().parse(str);
            AnnotatedFilterTreeDialog annotatedFilterTreeDialog = new AnnotatedFilterTreeDialog(this, false);
            annotatedFilterTreeDialog.setFilter(str);
            this.eng.getOptimizer().annotate(parse);
            annotatedFilterTreeDialog.setModel(new DefaultTreeModel(new ASTNode(null, parse), true));
            annotatedFilterTreeDialog.setVisible(true);
            return true;
        } catch (Exception e2) {
            JTextArea jTextArea = new JTextArea();
            String message = e2.getMessage();
            if (message.length() > 1024) {
                message = new StringBuffer(String.valueOf(message.substring(0, 1024))).append("\n. . . truncated . . .").toString();
            }
            jTextArea.setText(message);
            jTextArea.setEnabled(false);
            JOptionPane.showMessageDialog((Component) null, jTextArea, "Syntax Error", 0);
            return false;
        }
    }

    public void showIndexDialog(String str) throws Exception {
        Index userIndex;
        if (this.database.hasSystemIndexOn(str)) {
            userIndex = this.database.getSystemIndex(str);
        } else {
            userIndex = this.database.getUserIndex(str);
        }
        if (userIndex != null) {
            IndexDialog indexDialog = new IndexDialog(this, false, userIndex);
            centerOnScreen(indexDialog);
            indexDialog.setEnabled(true);
            indexDialog.setVisible(true);
        }
    }

    public void buildIndicesMenu(Database database) {
        ActionListener actionListener = new ActionListener() { // from class: org.apache.ldap.server.db.gui.MainFrame.9
            public void actionPerformed(ActionEvent actionEvent) {
                try {
                    MainFrame.this.showIndexDialog(actionEvent.getActionCommand());
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        };
        Iterator systemIndices = database.getSystemIndices();
        while (systemIndices.hasNext()) {
            String str = (String) systemIndices.next();
            JMenuItem jMenuItem = new JMenuItem();
            jMenuItem.setBackground(new Color((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE));
            this.indices.add(jMenuItem);
            jMenuItem.setText(str);
            jMenuItem.setActionCommand(str);
            jMenuItem.addActionListener(actionListener);
        }
        this.indices.add(new JSeparator());
        Iterator userIndices = database.getUserIndices();
        while (userIndices.hasNext()) {
            String str2 = (String) userIndices.next();
            JMenuItem jMenuItem2 = new JMenuItem();
            jMenuItem2.setBackground(new Color((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE));
            this.indices.add(jMenuItem2);
            jMenuItem2.setText(str2);
            jMenuItem2.setActionCommand(str2);
            jMenuItem2.addActionListener(actionListener);
        }
    }

    void displayEntry(BigInteger bigInteger, Attributes attributes) throws Exception {
        String entryUpdn = this.database.getEntryUpdn(bigInteger);
        this.entryTbl.setModel(new AttributesTableModel(attributes, bigInteger, entryUpdn, false));
        this.idxTbl.setModel(new AttributesTableModel(this.database.getIndices(bigInteger), bigInteger, entryUpdn, false));
        validate();
    }

    private void load() throws NamingException {
        this.nodes = new HashMap();
        Attributes suffixEntry = this.database.getSuffixEntry();
        Database database = this.database;
        this.root = new EntryNode(database.getEntryId(database.getSuffix().toString()), null, this.database, suffixEntry, this.nodes);
        this.tree.setModel(new DefaultTreeModel(this.root));
        if (isVisible()) {
            this.tree.validate();
        }
    }
}
