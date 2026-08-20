.class public Lorg/apache/ldap/server/db/gui/AboutDialog;
.super Ljavax/swing/JDialog;
.source "AboutDialog.java"


# static fields
.field private static final serialVersionUID:J = 0x2d36383837393634L


# instance fields
.field private btnPaneLayout:Ljava/awt/FlowLayout;

.field private btnPanel:Ljavax/swing/JPanel;

.field private commentField:Ljavax/swing/JTextArea;

.field private comments:Ljava/lang/String;

.field private contentPane:Ljavax/swing/JPanel;

.field private contentPaneLayout:Ljava/awt/GridBagLayout;

.field private copLabel:Ljavax/swing/JLabel;

.field private copyright:Ljava/lang/String;

.field private formLayout:Ljava/awt/BorderLayout;

.field private image:Ljavax/swing/JLabel;

.field private jPanel1:Ljavax/swing/JPanel;

.field private jPanel2:Ljavax/swing/JPanel;

.field private okButton:Ljavax/swing/JButton;

.field private prodLabel:Ljavax/swing/JLabel;

.field private product:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private verLabel:Ljavax/swing/JLabel;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljavax/swing/JDialog;-><init>()V

    .line 37
    const-string v0, "About"

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->title:Ljava/lang/String;

    .line 38
    const-string v0, "Eve jdbm partition inspector"

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->product:Ljava/lang/String;

    .line 39
    const-string v0, "0.1"

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->version:Ljava/lang/String;

    .line 40
    const-string v0, "Copyright (c) 2003"

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->copyright:Ljava/lang/String;

    .line 42
    const-string v0, "This is the jdbm partition viewer or introspector.\nIrregular behavior can be analyzed by using this tool to inspect\nthe state of system indices and entry attributes within the partition\'s database."

    .line 41
    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->comments:Ljava/lang/String;

    .line 45
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->contentPane:Ljavax/swing/JPanel;

    .line 46
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->prodLabel:Ljavax/swing/JLabel;

    .line 47
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->verLabel:Ljavax/swing/JLabel;

    .line 48
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->copLabel:Ljavax/swing/JLabel;

    .line 49
    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->commentField:Ljavax/swing/JTextArea;

    .line 50
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->btnPanel:Ljavax/swing/JPanel;

    .line 51
    new-instance v0, Ljavax/swing/JButton;

    invoke-direct {v0}, Ljavax/swing/JButton;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->okButton:Ljavax/swing/JButton;

    .line 52
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->image:Ljavax/swing/JLabel;

    .line 53
    new-instance v0, Ljava/awt/BorderLayout;

    invoke-direct {v0}, Ljava/awt/BorderLayout;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->formLayout:Ljava/awt/BorderLayout;

    .line 54
    new-instance v0, Ljava/awt/GridBagLayout;

    invoke-direct {v0}, Ljava/awt/GridBagLayout;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->contentPaneLayout:Ljava/awt/GridBagLayout;

    .line 55
    new-instance v0, Ljava/awt/FlowLayout;

    invoke-direct {v0}, Ljava/awt/FlowLayout;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->btnPaneLayout:Ljava/awt/FlowLayout;

    .line 56
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->jPanel1:Ljavax/swing/JPanel;

    .line 57
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->jPanel2:Ljavax/swing/JPanel;

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/gui/AboutDialog;->setModal(Z)V

    .line 73
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/AboutDialog;->initGUI()V

    .line 74
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/AboutDialog;->pack()V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Frame;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Z)V

    .line 37
    const-string p1, "About"

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->title:Ljava/lang/String;

    .line 38
    const-string p1, "Eve jdbm partition inspector"

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->product:Ljava/lang/String;

    .line 39
    const-string p1, "0.1"

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->version:Ljava/lang/String;

    .line 40
    const-string p1, "Copyright (c) 2003"

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->copyright:Ljava/lang/String;

    .line 42
    const-string p1, "This is the jdbm partition viewer or introspector.\nIrregular behavior can be analyzed by using this tool to inspect\nthe state of system indices and entry attributes within the partition\'s database."

    .line 41
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->comments:Ljava/lang/String;

    .line 45
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->contentPane:Ljavax/swing/JPanel;

    .line 46
    new-instance p1, Ljavax/swing/JLabel;

    invoke-direct {p1}, Ljavax/swing/JLabel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->prodLabel:Ljavax/swing/JLabel;

    .line 47
    new-instance p1, Ljavax/swing/JLabel;

    invoke-direct {p1}, Ljavax/swing/JLabel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->verLabel:Ljavax/swing/JLabel;

    .line 48
    new-instance p1, Ljavax/swing/JLabel;

    invoke-direct {p1}, Ljavax/swing/JLabel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->copLabel:Ljavax/swing/JLabel;

    .line 49
    new-instance p1, Ljavax/swing/JTextArea;

    invoke-direct {p1}, Ljavax/swing/JTextArea;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->commentField:Ljavax/swing/JTextArea;

    .line 50
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->btnPanel:Ljavax/swing/JPanel;

    .line 51
    new-instance p1, Ljavax/swing/JButton;

    invoke-direct {p1}, Ljavax/swing/JButton;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->okButton:Ljavax/swing/JButton;

    .line 52
    new-instance p1, Ljavax/swing/JLabel;

    invoke-direct {p1}, Ljavax/swing/JLabel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->image:Ljavax/swing/JLabel;

    .line 53
    new-instance p1, Ljava/awt/BorderLayout;

    invoke-direct {p1}, Ljava/awt/BorderLayout;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->formLayout:Ljava/awt/BorderLayout;

    .line 54
    new-instance p1, Ljava/awt/GridBagLayout;

    invoke-direct {p1}, Ljava/awt/GridBagLayout;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->contentPaneLayout:Ljava/awt/GridBagLayout;

    .line 55
    new-instance p1, Ljava/awt/FlowLayout;

    invoke-direct {p1}, Ljava/awt/FlowLayout;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->btnPaneLayout:Ljava/awt/FlowLayout;

    .line 56
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->jPanel1:Ljavax/swing/JPanel;

    .line 57
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AboutDialog;->jPanel2:Ljavax/swing/JPanel;

    .line 64
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/AboutDialog;->initGUI()V

    .line 65
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/AboutDialog;->pack()V

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/db/gui/AboutDialog;Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/gui/AboutDialog;->closeDialog(Ljava/awt/event/WindowEvent;)V

    return-void
