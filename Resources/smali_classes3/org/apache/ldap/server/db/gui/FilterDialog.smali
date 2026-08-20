.class public Lorg/apache/ldap/server/db/gui/FilterDialog;
.super Ljavax/swing/JDialog;
.source "FilterDialog.java"


# static fields
.field public static final ANNOTATE_MODE:Ljava/lang/String; = "Annotate"

.field public static final BASE_SCOPE:Ljava/lang/String; = "Base Object"

.field public static final CANCEL_CMD:Ljava/lang/String; = "Cancel"

.field public static final DEBUG_MODE:Ljava/lang/String; = "Debug"

.field public static final LOAD_CMD:Ljava/lang/String; = "Load"

.field public static final LOAD_MODE:Ljava/lang/String; = "Load"

.field public static final RUN_MODE:Ljava/lang/String; = "Run"

.field public static final SEARCH_CMD:Ljava/lang/String; = "Search"

.field public static final SINGLE_SCOPE:Ljava/lang/String; = "Single Level"

.field public static final SUBTREE_SCOPE:Ljava/lang/String; = "Subtree Level"

.field public static final UNLIMITED:Ljava/lang/String; = "Unlimited"

.field private static final serialVersionUID:J = 0x3430363636303236L


# instance fields
.field private jLabel1:Ljavax/swing/JLabel;

.field private m_basePnl:Ljavax/swing/JPanel;

.field private m_baseText:Ljavax/swing/JTextField;

.field private m_cancelBut:Ljavax/swing/JButton;

.field private m_centerPnl:Ljavax/swing/JPanel;

.field private m_filterText:Ljavax/swing/JTextArea;

.field private m_limitField:Ljavax/swing/JTextField;

.field private m_limitLbl:Ljavax/swing/JLabel;

.field private final m_mode:Ljava/lang/String;

.field private m_northPnl:Ljavax/swing/JPanel;

.field private m_scopeChoice:Ljavax/swing/JComboBox;

.field private m_scopeLbl:Ljavax/swing/JLabel;

.field private m_scrollPane:Ljavax/swing/JScrollPane;

.field private m_searchBut:Ljavax/swing/JButton;

.field private m_southPnl:Ljavax/swing/JPanel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/swing/JFrame;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p2, p3}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Z)V

    .line 53
    new-instance p2, Ljavax/swing/JPanel;

    invoke-direct {p2}, Ljavax/swing/JPanel;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_northPnl:Ljavax/swing/JPanel;

    .line 54
    new-instance p2, Ljavax/swing/JPanel;

    invoke-direct {p2}, Ljavax/swing/JPanel;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_centerPnl:Ljavax/swing/JPanel;

    .line 55
    new-instance p2, Ljavax/swing/JTextArea;

    invoke-direct {p2}, Ljavax/swing/JTextArea;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_filterText:Ljavax/swing/JTextArea;

    .line 56
    new-instance p2, Ljavax/swing/JLabel;

    invoke-direct {p2}, Ljavax/swing/JLabel;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeLbl:Ljavax/swing/JLabel;

    .line 57
    new-instance p2, Ljavax/swing/JComboBox;

    invoke-direct {p2}, Ljavax/swing/JComboBox;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeChoice:Ljavax/swing/JComboBox;

    .line 58
    new-instance p2, Ljavax/swing/JLabel;

    invoke-direct {p2}, Ljavax/swing/JLabel;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_limitLbl:Ljavax/swing/JLabel;

    .line 59
    new-instance p2, Ljavax/swing/JTextField;

    invoke-direct {p2}, Ljavax/swing/JTextField;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_limitField:Ljavax/swing/JTextField;

    .line 60
    new-instance p2, Ljavax/swing/JPanel;

    invoke-direct {p2}, Ljavax/swing/JPanel;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_southPnl:Ljavax/swing/JPanel;

    .line 61
    new-instance p2, Ljavax/swing/JButton;

    invoke-direct {p2}, Ljavax/swing/JButton;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_searchBut:Ljavax/swing/JButton;

    .line 62
    new-instance p2, Ljavax/swing/JButton;

    invoke-direct {p2}, Ljavax/swing/JButton;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_cancelBut:Ljavax/swing/JButton;

    .line 63
    new-instance p2, Ljavax/swing/JScrollPane;

    invoke-direct {p2}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scrollPane:Ljavax/swing/JScrollPane;

    .line 65
    new-instance p2, Ljavax/swing/JTextField;

    invoke-direct {p2}, Ljavax/swing/JTextField;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_baseText:Ljavax/swing/JTextField;

    .line 66
    new-instance p2, Ljavax/swing/JPanel;

    invoke-direct {p2}, Ljavax/swing/JPanel;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_basePnl:Ljavax/swing/JPanel;

    .line 67
    new-instance p2, Ljavax/swing/JLabel;

    invoke-direct {p2}, Ljavax/swing/JLabel;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->jLabel1:Ljavax/swing/JLabel;

    .line 73
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_mode:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/FilterDialog;->initGUI()V

    return-void
