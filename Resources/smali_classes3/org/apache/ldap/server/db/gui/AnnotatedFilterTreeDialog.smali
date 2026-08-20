.class public Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;
.super Ljavax/swing/JDialog;
.source "AnnotatedFilterTreeDialog.java"


# static fields
.field private static final serialVersionUID:J = 0x3337353430313332L


# instance fields
.field private jButton1:Ljavax/swing/JButton;

.field private jPanel1:Ljavax/swing/JPanel;

.field private jPanel2:Ljavax/swing/JPanel;

.field private jPanel3:Ljavax/swing/JPanel;

.field private jScrollPane1:Ljavax/swing/JScrollPane;

.field private jTextArea1:Ljavax/swing/JTextArea;

.field private jTree1:Ljavax/swing/JTree;


# direct methods
.method public constructor <init>(Ljava/awt/Frame;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Z)V

    .line 38
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel1:Ljavax/swing/JPanel;

    .line 39
    new-instance p1, Ljavax/swing/JTree;

    invoke-direct {p1}, Ljavax/swing/JTree;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jTree1:Ljavax/swing/JTree;

    .line 40
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel2:Ljavax/swing/JPanel;

    .line 41
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel3:Ljavax/swing/JPanel;

    .line 42
    new-instance p1, Ljavax/swing/JTextArea;

    invoke-direct {p1}, Ljavax/swing/JTextArea;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jTextArea1:Ljavax/swing/JTextArea;

    .line 43
    new-instance p1, Ljavax/swing/JScrollPane;

    invoke-direct {p1}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jScrollPane1:Ljavax/swing/JScrollPane;

    .line 44
    new-instance p1, Ljavax/swing/JButton;

    invoke-direct {p1}, Ljavax/swing/JButton;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jButton1:Ljavax/swing/JButton;

    .line 49
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->initGUI()V

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->closeDialog(Ljava/awt/event/WindowEvent;)V

    return-void
.end method

