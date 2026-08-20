.class public Lorg/apache/ldap/server/db/gui/EntryDialog;
.super Ljavax/swing/JDialog;
.source "EntryDialog.java"


# static fields
.field private static final serialVersionUID:J = 0x3434303939313338L


# instance fields
.field private m_attrPnl:Ljavax/swing/JPanel;

.field private m_attrScrollPnl:Ljavax/swing/JScrollPane;

.field private m_attrTbl:Ljavax/swing/JTable;

.field private m_buttonPnl:Ljavax/swing/JPanel;

.field private m_cancelBut:Ljavax/swing/JButton;

.field private m_dn:Ljava/lang/String;

.field private m_dnPnl:Ljavax/swing/JPanel;

.field private m_dnText:Ljavax/swing/JTextField;

.field private m_doneBut:Ljavax/swing/JButton;

.field private m_entry:Ljavax/naming/directory/Attributes;

.field private m_namePnl:Ljavax/swing/JPanel;

.field private m_opMode:Ljava/lang/String;

.field private m_rdn:Ljava/lang/String;

.field private m_rdnChoice:Ljavax/swing/JComboBox;

.field private m_rdnLbl:Ljavax/swing/JLabel;

.field private m_rdnPnl:Ljavax/swing/JPanel;


# direct methods
.method public constructor <init>(Ljava/awt/Frame;Ljava/lang/String;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p3}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Z)V

    .line 37
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_namePnl:Ljavax/swing/JPanel;

    .line 38
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_attrPnl:Ljavax/swing/JPanel;

    .line 39
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    .line 40
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_rdnPnl:Ljavax/swing/JPanel;

    .line 41
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_dnPnl:Ljavax/swing/JPanel;

    .line 42
    new-instance p1, Ljavax/swing/JLabel;

    invoke-direct {p1}, Ljavax/swing/JLabel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_rdnLbl:Ljavax/swing/JLabel;

    .line 43
    new-instance p1, Ljavax/swing/JComboBox;

    invoke-direct {p1}, Ljavax/swing/JComboBox;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_rdnChoice:Ljavax/swing/JComboBox;

    .line 44
    new-instance p1, Ljavax/swing/JTextField;

    invoke-direct {p1}, Ljavax/swing/JTextField;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_dnText:Ljavax/swing/JTextField;

    .line 45
    new-instance p1, Ljavax/swing/JScrollPane;

    invoke-direct {p1}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_attrScrollPnl:Ljavax/swing/JScrollPane;

    .line 46
    new-instance p1, Ljavax/swing/JTable;

    invoke-direct {p1}, Ljavax/swing/JTable;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_attrTbl:Ljavax/swing/JTable;

    .line 47
    new-instance p1, Ljavax/swing/JButton;

    invoke-direct {p1}, Ljavax/swing/JButton;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_doneBut:Ljavax/swing/JButton;

    .line 48
    new-instance p1, Ljavax/swing/JButton;

    invoke-direct {p1}, Ljavax/swing/JButton;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_cancelBut:Ljavax/swing/JButton;

    .line 65
    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_opMode:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/EntryDialog;->initGUI()V

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/db/gui/EntryDialog;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/EntryDialog;->closeDialog()V

    return-void
.end method

.method private closeDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/gui/EntryDialog;->setVisible(Z)V

    .line 239
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/EntryDialog;->dispose()V

    return-void
.end method

