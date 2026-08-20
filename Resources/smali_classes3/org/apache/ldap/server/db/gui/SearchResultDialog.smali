.class public Lorg/apache/ldap/server/db/gui/SearchResultDialog;
.super Ljavax/swing/JDialog;
.source "SearchResultDialog.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# static fields
.field private static final serialVersionUID:J = 0x2d33303636343034L


# instance fields
.field private jButton1:Ljavax/swing/JButton;

.field private jPanel1:Ljavax/swing/JPanel;

.field private jPanel2:Ljavax/swing/JPanel;

.field private jPanel3:Ljavax/swing/JPanel;

.field private jPanel4:Ljavax/swing/JPanel;

.field private jScrollPane1:Ljavax/swing/JScrollPane;

.field private jScrollPane2:Ljavax/swing/JScrollPane;

.field private jTextArea1:Ljavax/swing/JTextArea;

.field private jTree1:Ljavax/swing/JTree;

.field private m_resultsTbl:Ljavax/swing/JTable;


# direct methods
.method public constructor <init>(Ljava/awt/Frame;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Z)V

    .line 42
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel1:Ljavax/swing/JPanel;

    .line 43
    new-instance p1, Ljavax/swing/JTree;

    invoke-direct {p1}, Ljavax/swing/JTree;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jTree1:Ljavax/swing/JTree;

    .line 44
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel2:Ljavax/swing/JPanel;

    .line 45
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel3:Ljavax/swing/JPanel;

    .line 46
    new-instance p1, Ljavax/swing/JTextArea;

    invoke-direct {p1}, Ljavax/swing/JTextArea;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jTextArea1:Ljavax/swing/JTextArea;

    .line 47
    new-instance p1, Ljavax/swing/JScrollPane;

    invoke-direct {p1}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jScrollPane1:Ljavax/swing/JScrollPane;

    .line 48
    new-instance p1, Ljavax/swing/JButton;

    invoke-direct {p1}, Ljavax/swing/JButton;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jButton1:Ljavax/swing/JButton;

    .line 49
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel4:Ljavax/swing/JPanel;

    .line 50
    new-instance p1, Ljavax/swing/JScrollPane;

    invoke-direct {p1}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jScrollPane2:Ljavax/swing/JScrollPane;

    .line 51
    new-instance p1, Ljavax/swing/JTable;

    invoke-direct {p1}, Ljavax/swing/JTable;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->m_resultsTbl:Ljavax/swing/JTable;

    .line 56
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->initGUI()V

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/db/gui/SearchResultDialog;Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->closeDialog(Ljava/awt/event/WindowEvent;)V

    return-void
.end method