.method private closeDialog(Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 107
    invoke-virtual {p1}, Ljava/awt/event/WindowEvent;->getWindow()Ljava/awt/Window;

    const/4 p1, 0x0

    .line 108
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->setVisible(Z)V

    .line 109
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->dispose()V

    return-void
.end method

.method private initGUI()V
    .locals 23

    move-object/from16 v0, p0

    .line 55
    new-instance v1, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog$1;

    invoke-direct {v1, v0}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog$1;-><init>(Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;)V

    .line 54
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->pack()V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    new-instance v2, Ljava/awt/GridBagLayout;

    invoke-direct {v2}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel1:Ljavax/swing/JPanel;

    .line 63
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 64
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

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    .line 63
    invoke-direct/range {v3 .. v16}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v3, v20

    .line 62
    invoke-virtual {v1, v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel2:Ljavax/swing/JPanel;

    .line 66
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 67
    new-instance v14, Ljava/awt/Insets;

    const/4 v3, 0x5

    invoke-direct {v14, v3, v3, v3, v3}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v16, 0x0

    const/4 v5, 0x1

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const/16 v12, 0xa

    const/4 v13, 0x1

    move-object v3, v15

    move-object/from16 v21, v15

    move/from16 v15, v16

    move/from16 v16, v17

    .line 66
    invoke-direct/range {v3 .. v16}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v3, v21

    .line 65
    invoke-virtual {v1, v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel3:Ljavax/swing/JPanel;

    .line 69
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 70
    new-instance v14, Ljava/awt/Insets;

    const/4 v13, 0x0

    invoke-direct {v14, v13, v13, v13, v13}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v16, 0x0

    const/4 v5, 0x2

    const-wide v10, 0x3fb999999999999aL    # 0.1

    const/16 v12, 0xf

    const/16 v18, 0x2

    move-object v3, v15

    move/from16 v13, v18

    move-object/from16 v22, v15

    move/from16 v15, v16

    move/from16 v16, v17

    .line 69
    invoke-direct/range {v3 .. v16}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v3, v22

    .line 68
    invoke-virtual {v1, v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 71
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel1:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/BorderLayout;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v3}, Ljava/awt/BorderLayout;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 72
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel1:Ljavax/swing/JPanel;

    .line 73
    new-instance v2, Ljava/awt/Color;

    const/16 v3, 0x99

    invoke-direct {v2, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    const/4 v4, 0x1

    .line 72
    invoke-static {v2, v4}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v5

    .line 74
    new-instance v9, Ljava/awt/Font;

    const-string v2, "SansSerif"

    const/16 v11, 0xe

    const/4 v12, 0x0

    invoke-direct {v9, v2, v12, v11}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    new-instance v10, Ljava/awt/Color;

    const/16 v13, 0x3c

    invoke-direct {v10, v13, v13, v13}, Ljava/awt/Color;-><init>(III)V

    .line 72
    const-string v6, "Search Filter"

    const/4 v7, 0x4

    const/4 v8, 0x2

    invoke-static/range {v5 .. v10}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 75
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel1:Ljavax/swing/JPanel;

    iget-object v5, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jTextArea1:Ljavax/swing/JTextArea;

    const-string v6, "Center"

    invoke-virtual {v1, v5, v6}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 76
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jScrollPane1:Ljavax/swing/JScrollPane;

    invoke-virtual {v1}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v1

    iget-object v5, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jTree1:Ljavax/swing/JTree;

    invoke-virtual {v1, v5}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 77
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jTree1:Ljavax/swing/JTree;

    new-instance v5, Ljava/awt/Rectangle;

    const/16 v7, 0x52

    const/16 v8, 0x50

    const/16 v9, 0xee

    const/16 v10, 0x8e

    invoke-direct {v5, v9, v10, v7, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v1, v5}, Ljavax/swing/JTree;->setBounds(Ljava/awt/Rectangle;)V

    .line 78
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jTextArea1:Ljavax/swing/JTextArea;

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 79
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jTextArea1:Ljavax/swing/JTextArea;

    invoke-virtual {v1, v12}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 80
    new-instance v1, Ljava/awt/Rectangle;

    const/16 v7, 0x1e5

    const/16 v8, 0x19e

    invoke-direct {v1, v12, v12, v7, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->setBounds(Ljava/awt/Rectangle;)V

    .line 81
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel2:Ljavax/swing/JPanel;

    new-instance v7, Ljava/awt/BorderLayout;

    invoke-direct {v7}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v1, v7}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 82
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel2:Ljavax/swing/JPanel;

    .line 83
    new-instance v7, Ljava/awt/Color;

    invoke-direct {v7, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    .line 82
    invoke-static {v7, v4}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v14

    .line 85
    new-instance v3, Ljava/awt/Font;

    invoke-direct {v3, v2, v12, v11}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    new-instance v2, Ljava/awt/Color;

    invoke-direct {v2, v13, v13, v13}, Ljava/awt/Color;-><init>(III)V

    .line 82
    const-string v15, "Filter Expression Tree"

    const/16 v16, 0x4

    const/16 v17, 0x2

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    invoke-static/range {v14 .. v19}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 86
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel2:Ljavax/swing/JPanel;

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jScrollPane1:Ljavax/swing/JScrollPane;

    invoke-virtual {v1, v2, v6}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 87
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jButton1:Ljavax/swing/JButton;

    const-string v2, "Done"

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 88
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jButton1:Ljavax/swing/JButton;

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    .line 89
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jButton1:Ljavax/swing/JButton;

    new-instance v2, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog$2;

    invoke-direct {v2, v0}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog$2;-><init>(Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 95
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jButton1:Ljavax/swing/JButton;

    invoke-virtual {v1, v12}, Ljavax/swing/JButton;->setHorizontalAlignment(I)V

    .line 96
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jButton1:Ljavax/swing/JButton;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setAlignmentX(F)V

    .line 97
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jButton1:Ljavax/swing/JButton;

    invoke-virtual {v1, v12}, Ljavax/swing/JButton;->setHorizontalTextPosition(I)V

    .line 98
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel3:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/Dimension;

    const/16 v3, 0x4f

    const/16 v4, 0x29

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 99
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel3:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/Dimension;

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 100
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel3:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/Dimension;

    const/16 v3, 0x1d7

    const/16 v4, 0x23

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setSize(Ljava/awt/Dimension;)V

    .line 101
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel3:Ljavax/swing/JPanel;

    invoke-virtual {v1, v5}, Ljavax/swing/JPanel;->setToolTipText(Ljava/lang/String;)V

    .line 102
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jPanel3:Ljavax/swing/JPanel;

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jButton1:Ljavax/swing/JButton;

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    return-void
.end method


# virtual methods
.method public setFilter(Ljava/lang/String;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jTextArea1:Ljavax/swing/JTextArea;

    invoke-virtual {v0, p1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setModel(Ljavax/swing/tree/TreeModel;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->jTree1:Ljavax/swing/JTree;

    invoke-virtual {v0, p1}, Ljavax/swing/JTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    return-void
.end method
