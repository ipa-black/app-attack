package org.apache.asn1.ber;

import com.explorestack.iab.vast.VastError;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.Rectangle;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Enumeration;
import javax.swing.BorderFactory;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.JTree;
import javax.swing.border.Border;
import javax.swing.event.TreeSelectionEvent;
import javax.swing.event.TreeSelectionListener;
import javax.swing.filechooser.FileFilter;
import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.TreeNode;
import org.apache.asn1.ber.primitives.PrimitiveUtils;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.asn1.codec.DecoderException;
import org.apache.asn1.codec.binary.Hex;
import org.apache.asn1.codec.stateful.CallbackHistory;
import org.apache.commons.collections.IteratorUtils;
/* loaded from: classes5.dex */
public class TupleTreeAnalyzer extends JFrame implements TreeSelectionListener {
    private boolean doVmExit;
    private JLabel jLabel1;
    private JLabel jLabel2;
    private JLabel jLabel3;
    private JPanel jPanel1;
    private JPanel jPanel2;
    private JPanel jPanel3;
    private JPanel jPanel4;
    private JPanel jPanel5;
    private JScrollPane jScrollPane1;
    private JScrollPane jScrollPane2;
    private JSplitPane jSplitPane1;
    private JTextArea jTextArea1;
    private JTextField jTextField1;
    private JTextField jTextField2;
    private JTextField jTextField3;
    private JTree jTree1;
    private BorderLayout layout;
    private DefaultMutableTupleNode root;
    private JLabel statusBar;

    /* JADX INFO: Access modifiers changed from: private */
    public void hexDumpTupleTree() {
    }

    public TupleTreeAnalyzer(DefaultMutableTupleNode defaultMutableTupleNode) {
        this.doVmExit = false;
        this.layout = new BorderLayout();
        this.statusBar = new JLabel("Ready");
        this.jSplitPane1 = new JSplitPane();
        this.jScrollPane1 = new JScrollPane();
        this.jPanel1 = new JPanel();
        this.jTree1 = new JTree();
        this.jPanel2 = new JPanel();
        this.jPanel5 = new JPanel();
        this.jPanel3 = new JPanel();
        this.jPanel4 = new JPanel();
        this.jLabel1 = new JLabel();
        this.jLabel3 = new JLabel();
        this.jLabel2 = new JLabel();
        this.jScrollPane2 = new JScrollPane();
        this.jTextArea1 = new JTextArea();
        this.jTextField1 = new JTextField();
        this.jTextField3 = new JTextField();
        this.jTextField2 = new JTextField();
        this.root = defaultMutableTupleNode;
        initGUI();
        pack();
    }

    public TupleTreeAnalyzer(DefaultMutableTupleNode defaultMutableTupleNode, boolean z) {
        this.doVmExit = false;
        this.layout = new BorderLayout();
        this.statusBar = new JLabel("Ready");
        this.jSplitPane1 = new JSplitPane();
        this.jScrollPane1 = new JScrollPane();
        this.jPanel1 = new JPanel();
        this.jTree1 = new JTree();
        this.jPanel2 = new JPanel();
        this.jPanel5 = new JPanel();
        this.jPanel3 = new JPanel();
        this.jPanel4 = new JPanel();
        this.jLabel1 = new JLabel();
        this.jLabel3 = new JLabel();
        this.jLabel2 = new JLabel();
        this.jScrollPane2 = new JScrollPane();
        this.jTextArea1 = new JTextArea();
        this.jTextField1 = new JTextField();
        this.jTextField3 = new JTextField();
        this.jTextField2 = new JTextField();
        this.root = defaultMutableTupleNode;
        this.doVmExit = z;
        initGUI();
        pack();
    }

    public TupleTreeAnalyzer(byte[] bArr) throws DecoderException {
        this(ByteBuffer.wrap(bArr));
    }