.end method

.method private initGUI()V
    .locals 37

    move-object/from16 v0, p0

    .line 90
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_baseText:Ljavax/swing/JTextField;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 92
    new-instance v1, Lorg/apache/ldap/server/db/gui/FilterDialog$1;

    invoke-direct {v1, v0}, Lorg/apache/ldap/server/db/gui/FilterDialog$1;-><init>(Lorg/apache/ldap/server/db/gui/FilterDialog;)V

    .line 91
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/FilterDialog;->pack()V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/FilterDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    new-instance v3, Ljava/awt/GridBagLayout;

    invoke-direct {v3}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v3}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/FilterDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v3, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_northPnl:Ljavax/swing/JPanel;

    .line 101
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 102
    new-instance v14, Ljava/awt/Insets;

    const/4 v13, 0x5

    const/4 v4, 0x6

    const/4 v11, 0x0

    invoke-direct {v14, v13, v13, v4, v11}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    const-wide/16 v18, 0x0

    const/16 v20, 0xb

    const/16 v21, 0x1

    move-object v4, v15

    move-wide/from16 v11, v18

    move/from16 v13, v20

    move-object/from16 v18, v14

    move/from16 v14, v21

    move-object/from16 v22, v15

    move-object/from16 v15, v18

    .line 101
    invoke-direct/range {v4 .. v17}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v4, v22

    .line 100
    invoke-virtual {v1, v3, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/FilterDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v3, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_centerPnl:Ljavax/swing/JPanel;

    .line 104
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 106
    new-instance v14, Ljava/awt/Insets;

    const/16 v13, 0xa

    invoke-direct {v14, v13, v13, v13, v13}, Ljava/awt/Insets;-><init>(IIII)V

    const/4 v6, 0x1

    const-wide v11, 0x3feccccccccccccdL    # 0.9

    const/16 v18, 0xa

    const/16 v19, 0x1

    move-object v4, v15

    move/from16 v13, v18

    move-object/from16 v18, v14

    move/from16 v14, v19

    move-object/from16 v24, v15

    move-object/from16 v15, v18

    .line 104
    invoke-direct/range {v4 .. v17}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v4, v24

    .line 103
    invoke-virtual {v1, v3, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/FilterDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v3, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_southPnl:Ljavax/swing/JPanel;

    .line 108
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 110
    new-instance v14, Ljava/awt/Insets;

    const/4 v4, 0x2

    const/4 v13, 0x0

    invoke-direct {v14, v13, v13, v4, v13}, Ljava/awt/Insets;-><init>(IIII)V

    const/4 v6, 0x2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v11, 0x0

    const/16 v18, 0xf

    move-object v4, v15

    move/from16 v13, v18

    move-object/from16 v18, v14

    move/from16 v14, v19

    move-object/from16 v26, v15

    move-object/from16 v15, v18

    .line 108
    invoke-direct/range {v4 .. v17}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v4, v26

    .line 107
    invoke-virtual {v1, v3, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 111
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_northPnl:Ljavax/swing/JPanel;

    new-instance v3, Ljava/awt/GridBagLayout;

    invoke-direct {v3}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 112
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_northPnl:Ljavax/swing/JPanel;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 113
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_northPnl:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeLbl:Ljavax/swing/JLabel;

    .line 114
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 115
    new-instance v14, Ljava/awt/Insets;

    const/4 v12, 0x5

    const/4 v13, 0x0

    invoke-direct {v14, v12, v13, v12, v13}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-wide v10, 0x3fc999999999999aL    # 0.2

    const-wide/16 v19, 0x0

    const/16 v16, 0xa

    const/16 v21, 0x0

    move-object v5, v15

    move v3, v12

    move-wide/from16 v12, v19

    move-object/from16 v19, v14

    move/from16 v14, v16

    move-object v3, v15

    move/from16 v15, v21

    move-object/from16 v16, v19

    .line 114
    invoke-direct/range {v5 .. v18}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 113
    invoke-virtual {v1, v4, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 116
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_northPnl:Ljavax/swing/JPanel;

    iget-object v3, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeChoice:Ljavax/swing/JComboBox;

    .line 117
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 118
    new-instance v14, Ljava/awt/Insets;

    const/4 v4, 0x7

    const/16 v13, 0x9

    const/4 v5, 0x5

    const/4 v11, 0x0

    invoke-direct {v14, v13, v11, v4, v5}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v16, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v18, 0x0

    const/16 v20, 0xa

    const/16 v21, 0x2

    move-object v4, v15

    move-wide/from16 v11, v18

    move/from16 v13, v20

    move-object/from16 v18, v14

    move/from16 v14, v21

    move-object/from16 v30, v15

    move-object/from16 v15, v18

    .line 117
    invoke-direct/range {v4 .. v17}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v4, v30

    .line 116
    invoke-virtual {v1, v3, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 119
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_northPnl:Ljavax/swing/JPanel;

    iget-object v3, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_limitLbl:Ljavax/swing/JLabel;

    .line 120
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 122
    new-instance v14, Ljava/awt/Insets;

    const/4 v4, 0x5

    const/16 v13, 0xa

    invoke-direct {v14, v4, v13, v4, v4}, Ljava/awt/Insets;-><init>(IIII)V

    const/4 v5, 0x2

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/16 v18, 0xa

    const/16 v19, 0x0

    move-object v4, v15

    move/from16 v13, v18

    move-object/from16 v18, v14

    move/from16 v14, v19

    move-object/from16 v32, v15

    move-object/from16 v15, v18

    .line 120
    invoke-direct/range {v4 .. v17}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v4, v32

    .line 119
    invoke-virtual {v1, v3, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 123
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_northPnl:Ljavax/swing/JPanel;

    iget-object v3, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_limitField:Ljavax/swing/JTextField;

    .line 124
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 125
    new-instance v14, Ljava/awt/Insets;

    const/16 v4, 0xb

    const/16 v5, 0x9

    const/16 v11, 0xa

    const/4 v13, 0x0

    invoke-direct {v14, v4, v13, v5, v11}, Ljava/awt/Insets;-><init>(IIII)V

    const/4 v5, 0x3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v18, 0x0

    move-object v4, v15

    move-wide/from16 v11, v18

    move/from16 v13, v20

    move-object/from16 v18, v14

    move/from16 v14, v21

    move-object/from16 v35, v15

    move-object/from16 v15, v18

    .line 124
    invoke-direct/range {v4 .. v17}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v4, v35

    .line 123
    invoke-virtual {v1, v3, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 126
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_northPnl:Ljavax/swing/JPanel;

    iget-object v3, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_basePnl:Ljavax/swing/JPanel;

    .line 127
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 128
    new-instance v14, Ljava/awt/Insets;

    const/4 v4, 0x5

    const/16 v5, 0xa

    invoke-direct {v14, v4, v5, v4, v5}, Ljava/awt/Insets;-><init>(IIII)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x4

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/16 v13, 0xa

    const/16 v18, 0x1

    move-object v4, v15

    move-object/from16 v19, v14

    move/from16 v14, v18

    move-object/from16 v36, v15

    move-object/from16 v15, v19

    .line 127
    invoke-direct/range {v4 .. v17}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v4, v36

    .line 126
    invoke-virtual {v1, v3, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 129
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_filterText:Ljavax/swing/JTextArea;

    invoke-virtual {v1, v2}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 130
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_filterText:Ljavax/swing/JTextArea;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/swing/JTextArea;->setBorder(Ljavax/swing/border/Border;)V

    .line 131
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_centerPnl:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/BorderLayout;

    invoke-direct {v2}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 132
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_centerPnl:Ljavax/swing/JPanel;

    .line 134
    new-instance v2, Ljava/awt/Color;

    const/16 v3, 0x99

    invoke-direct {v2, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    const/4 v3, 0x1

    .line 133
    invoke-static {v2, v3}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v4

    .line 136
    new-instance v8, Ljava/awt/Font;

    const-string v2, "SansSerif"

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-direct {v8, v2, v11, v10}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    new-instance v9, Ljava/awt/Color;

    const/16 v5, 0x3c

    invoke-direct {v9, v5, v5, v5}, Ljava/awt/Color;-><init>(III)V

    .line 132
    const-string v5, "Search Filter"

    const/4 v6, 0x4

    const/4 v7, 0x2

    invoke-static/range {v4 .. v9}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 137
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scrollPane:Ljavax/swing/JScrollPane;

    invoke-virtual {v1}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v1

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_filterText:Ljavax/swing/JTextArea;

    invoke-virtual {v1, v4}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 138
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_centerPnl:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scrollPane:Ljavax/swing/JScrollPane;

    const-string v5, "Center"

    invoke-virtual {v1, v4, v5}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 139
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeLbl:Ljavax/swing/JLabel;

    const-string v4, "Scope:"

    invoke-virtual {v1, v4}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 140
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeLbl:Ljavax/swing/JLabel;

    new-instance v4, Ljava/awt/Font;

    const-string v5, "Dialog"

    invoke-direct {v4, v5, v11, v10}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Ljavax/swing/JLabel;->setFont(Ljava/awt/Font;)V

    .line 141
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeChoice:Ljavax/swing/JComboBox;

    new-instance v4, Ljava/awt/Dimension;

    const/16 v5, 0x73

    const/16 v6, 0x19

    invoke-direct {v4, v5, v6}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v4}, Ljavax/swing/JComboBox;->setSize(Ljava/awt/Dimension;)V

    .line 142
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeChoice:Ljavax/swing/JComboBox;

    new-instance v4, Ljava/awt/Dimension;

    const/16 v7, 0x7fff

    invoke-direct {v4, v7, v6}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v4}, Ljavax/swing/JComboBox;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 143
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeChoice:Ljavax/swing/JComboBox;

    new-instance v4, Ljava/awt/Dimension;

    invoke-direct {v4, v5, v6}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v4}, Ljavax/swing/JComboBox;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 144
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeChoice:Ljavax/swing/JComboBox;

    new-instance v4, Ljava/awt/Dimension;

    invoke-direct {v4, v5, v6}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v4}, Ljavax/swing/JComboBox;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 145
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeChoice:Ljavax/swing/JComboBox;

    const-string v4, "Base Object"

    invoke-virtual {v1, v4}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 146
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeChoice:Ljavax/swing/JComboBox;

    const-string v4, "Single Level"

    invoke-virtual {v1, v4}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 147
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeChoice:Ljavax/swing/JComboBox;

    const-string v4, "Subtree Level"

    invoke-virtual {v1, v4}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 149
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_limitLbl:Ljavax/swing/JLabel;

    const-string v4, "Limit:"

    invoke-virtual {v1, v4}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 150
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_limitField:Ljavax/swing/JTextField;

    const-string v4, "Unlimited"

    invoke-virtual {v1, v4}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 151
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_limitField:Ljavax/swing/JTextField;

    invoke-virtual {v1, v11}, Ljavax/swing/JTextField;->setHorizontalAlignment(I)V

    .line 152
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_southPnl:Ljavax/swing/JPanel;

    new-instance v4, Ljava/awt/FlowLayout;

    const/16 v5, 0xf

    const/4 v6, 0x5

    invoke-direct {v4, v3, v5, v6}, Ljava/awt/FlowLayout;-><init>(III)V

    invoke-virtual {v1, v4}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 153
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_southPnl:Ljavax/swing/JPanel;

    iget-object v3, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_searchBut:Ljavax/swing/JButton;

    invoke-virtual {v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 155
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_mode:Ljava/lang/String;

    const-string v3, "Load"

    if-eq v1, v3, :cond_0

    .line 157
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_searchBut:Ljavax/swing/JButton;

    const-string v4, "Search"

    invoke-virtual {v1, v4}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 158
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_searchBut:Ljavax/swing/JButton;

    invoke-virtual {v1, v4}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    .line 159
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_southPnl:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_cancelBut:Ljavax/swing/JButton;

    invoke-virtual {v1, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_searchBut:Ljavax/swing/JButton;

    invoke-virtual {v1, v3}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 164
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_searchBut:Ljavax/swing/JButton;

    invoke-virtual {v1, v3}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    .line 167
    :goto_0
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_cancelBut:Ljavax/swing/JButton;

    const-string v4, "Cancel"

    invoke-virtual {v1, v4}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 168
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_cancelBut:Ljavax/swing/JButton;

    invoke-virtual {v1, v4}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    .line 169
    new-instance v1, Ljava/awt/Rectangle;

    const/16 v4, 0x253

    const/16 v5, 0x14b

    invoke-direct {v1, v11, v11, v4, v5}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->setBounds(Ljava/awt/Rectangle;)V

    .line 170
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_basePnl:Ljavax/swing/JPanel;

    new-instance v4, Ljava/awt/GridBagLayout;

    invoke-direct {v4}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v4}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 171
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_basePnl:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->jLabel1:Ljavax/swing/JLabel;

    .line 172
    new-instance v5, Ljava/awt/GridBagConstraints;

    .line 173
    new-instance v6, Ljava/awt/Insets;

    invoke-direct {v6, v11, v11, v11, v11}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x11

    const/16 v32, 0x0

    move-object/from16 v22, v5

    move-object/from16 v33, v6

    .line 172
    invoke-direct/range {v22 .. v35}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 171
    invoke-virtual {v1, v4, v5}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 174
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_basePnl:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_baseText:Ljavax/swing/JTextField;

    .line 175
    new-instance v5, Ljava/awt/GridBagConstraints;

    .line 176
    new-instance v6, Ljava/awt/Insets;

    const/4 v7, 0x5

    invoke-direct {v6, v7, v7, v7, v11}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v23, 0x1

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    const/16 v31, 0xd

    const/16 v32, 0x2

    move-object/from16 v22, v5

    move-object/from16 v33, v6

    .line 175
    invoke-direct/range {v22 .. v35}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 174
    invoke-virtual {v1, v4, v5}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 177
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->jLabel1:Ljavax/swing/JLabel;

    const-string v4, "Search Base:"

    invoke-virtual {v1, v4}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 178
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->jLabel1:Ljavax/swing/JLabel;

    new-instance v4, Ljava/awt/Font;

    invoke-direct {v4, v2, v11, v10}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Ljavax/swing/JLabel;->setFont(Ljava/awt/Font;)V

    .line 180
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_mode:Ljava/lang/String;

    const-string v2, "Run"

    if-ne v1, v2, :cond_1

    .line 181
    const-string v1, "Search Filter Dialog: Execute mode"

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-ne v1, v3, :cond_2

    .line 183
    const-string v1, "Search Filter Dialog: Load mode"

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_2
    const-string v2, "Debug"

    if-ne v1, v2, :cond_3

    .line 185
    const-string v1, "Search Filter Dialog: Debug mode"

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_3
    const-string v2, "Annotate"

    if-ne v1, v2, :cond_4

    .line 187
    const-string v1, "Search Filter Dialog: Annotate mode"

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->setTitle(Ljava/lang/String;)V

    .line 188
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeChoice:Ljavax/swing/JComboBox;

    invoke-virtual {v1, v11}, Ljavax/swing/JComboBox;->setEnabled(Z)V

    .line 189
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_limitField:Ljavax/swing/JTextField;

    invoke-virtual {v1, v11}, Ljavax/swing/JTextField;->setEnabled(Z)V

    .line 190
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_baseText:Ljavax/swing/JTextField;

    invoke-virtual {v1, v11}, Ljavax/swing/JTextField;->setEnabled(Z)V

    :goto_1
    return-void

    .line 192
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unrecognized mode."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addActionListener(Ljava/awt/event/ActionListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_searchBut:Ljavax/swing/JButton;

    invoke-virtual {v0, p1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 81
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_cancelBut:Ljavax/swing/JButton;

    invoke-virtual {v0, p1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-void
.end method

.method public closeDialog(Ljava/awt/event/WindowEvent;)V
    .locals 0

    const/4 p1, 0x0

    .line 202
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->setVisible(Z)V

    .line 203
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/FilterDialog;->dispose()V

    return-void
.end method

.method public getBase()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_baseText:Ljavax/swing/JTextField;

    invoke-virtual {v0}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_filterText:Ljavax/swing/JTextArea;

    invoke-virtual {v0}, Ljavax/swing/JTextArea;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLimit()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_limitField:Ljavax/swing/JTextField;

    invoke-virtual {v0}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 2

    .line 209
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeChoice:Ljavax/swing/JComboBox;

    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getSelectedIndex()I

    move-result v0

    .line 210
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeChoice:Ljavax/swing/JComboBox;

    invoke-virtual {v1, v0}, Ljavax/swing/JComboBox;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setBase(Ljava/lang/String;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_baseText:Ljavax/swing/JTextField;

    invoke-virtual {v0, p1}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/FilterDialog;->m_scopeChoice:Ljavax/swing/JComboBox;

    invoke-virtual {v0, p1}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    return-void
.end method
