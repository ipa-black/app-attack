.class public Lorg/apache/ldap/server/db/gui/AddEntryDialog;
.super Ljavax/swing/JDialog;
.source "AddEntryDialog.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/server/db/gui/AddEntryDialog$PopupListener;
    }
.end annotation


# static fields
.field static synthetic class$0:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x3131343739313834L


# instance fields
.field private m_attrPnl:Ljavax/swing/JPanel;

.field private m_attrScrollPnl:Ljavax/swing/JScrollPane;

.field private m_attrTbl:Ljavax/swing/JTable;

.field private m_buttonPnl:Ljavax/swing/JPanel;

.field private m_cancelBut:Ljavax/swing/JButton;

.field private m_childEntry:Ljavax/naming/directory/Attributes;

.field private m_dnPnl:Ljavax/swing/JPanel;

.field private m_dnText:Ljavax/swing/JTextField;

.field private m_doneBut:Ljavax/swing/JButton;

.field private m_namePnl:Ljavax/swing/JPanel;

.field private m_popup:Ljavax/swing/JPopupMenu;

.field private m_rdnChoice:Ljavax/swing/JComboBox;

.field private m_rdnLbl:Ljavax/swing/JLabel;

.field private m_rdnPnl:Ljavax/swing/JPanel;


# direct methods
.method public constructor <init>(Ljava/awt/Frame;Z)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Z)V

    .line 41
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_namePnl:Ljavax/swing/JPanel;

    .line 42
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrPnl:Ljavax/swing/JPanel;

    .line 43
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    .line 44
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_rdnPnl:Ljavax/swing/JPanel;

    .line 45
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_dnPnl:Ljavax/swing/JPanel;

    .line 46
    new-instance p1, Ljavax/swing/JLabel;

    invoke-direct {p1}, Ljavax/swing/JLabel;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_rdnLbl:Ljavax/swing/JLabel;

    .line 47
    new-instance p1, Ljavax/swing/JComboBox;

    invoke-direct {p1}, Ljavax/swing/JComboBox;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_rdnChoice:Ljavax/swing/JComboBox;

    .line 48
    new-instance p1, Ljavax/swing/JTextField;

    invoke-direct {p1}, Ljavax/swing/JTextField;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_dnText:Ljavax/swing/JTextField;

    .line 49
    new-instance p1, Ljavax/swing/JScrollPane;

    invoke-direct {p1}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrScrollPnl:Ljavax/swing/JScrollPane;

    .line 50
    new-instance p1, Ljavax/swing/JTable;

    invoke-direct {p1}, Ljavax/swing/JTable;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrTbl:Ljavax/swing/JTable;

    .line 51
    new-instance p1, Ljavax/swing/JButton;

    invoke-direct {p1}, Ljavax/swing/JButton;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_doneBut:Ljavax/swing/JButton;

    .line 52
    new-instance p1, Ljavax/swing/JButton;

    invoke-direct {p1}, Ljavax/swing/JButton;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_cancelBut:Ljavax/swing/JButton;

    .line 55
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_childEntry:Ljavax/naming/directory/Attributes;

    .line 67
    const-string p2, "objectClass"

    const-string v0, "top"

    invoke-interface {p1, p2, v0}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 68
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->initGUI()V

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/db/gui/AddEntryDialog;)Ljavax/swing/JPopupMenu;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_popup:Ljavax/swing/JPopupMenu;

    return-object p0
.end method

