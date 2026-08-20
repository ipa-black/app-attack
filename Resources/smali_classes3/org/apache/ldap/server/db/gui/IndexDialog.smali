.class public Lorg/apache/ldap/server/db/gui/IndexDialog;
.super Ljavax/swing/JDialog;
.source "IndexDialog.java"


# static fields
.field public static final DEFAULT_CURSOR:Ljava/lang/String; = "Default"

.field public static final EQUALITY_CURSOR:Ljava/lang/String; = "Equality"

.field public static final GREATER_CURSOR:Ljava/lang/String; = "Greater"

.field public static final LESS_CURSOR:Ljava/lang/String; = "Less"

.field public static final REGEX_CURSOR:Ljava/lang/String; = "Regex"

.field private static final serialVersionUID:J = 0x3335383134353736L


# instance fields
.field private jLabel1:Ljavax/swing/JLabel;

.field private jLabel2:Ljavax/swing/JLabel;

.field private jScrollPane2:Ljavax/swing/JScrollPane;

.field private m_buttonPnl:Ljavax/swing/JPanel;

.field private m_cursorPnl:Ljavax/swing/JPanel;

.field private m_cursorType:Ljavax/swing/JComboBox;

.field private m_doneBut:Ljavax/swing/JButton;

.field private m_index:Lorg/apache/ldap/server/db/Index;

.field private m_keyText:Ljavax/swing/JTextField;

.field private m_listPnl:Ljavax/swing/JPanel;

.field private m_mainPnl:Ljava/awt/Panel;

.field private m_resultsPnl:Ljavax/swing/JPanel;

.field private m_resultsTbl:Ljavax/swing/JTable;

.field private m_scanBut:Ljavax/swing/JButton;

.field private m_tabbedPane:Ljavax/swing/JTabbedPane;


# direct methods
.method public constructor <init>(Ljava/awt/Frame;ZLorg/apache/ldap/server/db/Index;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Z)V

    .line 50
    new-instance p1, Ljava/awt/Panel;

    invoke-direct {p1}, Ljava/awt/Panel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_mainPnl:Ljava/awt/Panel;

    .line 51
    new-instance p1, Ljavax/swing/JTabbedPane;

    invoke-direct {p1}, Ljavax/swing/JTabbedPane;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_tabbedPane:Ljavax/swing/JTabbedPane;

    .line 52
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_listPnl:Ljavax/swing/JPanel;

    .line 53
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorPnl:Ljavax/swing/JPanel;

    .line 54
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_resultsPnl:Ljavax/swing/JPanel;

    .line 55
    new-instance p1, Ljavax/swing/JScrollPane;

    invoke-direct {p1}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->jScrollPane2:Ljavax/swing/JScrollPane;

    .line 56
    new-instance p1, Ljavax/swing/JTable;

    invoke-direct {p1}, Ljavax/swing/JTable;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_resultsTbl:Ljavax/swing/JTable;

    .line 57
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    .line 58
    new-instance p1, Ljavax/swing/JButton;

    invoke-direct {p1}, Ljavax/swing/JButton;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_doneBut:Ljavax/swing/JButton;

    .line 59
    new-instance p1, Ljavax/swing/JLabel;

    invoke-direct {p1}, Ljavax/swing/JLabel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->jLabel1:Ljavax/swing/JLabel;

    .line 60
    new-instance p1, Ljavax/swing/JTextField;

    invoke-direct {p1}, Ljavax/swing/JTextField;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_keyText:Ljavax/swing/JTextField;

    .line 61
    new-instance p1, Ljavax/swing/JLabel;

    invoke-direct {p1}, Ljavax/swing/JLabel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->jLabel2:Ljavax/swing/JLabel;

    .line 62
    new-instance p1, Ljavax/swing/JComboBox;

    invoke-direct {p1}, Ljavax/swing/JComboBox;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorType:Ljavax/swing/JComboBox;

    .line 63
    new-instance p1, Ljavax/swing/JButton;

    invoke-direct {p1}, Ljavax/swing/JButton;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_scanBut:Ljavax/swing/JButton;

    .line 70
    iput-object p3, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_index:Lorg/apache/ldap/server/db/Index;

    .line 71
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/IndexDialog;->initGUI()V

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/db/gui/IndexDialog;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/IndexDialog;->closeDialog()V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/ldap/server/db/gui/IndexDialog;)Ljavax/swing/JTextField;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_keyText:Ljavax/swing/JTextField;

    return-object p0