.method private closeDialog(Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 145
    invoke-virtual {p1}, Ljava/awt/event/WindowEvent;->getWindow()Ljava/awt/Window;

    const/4 p1, 0x0

    .line 146
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->setVisible(Z)V

    .line 147
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->dispose()V

    return-void
.end method

.method private initGUI()V
    .locals 25

    move-object/from16 v0, p0

    .line 64
    new-instance v1, Lorg/apache/ldap/server/db/gui/SearchResultDialog$1;

    invoke-direct {v1, v0}, Lorg/apache/ldap/server/db/gui/SearchResultDialog$1;-><init>(Lorg/apache/ldap/server/db/gui/SearchResultDialog;)V

    .line 63
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->pack()V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    new-instance v2, Ljava/awt/GridBagLayout;

    invoke-direct {v2}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel1:Ljavax/swing/JPanel;

    .line 72
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 73
    new-instance v14, Ljava/awt/Insets;

    const/16 v13, 0xa

    const/4 v12, 0x5

    invoke-direct {v14, v13, v12, v12, v12}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fb999999999999aL    # 0.1

    const/16 v18, 0xb

    const/16 v19, 0x1

    move-object v3, v15

    move/from16 v12, v18

    move/from16 v13, v19

    move-object/from16 v21, v15

    move/from16 v15, v16

    move/from16 v16, v17

    .line 72
    invoke-direct/range {v3 .. v16}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v3, v21

    .line 71
    invoke-virtual {v1, v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel2:Ljavax/swing/JPanel;

    .line 75
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 76
    new-instance v14, Ljava/awt/Insets;

    const/4 v13, 0x5

    invoke-direct {v14, v13, v13, v13, v13}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v16, 0x0

    const/4 v5, 0x1

    const-wide v10, 0x3fd999999999999aL    # 0.4

    const/16 v12, 0xa

    const/16 v18, 0x1

    move-object v3, v15

    move/from16 v13, v18

    move-object/from16 v22, v15

    move/from16 v15, v16

    move/from16 v16, v17

    .line 75
    invoke-direct/range {v3 .. v16}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v3, v22

    .line 74
    invoke-virtual {v1, v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel3:Ljavax/swing/JPanel;

    .line 78
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 79
    new-instance v14, Ljava/awt/Insets;

    const/4 v13, 0x0

    invoke-direct {v14, v13, v13, v13, v13}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v16, 0x0

    const/4 v5, 0x3

    const-wide v10, 0x3fb999999999999aL    # 0.1

    const/16 v12, 0xf

    move-object v3, v15

    move/from16 v13, v18

    move-object/from16 v23, v15

    move/from16 v15, v16

    move/from16 v16, v17

    .line 78
    invoke-direct/range {v3 .. v16}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v3, v23

    .line 77
    invoke-virtual {v1, v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel4:Ljavax/swing/JPanel;

    .line 81
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 82
    new-instance v14, Ljava/awt/Insets;

    const/4 v3, 0x5

    invoke-direct {v14, v3, v3, v3, v3}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v16, 0x0

    const/4 v5, 0x2

    const-wide v10, 0x3fd999999999999aL    # 0.4

    const/16 v12, 0xa

    const/4 v13, 0x1

    move-object v3, v15

    move-object/from16 v24, v15

    move/from16 v15, v16

    move/from16 v16, v17

    .line 81
    invoke-direct/range {v3 .. v16}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v3, v24

    .line 80
    invoke-virtual {v1, v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 83
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel1:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/BorderLayout;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v3}, Ljava/awt/BorderLayout;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 84
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel1:Ljavax/swing/JPanel;

    .line 85
    new-instance v2, Ljava/awt/Color;

    const/16 v4, 0x99

    invoke-direct {v2, v4, v4, v4}, Ljava/awt/Color;-><init>(III)V

    const/4 v5, 0x1

    .line 84
    invoke-static {v2, v5}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v6

    .line 86
    new-instance v10, Ljava/awt/Font;

    const-string v2, "SansSerif"

    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-direct {v10, v2, v13, v12}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    new-instance v11, Ljava/awt/Color;

    const/16 v14, 0x3c

    invoke-direct {v11, v14, v14, v14}, Ljava/awt/Color;-><init>(III)V

    .line 84
    const-string v7, "Specifications"

    const/4 v8, 0x4

    const/4 v9, 0x2

    invoke-static/range {v6 .. v11}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 87
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel1:Ljavax/swing/JPanel;

    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jTextArea1:Ljavax/swing/JTextArea;

    const-string v7, "Center"

    invoke-virtual {v1, v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 88
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jScrollPane1:Ljavax/swing/JScrollPane;

    invoke-virtual {v1}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v1

    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jTree1:Ljavax/swing/JTree;

    invoke-virtual {v1, v6}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 89
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jTree1:Ljavax/swing/JTree;

    new-instance v6, Ljava/awt/Rectangle;

    const/16 v8, 0x52

    const/16 v9, 0x50

    const/16 v10, 0xee

    const/16 v11, 0x8e

    invoke-direct {v6, v10, v11, v8, v9}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v1, v6}, Ljavax/swing/JTree;->setBounds(Ljava/awt/Rectangle;)V

    .line 90
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jTextArea1:Ljavax/swing/JTextArea;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 91
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jTextArea1:Ljavax/swing/JTextArea;

    invoke-virtual {v1, v13}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 92
    new-instance v1, Ljava/awt/Rectangle;

    const/16 v8, 0x1e5

    const/16 v9, 0x1b2

    invoke-direct {v1, v13, v13, v8, v9}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->setBounds(Ljava/awt/Rectangle;)V

    .line 93
    const-string v1, "Search Results"

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->setTitle(Ljava/lang/String;)V

    .line 94
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel2:Ljavax/swing/JPanel;

    new-instance v8, Ljava/awt/BorderLayout;

    invoke-direct {v8}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v1, v8}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 95
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel2:Ljavax/swing/JPanel;

    .line 96
    new-instance v8, Ljava/awt/Color;

    invoke-direct {v8, v4, v4, v4}, Ljava/awt/Color;-><init>(III)V

    .line 95
    invoke-static {v8, v5}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v15

    .line 98
    new-instance v8, Ljava/awt/Font;

    invoke-direct {v8, v2, v13, v12}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    new-instance v9, Ljava/awt/Color;

    invoke-direct {v9, v14, v14, v14}, Ljava/awt/Color;-><init>(III)V

    .line 95
    const-string v16, "Filter Expression Tree"

    const/16 v17, 0x4

    const/16 v18, 0x2

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    invoke-static/range {v15 .. v20}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 99
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel2:Ljavax/swing/JPanel;

    iget-object v8, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jScrollPane1:Ljavax/swing/JScrollPane;

    invoke-virtual {v1, v8, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 100
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jButton1:Ljavax/swing/JButton;

    const-string v8, "Done"

    invoke-virtual {v1, v8}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 101
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jButton1:Ljavax/swing/JButton;

    invoke-virtual {v1, v8}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    .line 102
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jButton1:Ljavax/swing/JButton;

    new-instance v8, Lorg/apache/ldap/server/db/gui/SearchResultDialog$2;

    invoke-direct {v8, v0}, Lorg/apache/ldap/server/db/gui/SearchResultDialog$2;-><init>(Lorg/apache/ldap/server/db/gui/SearchResultDialog;)V

    invoke-virtual {v1, v8}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 108
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jButton1:Ljavax/swing/JButton;

    invoke-virtual {v1, v13}, Ljavax/swing/JButton;->setHorizontalAlignment(I)V

    .line 109
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jButton1:Ljavax/swing/JButton;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v1, v8}, Ljavax/swing/JButton;->setAlignmentX(F)V

    .line 110
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jButton1:Ljavax/swing/JButton;

    invoke-virtual {v1, v13}, Ljavax/swing/JButton;->setHorizontalTextPosition(I)V

    .line 111
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel3:Ljavax/swing/JPanel;

    new-instance v8, Ljava/awt/Dimension;

    const/16 v9, 0x4f

    const/16 v10, 0x29

    invoke-direct {v8, v9, v10}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v8}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 112
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel3:Ljavax/swing/JPanel;

    new-instance v8, Ljava/awt/Dimension;

    invoke-direct {v8, v9, v10}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v8}, Ljavax/swing/JPanel;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 113
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel3:Ljavax/swing/JPanel;

    new-instance v8, Ljava/awt/Dimension;

    const/16 v9, 0x1d7

    const/16 v10, 0x23

    invoke-direct {v8, v9, v10}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v8}, Ljavax/swing/JPanel;->setSize(Ljava/awt/Dimension;)V

    .line 114
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel3:Ljavax/swing/JPanel;

    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setToolTipText(Ljava/lang/String;)V

    .line 115
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel3:Ljavax/swing/JPanel;

    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jButton1:Ljavax/swing/JButton;

    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 116
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel4:Ljavax/swing/JPanel;

    .line 117
    new-instance v6, Ljava/awt/Color;

    invoke-direct {v6, v4, v4, v4}, Ljava/awt/Color;-><init>(III)V

    .line 116
    invoke-static {v6, v5}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v15

    .line 118
    new-instance v4, Ljava/awt/Font;

    invoke-direct {v4, v2, v13, v12}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    new-instance v2, Ljava/awt/Color;

    invoke-direct {v2, v14, v14, v14}, Ljava/awt/Color;-><init>(III)V

    .line 116
    const-string v16, "Search Results"

    move-object/from16 v19, v4

    move-object/from16 v20, v2

    invoke-static/range {v15 .. v20}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 119
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel4:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/BorderLayout;

    invoke-direct {v2}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 120
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jPanel4:Ljavax/swing/JPanel;

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jScrollPane2:Ljavax/swing/JScrollPane;

    invoke-virtual {v1, v2, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 121
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jScrollPane2:Ljavax/swing/JScrollPane;

    invoke-virtual {v1}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->m_resultsTbl:Ljavax/swing/JTable;

    invoke-virtual {v1, v2}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 122
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->m_resultsTbl:Ljavax/swing/JTable;

    new-instance v2, Ljava/awt/Dimension;

    const/16 v4, 0x1c2

    invoke-direct {v2, v4, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JTable;->setSize(Ljava/awt/Dimension;)V

    .line 123
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->m_resultsTbl:Ljavax/swing/JTable;

    invoke-virtual {v1}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object v1

    invoke-interface {v1, v0}, Ljavax/swing/ListSelectionModel;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    return-void
.end method


# virtual methods
.method public setFilter(Ljava/lang/String;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jTextArea1:Ljavax/swing/JTextArea;

    invoke-virtual {v0, p1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setTableModel(Ljavax/swing/table/TableModel;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->m_resultsTbl:Ljavax/swing/JTable;

    invoke-virtual {v0, p1}, Ljavax/swing/JTable;->setModel(Ljavax/swing/table/TableModel;)V

    return-void
.end method

.method public setTreeModel(Ljavax/swing/tree/TreeModel;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->jTree1:Ljavax/swing/JTree;

    invoke-virtual {v0, p1}, Ljavax/swing/JTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    return-void
.end method

.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 5

    .line 129
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/ListSelectionModel;

    .line 130
    invoke-interface {v0}, Ljavax/swing/ListSelectionModel;->getMinSelectionIndex()I

    move-result v1

    .line 131
    invoke-interface {v0}, Ljavax/swing/ListSelectionModel;->getMaxSelectionIndex()I

    move-result v2

    :goto_0
    if-le v1, v2, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-interface {v0, v1}, Ljavax/swing/ListSelectionModel;->isSelectedIndex(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    iget-object v3, p0, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->m_resultsTbl:Ljavax/swing/JTable;

    invoke-virtual {v3}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Ljavax/swing/table/TableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object v3

    .line 135
    check-cast v3, Ljava/math/BigInteger;

    .line 137
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->getParent()Ljava/awt/Container;

    move-result-object v4

    check-cast v4, Lorg/apache/ldap/server/db/gui/MainFrame;

    invoke-virtual {v4, v3}, Lorg/apache/ldap/server/db/gui/MainFrame;->selectTreeNode(Ljava/math/BigInteger;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