.method static synthetic access$1(Lorg/apache/ldap/server/db/gui/AddEntryDialog;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->closeDialog()V

    return-void
.end method

.method private closeDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->setVisible(Z)V

    .line 343
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->dispose()V

    return-void
.end method

.method private initGUI()V
    .locals 34

    move-object/from16 v0, p0

    .line 77
    new-instance v1, Lorg/apache/ldap/server/db/gui/AddEntryDialog$1;

    invoke-direct {v1, v0}, Lorg/apache/ldap/server/db/gui/AddEntryDialog$1;-><init>(Lorg/apache/ldap/server/db/gui/AddEntryDialog;)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->pack()V

    .line 85
    new-instance v1, Ljava/awt/Rectangle;

    const/16 v2, 0x1bf

    const/16 v3, 0x16c

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->setBounds(Ljava/awt/Rectangle;)V

    .line 86
    const-string v1, "Add New Entry"

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->setTitle(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    new-instance v2, Ljava/awt/GridBagLayout;

    invoke-direct {v2}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    .line 89
    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_namePnl:Ljavax/swing/JPanel;

    .line 90
    new-instance v3, Ljava/awt/GridBagConstraints;

    .line 99
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

    .line 90
    invoke-direct/range {v5 .. v18}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 88
    invoke-virtual {v1, v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    .line 103
    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrPnl:Ljavax/swing/JPanel;

    .line 104
    new-instance v3, Ljava/awt/GridBagConstraints;

    .line 113
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

    .line 104
    invoke-direct/range {v5 .. v18}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 102
    invoke-virtual {v1, v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    .line 117
    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    .line 118
    new-instance v3, Ljava/awt/GridBagConstraints;

    .line 127
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

    .line 118
    invoke-direct/range {v5 .. v18}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 116
    invoke-virtual {v1, v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 130
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_namePnl:Ljavax/swing/JPanel;

    .line 133
    new-instance v2, Ljava/awt/Color;

    const/16 v3, 0x99

    invoke-direct {v2, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    const/4 v5, 0x1

    .line 132
    invoke-static {v2, v5}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v6

    .line 138
    new-instance v10, Ljava/awt/Font;

    const-string v2, "SansSerif"

    const/16 v12, 0xe

    const/4 v7, 0x0

    invoke-direct {v10, v2, v7, v12}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 139
    new-instance v11, Ljava/awt/Color;

    const/16 v13, 0x3c

    invoke-direct {v11, v13, v13, v13}, Ljava/awt/Color;-><init>(III)V

    .line 131
    const-string v7, "Naming"

    const/4 v8, 0x4

    const/4 v9, 0x2

    invoke-static/range {v6 .. v11}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v6

    .line 130
    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 140
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_namePnl:Ljavax/swing/JPanel;

    .line 141
    new-instance v6, Ljavax/swing/BoxLayout;

    iget-object v7, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_namePnl:Ljavax/swing/JPanel;

    invoke-direct {v6, v7, v5}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    .line 140
    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 142
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_namePnl:Ljavax/swing/JPanel;

    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_rdnPnl:Ljavax/swing/JPanel;

    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 143
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_namePnl:Ljavax/swing/JPanel;

    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_dnPnl:Ljavax/swing/JPanel;

    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 144
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_rdnLbl:Ljavax/swing/JLabel;

    const-string v6, "Rdn:"

    invoke-virtual {v1, v6}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 145
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_rdnPnl:Ljavax/swing/JPanel;

    new-instance v6, Ljava/awt/GridBagLayout;

    invoke-direct {v6}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 146
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_rdnPnl:Ljavax/swing/JPanel;

    .line 147
    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_rdnChoice:Ljavax/swing/JComboBox;

    .line 148
    new-instance v7, Ljava/awt/GridBagConstraints;

    .line 157
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

    .line 148
    invoke-direct/range {v20 .. v33}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 146
    invoke-virtual {v1, v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 160
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_rdnPnl:Ljavax/swing/JPanel;

    .line 161
    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_rdnLbl:Ljavax/swing/JLabel;

    .line 162
    new-instance v7, Ljava/awt/GridBagConstraints;

    .line 171
    new-instance v8, Ljava/awt/Insets;

    const/4 v10, 0x0

    invoke-direct {v8, v10, v9, v10, v10}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v21, 0x0

    const-wide/16 v25, 0x0

    move-object/from16 v20, v7

    move-object/from16 v31, v8

    .line 162
    invoke-direct/range {v20 .. v33}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 160
    invoke-virtual {v1, v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 174
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_dnPnl:Ljavax/swing/JPanel;

    new-instance v6, Ljava/awt/GridBagLayout;

    invoke-direct {v6}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 175
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_dnPnl:Ljavax/swing/JPanel;

    .line 176
    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_dnText:Ljavax/swing/JTextField;

    .line 177
    new-instance v7, Ljava/awt/GridBagConstraints;

    .line 186
    new-instance v8, Ljava/awt/Insets;

    const/4 v10, 0x0

    invoke-direct {v8, v10, v4, v10, v10}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v21, 0x1

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    const/16 v30, 0x2

    move-object/from16 v20, v7

    move-object/from16 v31, v8

    .line 177
    invoke-direct/range {v20 .. v33}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    .line 175
    invoke-virtual {v1, v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 189
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_dnText:Ljavax/swing/JTextField;

    const-string v6, "unknown"

    invoke-virtual {v1, v6}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 190
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_dnText:Ljavax/swing/JTextField;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljavax/swing/JTextField;->setEditable(Z)V

    .line 191
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_dnText:Ljavax/swing/JTextField;

    .line 194
    new-instance v7, Ljava/awt/Color;

    invoke-direct {v7, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    .line 193
    invoke-static {v7, v5}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v14

    .line 199
    new-instance v7, Ljava/awt/Font;

    invoke-direct {v7, v2, v6, v12}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 200
    new-instance v6, Ljava/awt/Color;

    invoke-direct {v6, v13, v13, v13}, Ljava/awt/Color;-><init>(III)V

    .line 192
    const-string v15, "Dn"

    const/16 v16, 0x4

    const/16 v17, 0x2

    move-object/from16 v18, v7

    move-object/from16 v19, v6

    invoke-static/range {v14 .. v19}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v6

    .line 191
    invoke-virtual {v1, v6}, Ljavax/swing/JTextField;->setBorder(Ljavax/swing/border/Border;)V

    .line 201
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_rdnChoice:Ljavax/swing/JComboBox;

    invoke-virtual {v1, v5}, Ljavax/swing/JComboBox;->setEditable(Z)V

    .line 202
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_rdnChoice:Ljavax/swing/JComboBox;

    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Ljavax/swing/JComboBox;->setMaximumRowCount(I)V

    .line 204
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_rdnChoice:Ljavax/swing/JComboBox;

    new-instance v6, Ljava/awt/Dimension;

    const/16 v7, 0x82

    const/16 v8, 0x18

    invoke-direct {v6, v7, v8}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v6}, Ljavax/swing/JComboBox;->setSize(Ljava/awt/Dimension;)V

    .line 205
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrPnl:Ljavax/swing/JPanel;

    new-instance v6, Ljava/awt/BorderLayout;

    invoke-direct {v6}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 206
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrPnl:Ljavax/swing/JPanel;

    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrScrollPnl:Ljavax/swing/JScrollPane;

    const-string v7, "Center"

    invoke-virtual {v1, v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 207
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrScrollPnl:Ljavax/swing/JScrollPane;

    invoke-virtual {v1}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v1

    iget-object v6, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrTbl:Ljavax/swing/JTable;

    invoke-virtual {v1, v6}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 208
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrTbl:Ljavax/swing/JTable;

    new-instance v6, Ljava/awt/Rectangle;

    const/16 v7, 0x4e

    const/16 v8, 0x20

    invoke-direct {v6, v7, v13, v8, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v1, v6}, Ljavax/swing/JTable;->setBounds(Ljava/awt/Rectangle;)V

    .line 209
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrTbl:Ljavax/swing/JTable;

    invoke-virtual {v1, v5}, Ljavax/swing/JTable;->setCellSelectionEnabled(Z)V

    .line 211
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_doneBut:Ljavax/swing/JButton;

    const-string v6, "Done"

    invoke-virtual {v1, v6}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 212
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    .line 213
    new-instance v6, Ljava/awt/FlowLayout;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v9, v4}, Ljava/awt/FlowLayout;-><init>(III)V

    .line 212
    invoke-virtual {v1, v6}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 214
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_doneBut:Ljavax/swing/JButton;

    invoke-virtual {v1, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 215
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_buttonPnl:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_cancelBut:Ljavax/swing/JButton;

    invoke-virtual {v1, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 216
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_cancelBut:Ljavax/swing/JButton;

    const-string v4, "Cancel"

    invoke-virtual {v1, v4}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 217
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_cancelBut:Ljavax/swing/JButton;

    new-instance v4, Lorg/apache/ldap/server/db/gui/AddEntryDialog$2;

    invoke-direct {v4, v0}, Lorg/apache/ldap/server/db/gui/AddEntryDialog$2;-><init>(Lorg/apache/ldap/server/db/gui/AddEntryDialog;)V

    invoke-virtual {v1, v4}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 224
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrScrollPnl:Ljavax/swing/JScrollPane;

    .line 227
    new-instance v4, Ljava/awt/Color;

    invoke-direct {v4, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    .line 226
    invoke-static {v4, v5}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v6

    .line 232
    new-instance v10, Ljava/awt/Font;

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3, v12}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 233
    new-instance v11, Ljava/awt/Color;

    invoke-direct {v11, v13, v13, v13}, Ljava/awt/Color;-><init>(III)V

    .line 225
    const-string v7, "Attributes"

    const/4 v8, 0x4

    const/4 v9, 0x2

    invoke-static/range {v6 .. v11}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v2

    .line 224
    invoke-virtual {v1, v2}, Ljavax/swing/JScrollPane;->setBorder(Ljavax/swing/border/Border;)V

    .line 235
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrTbl:Ljavax/swing/JTable;

    new-instance v2, Lorg/apache/ldap/server/db/gui/AttributesTableModel;

    iget-object v3, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_childEntry:Ljavax/naming/directory/Attributes;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4, v5}, Lorg/apache/ldap/server/db/gui/AttributesTableModel;-><init>(Ljavax/naming/directory/Attributes;Ljava/math/BigInteger;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljavax/swing/JTable;->setModel(Ljavax/swing/table/TableModel;)V

    .line 242
    new-instance v1, Ljavax/swing/JPopupMenu;

    invoke-direct {v1}, Ljavax/swing/JPopupMenu;-><init>()V

    iput-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_popup:Ljavax/swing/JPopupMenu;

    .line 243
    new-instance v1, Ljavax/swing/JMenuItem;

    const-string v2, "Add"

    invoke-direct {v1, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 246
    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_popup:Ljavax/swing/JPopupMenu;

    invoke-virtual {v2, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 247
    new-instance v1, Ljavax/swing/JMenuItem;

    const-string v2, "Delete"

    invoke-direct {v1, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 250
    iget-object v2, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_popup:Ljavax/swing/JPopupMenu;

    invoke-virtual {v2, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 253
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrTbl:Ljavax/swing/JTable;

    new-instance v2, Lorg/apache/ldap/server/db/gui/AddEntryDialog$PopupListener;

    invoke-direct {v2, v0}, Lorg/apache/ldap/server/db/gui/AddEntryDialog$PopupListener;-><init>(Lorg/apache/ldap/server/db/gui/AddEntryDialog;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JTable;->addMouseListener(Ljava/awt/event/MouseListener;)V

    .line 255
    iget-object v1, v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrTbl:Ljavax/swing/JTable;

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->setUpEditor(Ljavax/swing/JTable;)V

    return-void
.end method

.method private setUpEditor(Ljavax/swing/JTable;)V
    .locals 2

    .line 262
    new-instance v0, Ljavax/swing/JTextField;

    invoke-direct {v0}, Ljavax/swing/JTextField;-><init>()V

    .line 266
    new-instance v1, Lorg/apache/ldap/server/db/gui/AddEntryDialog$3;

    invoke-direct {v1, p0, v0, v0}, Lorg/apache/ldap/server/db/gui/AddEntryDialog$3;-><init>(Lorg/apache/ldap/server/db/gui/AddEntryDialog;Ljavax/swing/JTextField;Ljavax/swing/JTextField;)V

    .line 280
    sget-object v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "java.lang.String"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->class$0:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    invoke-virtual {p1, v0, v1}, Ljavax/swing/JTable;->setDefaultEditor(Ljava/lang/Class;Ljavax/swing/table/TableCellEditor;)V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3

    .line 311
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object p1

    .line 313
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrTbl:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v0

    .line 312
    check-cast v0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;

    .line 314
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_attrTbl:Ljavax/swing/JTable;

    invoke-virtual {v1}, Ljavax/swing/JTable;->getSelectedRow()I

    move-result v1

    .line 315
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0}, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->getRowCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    if-gez v1, :cond_1

    .line 320
    :cond_0
    const-string v2, "Row needs to be selected to apply operation"

    .line 319
    invoke-static {p0, v2}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 323
    :cond_1
    const-string v2, "Add"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    const-string p1, "xxxx"

    invoke-virtual {v0, v1, p1, p1}, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->insert(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 327
    :cond_2
    const-string v2, "Delete"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 329
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->delete(I)V

    goto :goto_0

    .line 334
    :cond_3
    const-string p1, "Unrecognized action - abandoning action processing."

    .line 333
    invoke-static {p0, p1}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getChildDn()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_dnText:Ljavax/swing/JTextField;

    invoke-virtual {v0}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildEntry()Ljavax/naming/directory/Attributes;
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_childEntry:Ljavax/naming/directory/Attributes;

    return-object v0
.end method

.method public setParentDn(Ljava/lang/String;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->m_dnText:Ljavax/swing/JTextField;

    invoke-virtual {v0, p1}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    return-void
.end method