    public TupleTreeAnalyzer(ByteBuffer byteBuffer) throws DecoderException {
        this.doVmExit = false;
        this.layout = new BorderLayout();
        this.statusBar = new JLabel("Ready");
        this.jSplitPane1 = new JSplitPane();
        this.jScrollPane1 = new JScrollPane();
        this.jPanel1 = new JPanel();
        this.jTree1 = new JTree();
        this.jPanel2 = new JPanel();
        this.jPanel5 = new JPanel();
        this.jPanel3 = new JPanel();
        this.jPanel4 = new JPanel();
        this.jLabel1 = new JLabel();
        this.jLabel3 = new JLabel();
        this.jLabel2 = new JLabel();
        this.jScrollPane2 = new JScrollPane();
        this.jTextArea1 = new JTextArea();
        this.jTextField1 = new JTextField();
        this.jTextField3 = new JTextField();
        this.jTextField2 = new JTextField();
        this.root = null;
        TupleTreeDecoder tupleTreeDecoder = new TupleTreeDecoder();
        CallbackHistory callbackHistory = new CallbackHistory();
        tupleTreeDecoder.setCallback(callbackHistory);
        tupleTreeDecoder.decode(byteBuffer.duplicate());
        this.root = (DefaultMutableTupleNode) callbackHistory.getMostRecent();
        initGUI();
        pack();
    }

    public TupleTreeAnalyzer(ByteBuffer[] byteBufferArr) throws DecoderException {
        this.doVmExit = false;
        this.layout = new BorderLayout();
        this.statusBar = new JLabel("Ready");
        this.jSplitPane1 = new JSplitPane();
        this.jScrollPane1 = new JScrollPane();
        this.jPanel1 = new JPanel();
        this.jTree1 = new JTree();
        this.jPanel2 = new JPanel();
        this.jPanel5 = new JPanel();
        this.jPanel3 = new JPanel();
        this.jPanel4 = new JPanel();
        this.jLabel1 = new JLabel();
        this.jLabel3 = new JLabel();
        this.jLabel2 = new JLabel();
        this.jScrollPane2 = new JScrollPane();
        this.jTextArea1 = new JTextArea();
        this.jTextField1 = new JTextField();
        this.jTextField3 = new JTextField();
        this.jTextField2 = new JTextField();
        this.root = null;
        TupleTreeDecoder tupleTreeDecoder = new TupleTreeDecoder();
        CallbackHistory callbackHistory = new CallbackHistory();
        tupleTreeDecoder.setCallback(callbackHistory);
        for (ByteBuffer byteBuffer : byteBufferArr) {
            tupleTreeDecoder.decode(byteBuffer.duplicate());
        }
        this.root = (DefaultMutableTupleNode) callbackHistory.getMostRecent();
        initGUI();
        pack();
    }