.end method

.method static synthetic access$2(Lorg/apache/ldap/server/db/gui/IndexDialog;)Ljavax/swing/JComboBox;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorType:Ljavax/swing/JComboBox;

    return-object p0
.end method

.method private closeDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 268
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/gui/IndexDialog;->setVisible(Z)V

    .line 269
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/IndexDialog;->dispose()V

    return-void
.end method

.method private initGUI()V
    .locals 37

    move-object/from16 v0, p0

    .line 80
    new-instance v1, Lorg/apache/ldap/server/db/gui/IndexDialog$1;

    invoke-direct {v1, v0}, Lorg/apache/ldap/server/db/gui/IndexDialog$1;-><init>(Lorg/apache/ldap/server/db/gui/IndexDialog;)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/IndexDialog;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/IndexDialog;->pack()V

    .line 89
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Index On Attribute \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_index:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v2}, Lorg/apache/ldap/server/db/Index;->getAttribute()Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/IndexDialog;->setTitle(Ljava/lang/String;)V

    .line 90
    new-instance v1, Ljava/awt/Rectangle;

    const/16 v2, 0x200

    const/16 v3, 0x1d7

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/IndexDialog;->setBounds(Ljava/awt/Rectangle;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/IndexDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_mainPnl:Ljava/awt/Panel;

    const-string v3, "Center"

    invoke-virtual {v1, v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 92
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_mainPnl:Ljava/awt/Panel;

    new-instance v2, Ljava/awt/BorderLayout;

    invoke-direct {v2}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljava/awt/Panel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 93
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_mainPnl:Ljava/awt/Panel;

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_tabbedPane:Ljavax/swing/JTabbedPane;

    invoke-virtual {v1, v2, v3}, Ljava/awt/Panel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 94
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_tabbedPane:Ljavax/swing/JTabbedPane;

    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_listPnl:Ljavax/swing/JPanel;

    const-string v5, "Listing"

    invoke-virtual {v1, v2, v5}, Ljavax/swing/JTabbedPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 95
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_listPnl:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/GridBagLayout;

    invoke-direct {v2}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 96
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_listPnl:Ljavax/swing/JPanel;

    .line 97
    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorPnl:Ljavax/swing/JPanel;

    .line 98
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 107
    new-instance v14, Ljava/awt/Insets;

    const/16 v5, 0x1e

    const/16 v12, 0xf

    invoke-direct {v14, v12, v4, v5, v4}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v19, 0x3fc3333333333333L    # 0.15

    const/16 v16, 0xb

    const/16 v21, 0x1

    move-object v5, v15

    move-wide/from16 v12, v19

    move-object/from16 v19, v14

    move/from16 v14, v16

    move-object v4, v15

    move/from16 v15, v21

    move-object/from16 v16, v19

    .line 98
    invoke-direct/range {v5 .. v18}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 96
    invoke-virtual {v1, v2, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 110
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_listPnl:Ljavax/swing/JPanel;

    .line 111
    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_resultsPnl:Ljavax/swing/JPanel;

    .line 112
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 121
    new-instance v14, Ljava/awt/Insets;

    const/4 v4, 0x0

    invoke-direct {v14, v4, v4, v4, v4}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide v11, 0x3fe999999999999aL    # 0.8

    const/16 v13, 0xa

    const/16 v18, 0x1

    move-object v4, v15

    move-object/from16 v19, v14

    move/from16 v14, v18

    move-object/from16 v23, v15

    move-object/from16 v15, v19

    .line 112
    invoke-direct/range {v4 .. v17}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v4, v23

    .line 110
    invoke-virtual {v1, v2, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 124
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_listPnl:Ljavax/swing/JPanel;

    .line 125
    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    .line 126
    new-instance v15, Ljava/awt/GridBagConstraints;

    .line 135
    new-instance v14, Ljava/awt/Insets;

    const/4 v4, 0x0

    invoke-direct {v14, v4, v4, v4, v4}, Ljava/awt/Insets;-><init>(IIII)V

    const/4 v6, 0x2

    const-wide v11, 0x3fa999999999999aL    # 0.05

    move-object v4, v15

    move-object/from16 v19, v14

    move/from16 v14, v18

    move-object/from16 v24, v15

    move-object/from16 v15, v19

    .line 126
    invoke-direct/range {v4 .. v17}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    move-object/from16 v4, v24

    .line 124
    invoke-virtual {v1, v2, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 138
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorPnl:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/GridBagLayout;

    invoke-direct {v2}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 139
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorPnl:Ljavax/swing/JPanel;

    .line 142
    new-instance v2, Ljava/awt/Color;

    const/16 v4, 0x99

    invoke-direct {v2, v4, v4, v4}, Ljava/awt/Color;-><init>(III)V

    const/4 v5, 0x1

    .line 141
    invoke-static {v2, v5}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v6

    .line 147
    new-instance v10, Ljava/awt/Font;

    const-string v2, "SansSerif"

    const/16 v12, 0xe

    const/4 v7, 0x0

    invoke-direct {v10, v2, v7, v12}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 148
    new-instance v11, Ljava/awt/Color;

    const/16 v13, 0x3c

    invoke-direct {v11, v13, v13, v13}, Ljava/awt/Color;-><init>(III)V

    .line 140
    const-string v7, "Display Cursor Constraints"

    const/4 v8, 0x4

    const/4 v9, 0x2

    invoke-static/range {v6 .. v11}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v6

    .line 139
    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 149
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorPnl:Ljavax/swing/JPanel;

    .line 150
    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->jLabel1:Ljavax/swing/JLabel;

    .line 151
    new-instance v7, Ljava/awt/GridBagConstraints;

    .line 160
    new-instance v8, Ljava/awt/Insets;

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/16 v11, 0xf

    invoke-direct {v8, v10, v11, v10, v9}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x11

    const/16 v33, 0x0

    move-object/from16 v23, v7

    move-object/from16 v34, v8

    .line 151
    invoke-direct/range {v23 .. v36}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 149
    invoke-virtual {v1, v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 163
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorPnl:Ljavax/swing/JPanel;

    .line 164
    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_keyText:Ljavax/swing/JTextField;

    .line 165
    new-instance v7, Ljava/awt/GridBagConstraints;

    .line 174
    new-instance v8, Ljava/awt/Insets;

    const/16 v10, 0xec

    const/4 v14, 0x5

    invoke-direct {v8, v14, v14, v14, v10}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v34, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    const-wide v26, 0x3fd999999999999aL    # 0.4

    const/16 v30, 0x11

    const/16 v31, 0x1

    move-object/from16 v21, v7

    move-object/from16 v32, v8

    .line 165
    invoke-direct/range {v21 .. v34}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 163
    invoke-virtual {v1, v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 177
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorPnl:Ljavax/swing/JPanel;

    .line 178
    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->jLabel2:Ljavax/swing/JLabel;

    .line 179
    new-instance v7, Ljava/awt/GridBagConstraints;

    .line 188
    new-instance v8, Ljava/awt/Insets;

    const/4 v10, 0x0

    invoke-direct {v8, v10, v11, v10, v9}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v26, 0x0

    const/16 v31, 0x0

    move-object/from16 v21, v7

    move-object/from16 v32, v8

    .line 179
    invoke-direct/range {v21 .. v34}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 177
    invoke-virtual {v1, v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 191
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorPnl:Ljavax/swing/JPanel;

    .line 192
    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorType:Ljavax/swing/JComboBox;

    .line 193
    new-instance v7, Ljava/awt/GridBagConstraints;

    .line 202
    new-instance v8, Ljava/awt/Insets;

    const/4 v9, 0x0

    invoke-direct {v8, v14, v14, v14, v9}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v22, 0x1

    const-wide v26, 0x3fd999999999999aL    # 0.4

    move-object/from16 v21, v7

    move-object/from16 v32, v8

    .line 193
    invoke-direct/range {v21 .. v34}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 191
    invoke-virtual {v1, v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 205
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_resultsPnl:Ljavax/swing/JPanel;

    new-instance v6, Ljava/awt/BorderLayout;

    invoke-direct {v6}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 206
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_resultsPnl:Ljavax/swing/JPanel;

    .line 209
    new-instance v6, Ljava/awt/Color;

    invoke-direct {v6, v4, v4, v4}, Ljava/awt/Color;-><init>(III)V

    .line 208
    invoke-static {v6, v5}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v21

    .line 214
    new-instance v4, Ljava/awt/Font;

    const/4 v6, 0x0

    invoke-direct {v4, v2, v6, v12}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 215
    new-instance v6, Ljava/awt/Color;

    invoke-direct {v6, v13, v13, v13}, Ljava/awt/Color;-><init>(III)V

    .line 207
    const-string v22, "Scan Results"

    const/16 v23, 0x4

    const/16 v24, 0x2

    move-object/from16 v25, v4

    move-object/from16 v26, v6

    invoke-static/range {v21 .. v26}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v4

    .line 206
    invoke-virtual {v1, v4}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 216
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_resultsPnl:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->jScrollPane2:Ljavax/swing/JScrollPane;

    invoke-virtual {v1, v4, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 217
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->jScrollPane2:Ljavax/swing/JScrollPane;

    invoke-virtual {v1}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v1

    iget-object v3, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_resultsTbl:Ljavax/swing/JTable;

    invoke-virtual {v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 218
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    .line 219
    new-instance v3, Ljava/awt/FlowLayout;

    invoke-direct {v3, v5, v11, v14}, Ljava/awt/FlowLayout;-><init>(III)V

    .line 218
    invoke-virtual {v1, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 220
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    iget-object v3, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_doneBut:Ljavax/swing/JButton;

    invoke-virtual {v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 221
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    iget-object v3, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_scanBut:Ljavax/swing/JButton;

    invoke-virtual {v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 222
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_doneBut:Ljavax/swing/JButton;

    const-string v3, "Done"

    invoke-virtual {v1, v3}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 223
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_doneBut:Ljavax/swing/JButton;

    new-instance v3, Lorg/apache/ldap/server/db/gui/IndexDialog$2;

    invoke-direct {v3, v0}, Lorg/apache/ldap/server/db/gui/IndexDialog$2;-><init>(Lorg/apache/ldap/server/db/gui/IndexDialog;)V

    invoke-virtual {v1, v3}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 231
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->jLabel1:Ljavax/swing/JLabel;

    const-string v3, "Key Constraint:"

    invoke-virtual {v1, v3}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 232
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_keyText:Ljavax/swing/JTextField;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 233
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_keyText:Ljavax/swing/JTextField;

    new-instance v3, Ljava/awt/Dimension;

    const/16 v4, 0x82

    const/16 v5, 0x14

    invoke-direct {v3, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v3}, Ljavax/swing/JTextField;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 234
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_keyText:Ljavax/swing/JTextField;

    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v3}, Ljavax/swing/JTextField;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 235
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_keyText:Ljavax/swing/JTextField;

    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v3}, Ljavax/swing/JTextField;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 236
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_keyText:Ljavax/swing/JTextField;

    .line 237
    new-instance v3, Ljava/awt/Font;

    const/4 v6, 0x0

    invoke-direct {v3, v2, v6, v12}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 236
    invoke-virtual {v1, v3}, Ljavax/swing/JTextField;->setFont(Ljava/awt/Font;)V

    .line 238
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_keyText:Ljavax/swing/JTextField;

    new-instance v2, Ljava/awt/Dimension;

    invoke-direct {v2, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JTextField;->setSize(Ljava/awt/Dimension;)V

    .line 239
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->jLabel2:Ljavax/swing/JLabel;

    const-string v2, "Cursor Type:"

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 240
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorType:Ljavax/swing/JComboBox;

    new-instance v2, Ljava/awt/Dimension;

    const/16 v3, 0x7fff

    invoke-direct {v2, v3, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JComboBox;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 241
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorType:Ljavax/swing/JComboBox;

    new-instance v2, Ljava/awt/Dimension;

    const/16 v3, 0x7e

    invoke-direct {v2, v3, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JComboBox;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 242
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorType:Ljavax/swing/JComboBox;

    new-instance v2, Ljava/awt/Dimension;

    invoke-direct {v2, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JComboBox;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 243
    new-instance v1, Ljavax/swing/DefaultComboBoxModel;

    invoke-direct {v1}, Ljavax/swing/DefaultComboBoxModel;-><init>()V

    .line 244
    const-string v2, "Default"

    invoke-virtual {v1, v2}, Ljavax/swing/DefaultComboBoxModel;->addElement(Ljava/lang/Object;)V

    .line 245
    const-string v3, "Equality"

    invoke-virtual {v1, v3}, Ljavax/swing/DefaultComboBoxModel;->addElement(Ljava/lang/Object;)V

    .line 246
    const-string v3, "Greater"

    invoke-virtual {v1, v3}, Ljavax/swing/DefaultComboBoxModel;->addElement(Ljava/lang/Object;)V

    .line 247
    const-string v3, "Less"

    invoke-virtual {v1, v3}, Ljavax/swing/DefaultComboBoxModel;->addElement(Ljava/lang/Object;)V

    .line 248
    const-string v3, "Regex"

    invoke-virtual {v1, v3}, Ljavax/swing/DefaultComboBoxModel;->addElement(Ljava/lang/Object;)V

    .line 249
    iget-object v3, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorType:Ljavax/swing/JComboBox;

    invoke-virtual {v3, v1}, Ljavax/swing/JComboBox;->setModel(Ljavax/swing/ComboBoxModel;)V

    .line 250
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_cursorType:Ljavax/swing/JComboBox;

    invoke-virtual {v1, v14}, Ljavax/swing/JComboBox;->setMaximumRowCount(I)V

    .line 251
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_scanBut:Ljavax/swing/JButton;

    const-string v3, "Scan"

    invoke-virtual {v1, v3}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 252
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_scanBut:Ljavax/swing/JButton;

    new-instance v3, Lorg/apache/ldap/server/db/gui/IndexDialog$3;

    invoke-direct {v3, v0}, Lorg/apache/ldap/server/db/gui/IndexDialog$3;-><init>(Lorg/apache/ldap/server/db/gui/IndexDialog;)V

    invoke-virtual {v1, v3}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    const/4 v1, 0x0

    .line 262
    invoke-virtual {v0, v1, v2}, Lorg/apache/ldap/server/db/gui/IndexDialog;->doScan(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public doScan(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p1, v0

    :cond_1
    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 280
    const-string v2, "Default"

    if-eq p2, v2, :cond_2

    .line 282
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v2, "Cannot use a "

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, " scan type with a null key constraint."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    const-string p2, "Missing Key Constraint"

    .line 282
    invoke-static {v0, p1, p2, v1}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    return v1

    .line 292
    :cond_2
    :try_start_0
    const-string v2, "Equality"

    const/4 v3, 0x1

    if-ne p2, v2, :cond_3

    .line 294
    iget-object v2, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_index:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v2, p1}, Lorg/apache/ldap/server/db/Index;->listIndices(Ljava/lang/Object;)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v2

    goto :goto_0

    .line 296
    :cond_3
    const-string v2, "Greater"

    if-ne p2, v2, :cond_4

    .line 298
    iget-object v2, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_index:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v2, p1, v3}, Lorg/apache/ldap/server/db/Index;->listIndices(Ljava/lang/Object;Z)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v2

    goto :goto_0

    .line 300
    :cond_4
    const-string v2, "Less"

    if-ne p2, v2, :cond_5

    .line 302
    iget-object v2, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_index:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v2, p1, v1}, Lorg/apache/ldap/server/db/Index;->listIndices(Ljava/lang/Object;Z)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v2

    goto :goto_0

    .line 304
    :cond_5
    const-string v2, "Regex"

    if-ne p2, v2, :cond_7

    .line 306
    invoke-static {p1}, Lorg/apache/ldap/common/util/StringTools;->getRegex(Ljava/lang/String;)Lorg/apache/regexp/RE;

    move-result-object v2

    const/16 v4, 0x2a

    .line 307
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_6

    .line 311
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 312
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Regex prefix = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    iget-object v5, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_index:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v5, v2, v4}, Lorg/apache/ldap/server/db/Index;->listIndices(Lorg/apache/regexp/RE;Ljava/lang/String;)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v2

    goto :goto_0

    .line 317
    :cond_6
    iget-object v4, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_index:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v4, v2}, Lorg/apache/ldap/server/db/Index;->listIndices(Lorg/apache/regexp/RE;)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v2

    goto :goto_0

    .line 322
    :cond_7
    iget-object v2, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_index:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v2}, Lorg/apache/ldap/server/db/Index;->listIndices()Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v2

    .line 326
    :goto_0
    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    .line 327
    const-string v4, "Keys ( Attribute Value )"

    .line 328
    const-string v5, "Values ( Entry Id )"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 329
    new-instance v5, Ljavax/swing/table/DefaultTableModel;

    invoke-direct {v5, v4, v1}, Ljavax/swing/table/DefaultTableModel;-><init>([Ljava/lang/Object;I)V

    move v4, v1

    .line 331
    :goto_1
    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v6

    if-nez v6, :cond_9

    .line 341
    iget-object v2, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_resultsTbl:Ljavax/swing/JTable;

    invoke-virtual {v2, v5}, Ljavax/swing/JTable;->setModel(Ljavax/swing/table/TableModel;)V

    .line 342
    iget-object v2, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_resultsPnl:Ljavax/swing/JPanel;

    .line 345
    new-instance v5, Ljava/awt/Color;

    const/16 v6, 0x99

    invoke-direct {v5, v6, v6, v6}, Ljava/awt/Color;-><init>(III)V

    .line 344
    invoke-static {v5, v3}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v7

    .line 346
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Scan Results: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 349
    new-instance v11, Ljava/awt/Font;

    const-string v4, "SansSerif"

    const/16 v5, 0xe

    invoke-direct {v11, v4, v1, v5}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 350
    new-instance v12, Ljava/awt/Color;

    const/16 v4, 0x3c

    invoke-direct {v12, v4, v4, v4}, Ljava/awt/Color;-><init>(III)V

    const/4 v9, 0x4

    const/4 v10, 0x2

    .line 343
    invoke-static/range {v7 .. v12}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v4

    .line 342
    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 352
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/IndexDialog;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 354
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/IndexDialog;->validate()V

    :cond_8
    return v3

    .line 333
    :cond_9
    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ldap/server/db/IndexRecord;

    .line 335
    invoke-virtual {v6}, Lorg/apache/ldap/server/db/IndexRecord;->getIndexKey()Ljava/lang/Object;

    move-result-object v7

    .line 336
    invoke-virtual {v6}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v6

    filled-new-array {v7, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 337
    invoke-virtual {v5, v6}, Ljavax/swing/table/DefaultTableModel;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 359
    invoke-static {v2}, Lorg/apache/ldap/common/util/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_a

    .line 363
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 364
    const-string v2, "\n. . . TRUNCATED . . ."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 363
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    :cond_a
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Error while scanning index on attribute "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 368
    iget-object v4, p0, Lorg/apache/ldap/server/db/gui/IndexDialog;->m_index:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v4}, Lorg/apache/ldap/server/db/Index;->getAttribute()Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " using a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 369
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v3, " cursor type with a key constraint of \'"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 370
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "\':\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 372
    new-instance p2, Ljavax/swing/JTextArea;

    invoke-direct {p2}, Ljavax/swing/JTextArea;-><init>()V

    .line 373
    invoke-virtual {p2, p1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 374
    const-string p1, "Index Scan Error"

    invoke-static {v0, p2, p1, v1}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    return v1
.end method