.method private initGUI()V
    .locals 34

    move-object/from16 v0, p0

    .line 75
    new-instance v1, Lorg/apache/ldap/server/db/gui/EntryDialog$1;

    invoke-direct {v1, v0}, Lorg/apache/ldap/server/db/gui/EntryDialog$1;-><init>(Lorg/apache/ldap/server/db/gui/EntryDialog;)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/EntryDialog;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/EntryDialog;->pack()V

    .line 83
    new-instance v1, Ljava/awt/Rectangle;

    const/16 v2, 0x1bf

    const/16 v3, 0x16c

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/EntryDialog;->setBounds(Ljava/awt/Rectangle;)V

    .line 84
    const-string v1, "Entry Dialog"

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/EntryDialog;->setTitle(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/EntryDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    new-instance v2, Ljava/awt/GridBagLayout;

    invoke-direct {v2}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/EntryDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    .line 87
    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_namePnl:Ljavax/swing/JPanel;

    .line 88
    new-instance v3, Ljava/awt/GridBagConstraints;

    .line 97
    new-instance v15, Ljava/awt/Insets;

    const/4 v14, 0x5

    invoke-direct {v15, v14, v14, v14, v14}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v12, 0x0

    const/16 v16, 0xb

    const/16 v19, 0x2

    move-object v5, v3

    move v4, v14

    move/from16 v14, v16

    move-object/from16 v16, v15

    move/from16 v15, v19

    .line 88
    invoke-direct/range {v5 .. v18}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 86
    invoke-virtual {v1, v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/EntryDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    .line 101
    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_attrPnl:Ljavax/swing/JPanel;

    .line 102
    new-instance v3, Ljava/awt/GridBagConstraints;

    .line 111
    new-instance v15, Ljava/awt/Insets;

    invoke-direct {v15, v4, v4, v4, v4}, Ljava/awt/Insets;-><init>(IIII)V

    const/4 v7, 0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/16 v14, 0xa

    const/16 v16, 0x1

    move-object v5, v3

    move-object/from16 v19, v15

    move/from16 v15, v16

    move-object/from16 v16, v19

    .line 102
    invoke-direct/range {v5 .. v18}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 100
    invoke-virtual {v1, v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/EntryDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    .line 115
    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    .line 116
    new-instance v3, Ljava/awt/GridBagConstraints;

    .line 125
    new-instance v15, Ljava/awt/Insets;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-direct {v15, v6, v6, v6, v5}, Ljava/awt/Insets;-><init>(IIII)V

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-wide v12, 0x3fa999999999999aL    # 0.05

    const/16 v16, 0x2

    move-object v5, v3

    move-object/from16 v19, v15

    move/from16 v15, v16

    move-object/from16 v16, v19

    .line 116
    invoke-direct/range {v5 .. v18}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 114
    invoke-virtual {v1, v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 128
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_namePnl:Ljavax/swing/JPanel;

    .line 131
    new-instance v2, Ljava/awt/Color;

    const/16 v3, 0x99

    invoke-direct {v2, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    const/4 v5, 0x1

    .line 130
    invoke-static {v2, v5}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v6

    .line 136
    new-instance v10, Ljava/awt/Font;

    const-string v2, "SansSerif"

    const/16 v12, 0xe

    const/4 v7, 0x0

    invoke-direct {v10, v2, v7, v12}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 137
    new-instance v11, Ljava/awt/Color;

    const/16 v13, 0x3c

    invoke-direct {v11, v13, v13, v13}, Ljava/awt/Color;-><init>(III)V

    .line 129
    const-string v7, "Naming"

    const/4 v8, 0x4

    const/4 v9, 0x2

    invoke-static/range {v6 .. v11}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v6

    .line 128
    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 138
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_namePnl:Ljavax/swing/JPanel;

    .line 139
    new-instance v6, Ljavax/swing/BoxLayout;

    iget-object v7, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_namePnl:Ljavax/swing/JPanel;

    invoke-direct {v6, v7, v5}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    .line 138
    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 140
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_namePnl:Ljavax/swing/JPanel;

    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_rdnPnl:Ljavax/swing/JPanel;

    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 141
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_namePnl:Ljavax/swing/JPanel;

    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_dnPnl:Ljavax/swing/JPanel;

    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 142
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_rdnLbl:Ljavax/swing/JLabel;

    const-string v6, "Rdn:"

    invoke-virtual {v1, v6}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 143
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_rdnPnl:Ljavax/swing/JPanel;

    new-instance v6, Ljava/awt/GridBagLayout;

    invoke-direct {v6}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 144
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_rdnPnl:Ljavax/swing/JPanel;

    .line 145
    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_rdnChoice:Ljavax/swing/JComboBox;

    .line 146
    new-instance v7, Ljava/awt/GridBagConstraints;

    .line 155
    new-instance v8, Ljava/awt/Insets;

    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-direct {v8, v10, v9, v10, v10}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    const-wide/16 v27, 0x0

    const/16 v29, 0x11

    const/16 v30, 0x0

    move-object/from16 v20, v7

    move-object/from16 v31, v8

    .line 146
    invoke-direct/range {v20 .. v33}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 144
    invoke-virtual {v1, v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 158
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_rdnPnl:Ljavax/swing/JPanel;

    .line 159
    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_rdnLbl:Ljavax/swing/JLabel;

    .line 160
    new-instance v7, Ljava/awt/GridBagConstraints;

    .line 169
    new-instance v8, Ljava/awt/Insets;

    const/4 v10, 0x0

    invoke-direct {v8, v10, v9, v10, v10}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v21, 0x0

    const-wide/16 v25, 0x0

    move-object/from16 v20, v7

    move-object/from16 v31, v8

    .line 160
    invoke-direct/range {v20 .. v33}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 158
    invoke-virtual {v1, v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 172
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_dnPnl:Ljavax/swing/JPanel;

    new-instance v6, Ljava/awt/GridBagLayout;

    invoke-direct {v6}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 173
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_dnPnl:Ljavax/swing/JPanel;

    .line 174
    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_dnText:Ljavax/swing/JTextField;

    .line 175
    new-instance v7, Ljava/awt/GridBagConstraints;

    .line 184
    new-instance v8, Ljava/awt/Insets;

    const/4 v10, 0x0

    invoke-direct {v8, v10, v4, v10, v10}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v21, 0x1

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    const/16 v30, 0x2

    move-object/from16 v20, v7

    move-object/from16 v31, v8

    .line 175
    invoke-direct/range {v20 .. v33}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 173
    invoke-virtual {v1, v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 187
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_dnText:Ljavax/swing/JTextField;

    const-string v6, "unknown"

    invoke-virtual {v1, v6}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 188
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_dnText:Ljavax/swing/JTextField;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljavax/swing/JTextField;->setEditable(Z)V

    .line 189
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_dnText:Ljavax/swing/JTextField;

    .line 192
    new-instance v7, Ljava/awt/Color;

    invoke-direct {v7, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    .line 191
    invoke-static {v7, v5}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v14

    .line 197
    new-instance v7, Ljava/awt/Font;

    invoke-direct {v7, v2, v6, v12}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 198
    new-instance v6, Ljava/awt/Color;

    invoke-direct {v6, v13, v13, v13}, Ljava/awt/Color;-><init>(III)V

    .line 190
    const-string v15, "Dn"

    const/16 v16, 0x4

    const/16 v17, 0x2

    move-object/from16 v18, v7

    move-object/from16 v19, v6

    invoke-static/range {v14 .. v19}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v6

    .line 189
    invoke-virtual {v1, v6}, Ljavax/swing/JTextField;->setBorder(Ljavax/swing/border/Border;)V

    .line 199
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_rdnChoice:Ljavax/swing/JComboBox;

    invoke-virtual {v1, v5}, Ljavax/swing/JComboBox;->setEditable(Z)V

    .line 200
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_rdnChoice:Ljavax/swing/JComboBox;

    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Ljavax/swing/JComboBox;->setMaximumRowCount(I)V

    .line 202
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_rdnChoice:Ljavax/swing/JComboBox;

    new-instance v6, Ljava/awt/Dimension;

    const/16 v7, 0x82

    const/16 v8, 0x18

    invoke-direct {v6, v7, v8}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v6}, Ljavax/swing/JComboBox;->setSize(Ljava/awt/Dimension;)V

    .line 203
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_attrPnl:Ljavax/swing/JPanel;

    new-instance v6, Ljava/awt/BorderLayout;

    invoke-direct {v6}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 204
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_attrPnl:Ljavax/swing/JPanel;

    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_attrScrollPnl:Ljavax/swing/JScrollPane;

    const-string v7, "Center"

    invoke-virtual {v1, v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 205
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_attrScrollPnl:Ljavax/swing/JScrollPane;

    invoke-virtual {v1}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v1

    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_attrTbl:Ljavax/swing/JTable;

    invoke-virtual {v1, v6}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 206
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_attrTbl:Ljavax/swing/JTable;

    new-instance v6, Ljava/awt/Rectangle;

    const/16 v7, 0x4e

    const/16 v8, 0x20

    invoke-direct {v6, v7, v13, v8, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v1, v6}, Ljavax/swing/JTable;->setBounds(Ljava/awt/Rectangle;)V

    .line 207
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_attrTbl:Ljavax/swing/JTable;

    invoke-virtual {v1, v5}, Ljavax/swing/JTable;->setEditingColumn(I)V

    .line 208
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_attrTbl:Ljavax/swing/JTable;

    invoke-virtual {v1, v5}, Ljavax/swing/JTable;->setCellSelectionEnabled(Z)V

    .line 209
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_doneBut:Ljavax/swing/JButton;

    const-string v6, "Done"

    invoke-virtual {v1, v6}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 210
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    .line 211
    new-instance v6, Ljava/awt/FlowLayout;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v9, v4}, Ljava/awt/FlowLayout;-><init>(III)V

    .line 210
    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 212
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_doneBut:Ljavax/swing/JButton;

    invoke-virtual {v1, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 213
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_cancelBut:Ljavax/swing/JButton;

    invoke-virtual {v1, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 214
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_cancelBut:Ljavax/swing/JButton;

    const-string v4, "Cancel"

    invoke-virtual {v1, v4}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 215
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_cancelBut:Ljavax/swing/JButton;

    new-instance v4, Lorg/apache/ldap/server/db/gui/EntryDialog$2;

    invoke-direct {v4, v0}, Lorg/apache/ldap/server/db/gui/EntryDialog$2;-><init>(Lorg/apache/ldap/server/db/gui/EntryDialog;)V

    invoke-virtual {v1, v4}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 222
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_attrScrollPnl:Ljavax/swing/JScrollPane;

    .line 225
    new-instance v4, Ljava/awt/Color;

    invoke-direct {v4, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    .line 224
    invoke-static {v4, v5}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v6

    .line 230
    new-instance v10, Ljava/awt/Font;

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3, v12}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 231
    new-instance v11, Ljava/awt/Color;

    invoke-direct {v11, v13, v13, v13}, Ljava/awt/Color;-><init>(III)V

    .line 223
    const-string v7, "Attributes"

    const/4 v8, 0x4

    const/4 v9, 0x2

    invoke-static/range {v6 .. v11}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v2

    .line 222
    invoke-virtual {v1, v2}, Ljavax/swing/JScrollPane;->setBorder(Ljavax/swing/border/Border;)V

    return-void
.end method


# virtual methods
.method public setDn(Ljava/lang/String;)V
    .locals 1

    .line 245
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_dn:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_dnText:Ljavax/swing/JTextField;

    invoke-virtual {v0, p1}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setEntry(Ljavax/naming/directory/Attributes;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_entry:Ljavax/naming/directory/Attributes;

    return-void
.end method

.method public setRdn(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/EntryDialog;->m_rdn:Ljava/lang/String;

    return-void
.end method