.end method

.method private closeDialog(Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 161
    invoke-virtual {p1}, Ljava/awt/event/WindowEvent;->getWindow()Ljava/awt/Window;

    const/4 p1, 0x0

    .line 162
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/gui/AboutDialog;->setVisible(Z)V

    .line 163
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/AboutDialog;->dispose()V

    return-void
.end method

.method private initGUI()V
    .locals 25

    move-object/from16 v0, p0

    .line 82
    new-instance v1, Lorg/apache/ldap/server/db/gui/AboutDialog$1;

    invoke-direct {v1, v0}, Lorg/apache/ldap/server/db/gui/AboutDialog$1;-><init>(Lorg/apache/ldap/server/db/gui/AboutDialog;)V

    .line 81
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/AboutDialog;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AboutDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->formLayout:Ljava/awt/BorderLayout;

    invoke-virtual {v1, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 88
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->contentPane:Ljavax/swing/JPanel;

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->contentPaneLayout:Ljava/awt/GridBagLayout;

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 89
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->contentPane:Ljavax/swing/JPanel;

    .line 90
    new-instance v2, Ljava/awt/Color;

    const/16 v3, 0x99

    invoke-direct {v2, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    const/4 v3, 0x1

    .line 89
    invoke-static {v2, v3}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v4

    .line 91
    new-instance v8, Ljava/awt/Font;

    const/16 v2, 0xe

    const-string v5, "SansSerif"

    const/4 v10, 0x0

    invoke-direct {v8, v5, v10, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    new-instance v9, Ljava/awt/Color;

    const/16 v2, 0x3c

    invoke-direct {v9, v2, v2, v2}, Ljava/awt/Color;-><init>(III)V

    .line 89
    const-string v5, "Directory Project: Eve"

    const/4 v6, 0x4

    const/4 v7, 0x2

    invoke-static/range {v4 .. v9}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 92
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->prodLabel:Ljavax/swing/JLabel;

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->product:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 93
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->prodLabel:Ljavax/swing/JLabel;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setAlignmentX(F)V

    .line 94
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->contentPane:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->prodLabel:Ljavax/swing/JLabel;

    .line 95
    new-instance v5, Ljava/awt/GridBagConstraints;

    .line 97
    new-instance v6, Ljava/awt/Insets;

    const/4 v7, 0x5

    invoke-direct {v6, v7, v7, v10, v10}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v23, 0x5

    const/16 v24, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x12

    const/16 v21, 0x0

    move-object v11, v5

    move-object/from16 v22, v6

    .line 95
    invoke-direct/range {v11 .. v24}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 94
    invoke-virtual {v1, v4, v5}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 98
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->verLabel:Ljavax/swing/JLabel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->version:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 99
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->contentPane:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->verLabel:Ljavax/swing/JLabel;

    .line 100
    new-instance v5, Ljava/awt/GridBagConstraints;

    .line 102
    new-instance v6, Ljava/awt/Insets;

    invoke-direct {v6, v7, v7, v10, v10}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v23, 0x0

    move-object v11, v5

    move-object/from16 v22, v6

    .line 100
    invoke-direct/range {v11 .. v24}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 99
    invoke-virtual {v1, v4, v5}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 103
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->copLabel:Ljavax/swing/JLabel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->copyright:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 104
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->contentPane:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->copLabel:Ljavax/swing/JLabel;

    .line 105
    new-instance v5, Ljava/awt/GridBagConstraints;

    .line 107
    new-instance v6, Ljava/awt/Insets;

    invoke-direct {v6, v7, v7, v10, v10}, Ljava/awt/Insets;-><init>(IIII)V

    move-object v11, v5

    move-object/from16 v22, v6

    .line 105
    invoke-direct/range {v11 .. v24}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 104
    invoke-virtual {v1, v4, v5}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 108
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->commentField:Ljavax/swing/JTextArea;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AboutDialog;->getBackground()Ljava/awt/Color;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/swing/JTextArea;->setBackground(Ljava/awt/Color;)V

    .line 109
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->commentField:Ljavax/swing/JTextArea;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->copLabel:Ljavax/swing/JLabel;

    invoke-virtual {v4}, Ljavax/swing/JLabel;->getForeground()Ljava/awt/Color;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/swing/JTextArea;->setForeground(Ljava/awt/Color;)V

    .line 110
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->commentField:Ljavax/swing/JTextArea;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->copLabel:Ljavax/swing/JLabel;

    invoke-virtual {v4}, Ljavax/swing/JLabel;->getFont()Ljava/awt/Font;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 111
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->commentField:Ljavax/swing/JTextArea;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->comments:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 112
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->commentField:Ljavax/swing/JTextArea;

    invoke-virtual {v1, v10}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 113
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->commentField:Ljavax/swing/JTextArea;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljavax/swing/JTextArea;->setBorder(Ljavax/swing/border/Border;)V

    .line 114
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->contentPane:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->commentField:Ljavax/swing/JTextArea;

    .line 115
    new-instance v5, Ljava/awt/GridBagConstraints;

    .line 117
    new-instance v6, Ljava/awt/Insets;

    invoke-direct {v6, v7, v7, v7, v10}, Ljava/awt/Insets;-><init>(IIII)V

    const/4 v15, 0x3

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v21, 0x1

    move-object v11, v5

    move-object/from16 v22, v6

    .line 115
    invoke-direct/range {v11 .. v24}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 114
    invoke-virtual {v1, v4, v5}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 119
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->image:Ljavax/swing/JLabel;

    const-string v4, "Eve"

    invoke-virtual {v1, v4}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 120
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->image:Ljavax/swing/JLabel;

    new-instance v4, Ljavax/swing/ImageIcon;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "server.gif"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    invoke-virtual {v1, v4}, Ljavax/swing/JLabel;->setIcon(Ljavax/swing/Icon;)V

    .line 122
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->image:Ljavax/swing/JLabel;

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljavax/swing/JLabel;->setHorizontalAlignment(I)V

    .line 123
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->image:Ljavax/swing/JLabel;

    new-instance v4, Ljava/awt/Dimension;

    const/16 v5, 0x62

    const/16 v6, 0x2c

    invoke-direct {v4, v5, v6}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v4}, Ljavax/swing/JLabel;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 124
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->image:Ljavax/swing/JLabel;

    new-instance v4, Ljava/awt/Dimension;

    invoke-direct {v4, v5, v6}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v4}, Ljavax/swing/JLabel;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 125
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->image:Ljavax/swing/JLabel;

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setAlignmentX(F)V

    .line 126
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->image:Ljavax/swing/JLabel;

    invoke-static {}, Ljavax/swing/BorderFactory;->createEmptyBorder()Ljavax/swing/border/Border;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setBorder(Ljavax/swing/border/Border;)V

    .line 127
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->image:Ljavax/swing/JLabel;

    new-instance v2, Ljava/awt/Dimension;

    invoke-direct {v2, v5, v6}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 128
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->image:Ljavax/swing/JLabel;

    new-instance v2, Ljava/awt/Dimension;

    const/16 v4, 0xc8

    invoke-direct {v2, v5, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setSize(Ljava/awt/Dimension;)V

    .line 129
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->btnPanel:Ljavax/swing/JPanel;

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->btnPaneLayout:Ljava/awt/FlowLayout;

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 130
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->okButton:Ljavax/swing/JButton;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 131
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->okButton:Ljavax/swing/JButton;

    .line 132
    new-instance v2, Lorg/apache/ldap/server/db/gui/AboutDialog$2;

    invoke-direct {v2, v0}, Lorg/apache/ldap/server/db/gui/AboutDialog$2;-><init>(Lorg/apache/ldap/server/db/gui/AboutDialog;)V

    .line 131
    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 138
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->btnPanel:Ljavax/swing/JPanel;

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->okButton:Ljavax/swing/JButton;

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 139
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AboutDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->image:Ljavax/swing/JLabel;

    const-string v4, "West"

    invoke-virtual {v1, v2, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AboutDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->contentPane:Ljavax/swing/JPanel;

    const-string v4, "Center"

    invoke-virtual {v1, v2, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AboutDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->btnPanel:Ljavax/swing/JPanel;

    const-string v4, "South"

    invoke-virtual {v1, v2, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AboutDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->jPanel1:Ljavax/swing/JPanel;

    const-string v4, "North"

    invoke-virtual {v1, v2, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AboutDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->jPanel2:Ljavax/swing/JPanel;

    const-string v4, "East"

    invoke-virtual {v1, v2, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 144
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/AboutDialog;->setTitle(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, v10}, Lorg/apache/ldap/server/db/gui/AboutDialog;->setResizable(Z)V

    .line 146
    new-instance v1, Ljava/awt/Font;

    const-string v2, "Dialog"

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/AboutDialog;->setFont(Ljava/awt/Font;)V

    .line 147
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->formLayout:Ljava/awt/BorderLayout;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/awt/BorderLayout;->setHgap(I)V

    .line 148
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->jPanel1:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/Dimension;

    const/16 v3, 0xa

    const/16 v4, 0x1e

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 149
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->jPanel1:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/Dimension;

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 150
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->jPanel1:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/Dimension;

    const/16 v3, 0x234

    const/16 v4, 0x23

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setSize(Ljava/awt/Dimension;)V

    .line 151
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->jPanel2:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/Dimension;

    const/16 v3, 0x48

    const/16 v4, 0xa5

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 152
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->jPanel2:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/Dimension;

    const/16 v5, 0x50

    invoke-direct {v2, v5, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 153
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->jPanel2:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/Dimension;

    const/16 v6, 0xaa

    invoke-direct {v2, v3, v6}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setSize(Ljava/awt/Dimension;)V

    .line 154
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AboutDialog;->jPanel2:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/Dimension;

    invoke-direct {v2, v5, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setMaximumSize(Ljava/awt/Dimension;)V

    return-void
.end method