    private void initGUI() {
        getContentPane().setLayout(this.layout);
        JPanel jPanel = new JPanel();
        jPanel.setPreferredSize(new Dimension((int) VastError.ERROR_CODE_GENERAL_WRAPPER, 200));
        getContentPane().add(jPanel, "Center");
        setTitle("");
        getContentPane().add(this.statusBar, "South");
        JMenuBar jMenuBar = new JMenuBar();
        JMenu jMenu = new JMenu("File");
        jMenu.setMnemonic('F');
        JMenuItem jMenuItem = new JMenuItem("Exit");
        jMenuItem.setMnemonic('E');
        jMenuItem.addActionListener(new ActionListener() { // from class: org.apache.asn1.ber.TupleTreeAnalyzer.1
            public void actionPerformed(ActionEvent actionEvent) {
                if (TupleTreeAnalyzer.this.doVmExit) {
                    System.exit(0);
                }
            }
        });
        JMenu jMenu2 = new JMenu("Help");
        jMenu2.setMnemonic('H');
        JMenuItem jMenuItem2 = new JMenuItem("About");
        jMenuItem2.setMnemonic('A');
        jMenuItem2.addActionListener(new ActionListener() { // from class: org.apache.asn1.ber.TupleTreeAnalyzer.2
            public void actionPerformed(ActionEvent actionEvent) {
            }
        });
        jMenu2.add(jMenuItem2);
        final JFileChooser jFileChooser = new JFileChooser();
        JMenuItem jMenuItem3 = new JMenuItem("Open");
        jMenuItem3.setMnemonic('O');
        jMenuItem3.addActionListener(new ActionListener() { // from class: org.apache.asn1.ber.TupleTreeAnalyzer.3
            public void actionPerformed(ActionEvent actionEvent) {
                jFileChooser.showOpenDialog(TupleTreeAnalyzer.this);
            }
        });
        jMenu.add(jMenuItem3);
        JMenuItem jMenuItem4 = new JMenuItem("Save");
        jMenuItem4.setMnemonic('S');
        jMenuItem4.addActionListener(new ActionListener() { // from class: org.apache.asn1.ber.TupleTreeAnalyzer.4
            public void actionPerformed(ActionEvent actionEvent) {
                jFileChooser.showSaveDialog(TupleTreeAnalyzer.this);
            }
        });
        jMenu.add(jMenuItem4);
        JMenuItem jMenuItem5 = new JMenuItem("Print");
        jMenuItem5.setMnemonic('P');
        jMenuItem5.addActionListener(new ActionListener() { // from class: org.apache.asn1.ber.TupleTreeAnalyzer.5
            public void actionPerformed(ActionEvent actionEvent) {
                TupleTreeAnalyzer.this.hexDumpTupleTree();
            }
        });
        jMenu.add(jMenuItem5);
        jMenu.add(jMenuItem);
        jMenuBar.add(jMenu);
        jMenuBar.add(jMenu2);
        setJMenuBar(jMenuBar);
        addWindowListener(new WindowAdapter() { // from class: org.apache.asn1.ber.TupleTreeAnalyzer.6
            public void windowClosing(WindowEvent windowEvent) {
                TupleTreeAnalyzer.this.exitForm(windowEvent);
            }
        });
        this.jLabel3.setText("Type Class:");
        this.jPanel5.setLayout(new FlowLayout(0));
        this.jPanel5.add(this.jLabel3);
        this.jPanel5.add(this.jTextField3);
        this.jTextField3.setText("");
        this.jTextField3.setMinimumSize(new Dimension(184, 25));
        this.jTextField3.setPreferredSize(new Dimension(184, 25));
        this.jSplitPane1.setLastDividerLocation(50);
        this.jSplitPane1.setDividerLocation(180);
        this.jSplitPane1.add(this.jScrollPane1, TtmlNode.LEFT);
        this.jSplitPane1.add(this.jPanel1, TtmlNode.RIGHT);
        addWindowListener(new WindowAdapter() { // from class: org.apache.asn1.ber.TupleTreeAnalyzer.7
            public void windowClosing(WindowEvent windowEvent) {
                TupleTreeAnalyzer.this.exitForm(windowEvent);
            }
        });
        getContentPane().add(this.jSplitPane1, "Center");
        this.jScrollPane1.getViewport().add(this.jTree1);
        this.jTree1.setBounds(new Rectangle(95, 95, 85, 84));
        this.jTree1.setShowsRootHandles(true);
        this.jPanel1.setLayout(new GridBagLayout());
        this.jPanel1.add(this.jPanel2, new GridBagConstraints(0, 0, 1, 1, 1.0d, 1.0d, 17, 2, new Insets(0, 9, 0, 9), 0, 0));
        this.jPanel1.add(this.jPanel3, new GridBagConstraints(0, 1, 1, 1, 1.0d, 1.0d, 17, 2, new Insets(0, 9, 0, 9), 0, 0));
        this.jPanel1.add(this.jPanel4, new GridBagConstraints(0, 3, 1, 35, 1.0d, 1.0d, 10, 1, new Insets(9, 12, 9, 12), 0, 0));
        this.jPanel1.add(this.jPanel5, new GridBagConstraints(0, 2, 1, 1, 1.0d, 1.0d, 17, 2, new Insets(0, 9, 0, 9), 0, 0));
        this.jLabel1.setText("Tag Id:");
        this.jPanel2.setLayout(new FlowLayout(0));
        this.jPanel2.add(this.jLabel1);
        this.jPanel2.add(this.jTextField1);
        this.jLabel2.setText("Length:");
        this.jPanel3.setLayout(new FlowLayout(0));
        this.jPanel3.add(this.jLabel2);
        this.jPanel3.add(this.jTextField2);
        this.jPanel4.setLayout(new BorderLayout());
        this.jPanel4.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(153, 153, 153), 1), "Value", 4, 2, new Font("Comic Sans MS", 0, 14), new Color(60, 60, 60)));
        this.jPanel4.add(this.jScrollPane2, "Center");
        this.jTextArea1.setText("");
        this.jScrollPane2.getViewport().add(this.jTextArea1);
        this.jTextField1.setText("");
        this.jTextField1.setMinimumSize(new Dimension(164, 25));
        this.jTextField1.setPreferredSize(new Dimension(164, 25));
        this.jTextField1.setEditable(true);
        this.jTextField2.setText("");
        this.jTextField2.setPreferredSize(new Dimension(164, 25));
        this.jTextField2.setMinimumSize(new Dimension(164, 25));
        this.jTextField2.setEditable(true);
        this.jScrollPane2.setVerticalScrollBarPolicy(22);
        this.jScrollPane2.setHorizontalScrollBarPolicy(32);
        this.jScrollPane2.setBorder((Border) null);
        this.jTree1.setModel(new DefaultTreeModel(new TupleTreeNodeAdapter(this.root)));
        this.jTree1.getSelectionModel().addTreeSelectionListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitForm(WindowEvent windowEvent) {
        System.out.println(new StringBuffer("Closed window: ").append(windowEvent.getWindow().getName()).toString());
        if (this.doVmExit) {
            System.exit(0);
        }
    }

    public void startup() {
        setSize(800, 640);
        Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
        Dimension size = getSize();
        size.height = size.height > screenSize.height ? screenSize.height : size.height;
        size.width = size.width > screenSize.width ? screenSize.width : size.width;
        setLocation((screenSize.width - size.width) / 2, (screenSize.height - size.height) / 2);
        setVisible(true);
    }

    public void valueChanged(TreeSelectionEvent treeSelectionEvent) {
        Tuple tuple = ((TupleTreeNodeAdapter) treeSelectionEvent.getPath().getLastPathComponent()).getTupleNode().getTuple();
        TypeClass typeClass = TypeClass.getTypeClass(tuple.getRawTag() >> 24);
        this.jTextField3.setText(typeClass.getName());
        if (tuple.getLength() == -2) {
            this.jTextField2.setText("INDEFINITE");
        } else {
            this.jTextField2.setText(Integer.toString(tuple.getLength()));
        }
        if (typeClass.equals(TypeClass.UNIVERSAL)) {
            this.jTextField1.setText(UniversalTag.getUniversalTag(tuple.getRawTag()).getName());
        } else {
            this.jTextField1.setText(Integer.toString(tuple.getId()));
        }
        if (tuple.isPrimitive()) {
            ByteBuffer byteBuffer = (ByteBuffer) tuple.getLastValueChunk().rewind();
            int remaining = byteBuffer.remaining();
            byte[] bArr = new byte[remaining];
            byteBuffer.get(bArr);
            this.jTextArea1.setText(new String(Hex.encodeHex(bArr)));
            if (typeClass != TypeClass.UNIVERSAL) {
                if (remaining > 4) {
                    this.jTextArea1.setToolTipText("String: ".concat(new String(bArr)));
                    return;
                }
                int decodeInt = PrimitiveUtils.decodeInt(bArr, 0, remaining);
                boolean berDecodeBoolean = PrimitiveUtils.berDecodeBoolean(bArr[0]);
                this.jTextArea1.setToolTipText(new StringBuffer().append(new StringBuffer().append(new StringBuffer("Numeric: ").append(Integer.toString(decodeInt)).append("\n").toString()).append("Boolean: ").append(Boolean.toString(berDecodeBoolean)).append("\n").toString()).append("String: ").append(new String(bArr)).toString());
                return;
            }
            UniversalTag universalTag = UniversalTag.getUniversalTag(tuple.getRawTag());
            if (universalTag == UniversalTag.ENUMERATED || universalTag == UniversalTag.INTEGER) {
                this.jTextArea1.setToolTipText(new StringBuffer("Numeric: ").append(Integer.toString(PrimitiveUtils.decodeInt(bArr, 0, remaining))).toString());
                return;
            } else if (universalTag == UniversalTag.BOOLEAN) {
                this.jTextArea1.setToolTipText(new StringBuffer("Boolean: ").append(Boolean.toString(PrimitiveUtils.berDecodeBoolean(bArr[0]))).toString());
                return;
            } else {
                this.jTextArea1.setToolTipText("String: ".concat(new String(bArr)));
                return;
            }
        }
        this.jTextArea1.setText("N/A");
        this.jTextArea1.setToolTipText((String) null);
    }

    public static String getHexDump(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.duplicate().get(bArr);
        return new String(Hex.encodeHex(bArr));
    }

    public static void analyze(byte[] bArr) throws DecoderException {
        new TupleTreeAnalyzer(bArr).startup();
    }

    public static void analyze(ByteBuffer byteBuffer) throws DecoderException {
        new TupleTreeAnalyzer(byteBuffer).startup();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class TupleTreeNodeAdapter implements TreeNode {
        DefaultMutableTupleNode node;

        TupleTreeNodeAdapter(DefaultMutableTupleNode defaultMutableTupleNode) {
            this.node = defaultMutableTupleNode;
        }

        public int getChildCount() {
            return this.node.getChildCount();
        }

        public boolean getAllowsChildren() {
            return !this.node.getTuple().isPrimitive();
        }

        public boolean isLeaf() {
            return this.node.getChildCount() == 0;
        }

        public Enumeration children() {
            return IteratorUtils.asEnumeration(this.node.getChildren());
        }

        public TreeNode getParent() {
            return new TupleTreeNodeAdapter((DefaultMutableTupleNode) this.node.getParentTupleNode());
        }

        public TreeNode getChildAt(int i) {
            return new TupleTreeNodeAdapter((DefaultMutableTupleNode) this.node.getChildTupleNodeAt(i));
        }

        public int getIndex(TreeNode treeNode) {
            return this.node.getIndex(((TupleTreeNodeAdapter) treeNode).getTupleNode());
        }

        DefaultMutableTupleNode getTupleNode() {
            return this.node;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer("[");
            Tuple tuple = this.node.getTuple();
            TypeClass typeClass = TypeClass.getTypeClass(this.node.getTuple().getRawTag() >> 24);
            stringBuffer.append(typeClass.getName()).append("][").append(Tag.getTagId(tuple.getRawTag())).append("][").append(tuple.getLength()).append("]");
            return stringBuffer.toString();
        }
    }

    public static void main(String[] strArr) {
        JFileChooser jFileChooser = new JFileChooser(".");
        jFileChooser.setFileFilter(new FileFilter() { // from class: org.apache.asn1.ber.TupleTreeAnalyzer.8
            public boolean accept(File file) {
                return file.isDirectory() || file.getName().endsWith(".ber");
            }

            public String getDescription() {
                return "BER encoded data files";
            }
        });
        FileInputStream fileInputStream = null;
        jFileChooser.showOpenDialog((Component) null);
        File selectedFile = jFileChooser.getSelectedFile();
        if (selectedFile == null) {
            System.exit(0);
        }
        try {
            fileInputStream = new FileInputStream(selectedFile);
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
            System.exit(-1);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int read = fileInputStream.read();
                if (read != -1) {
                    byteArrayOutputStream.write(read);
                }
            } catch (IOException e3) {
                e3.printStackTrace();
                System.exit(-1);
            }
            try {
                new TupleTreeAnalyzer(byteArrayOutputStream.toByteArray()).startup();
                return;
            } catch (DecoderException e4) {
                e4.printStackTrace();
                System.exit(-1);
                return;
            }
        }
    }
}
