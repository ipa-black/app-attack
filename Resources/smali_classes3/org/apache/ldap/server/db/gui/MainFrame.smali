.class public Lorg/apache/ldap/server/db/gui/MainFrame;
.super Ljavax/swing/JFrame;
.source "MainFrame.java"


# static fields
.field private static final serialVersionUID:J = 0x3832313130363139L


# instance fields
.field private annotate:Ljavax/swing/JMenuItem;

.field private database:Lorg/apache/ldap/server/db/Database;

.field private debug:Ljavax/swing/JMenuItem;

.field private doCleanUp:Z

.field private eng:Lorg/apache/ldap/server/db/SearchEngine;

.field private entryPane:Ljavax/swing/JScrollPane;

.field private entryPnl:Ljavax/swing/JPanel;

.field private entryTbl:Ljavax/swing/JTable;

.field private idxPane:Ljavax/swing/JScrollPane;

.field private idxPnl:Ljavax/swing/JPanel;

.field private idxTbl:Ljavax/swing/JTable;

.field private indices:Ljavax/swing/JMenu;

.field private mainPnl:Ljavax/swing/JPanel;

.field private nodes:Ljava/util/HashMap;

.field private root:Lorg/apache/ldap/server/db/gui/EntryNode;

.field private run:Ljavax/swing/JMenuItem;

.field private searchMenu:Ljavax/swing/JMenu;

.field private splitPane:Ljavax/swing/JSplitPane;

.field private statusBar:Ljavax/swing/JLabel;

.field private tabbedPane:Ljavax/swing/JTabbedPane;

.field private tree:Ljavax/swing/JTree;

.field private treePane:Ljavax/swing/JScrollPane;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/SearchEngine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljavax/swing/JFrame;-><init>()V

    .line 72
    new-instance v0, Ljavax/swing/JLabel;

    const-string v1, "Ready"

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->statusBar:Ljavax/swing/JLabel;

    .line 73
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->mainPnl:Ljavax/swing/JPanel;

    .line 74
    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0}, Ljavax/swing/JSplitPane;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->splitPane:Ljavax/swing/JSplitPane;

    .line 75
    new-instance v0, Ljavax/swing/JTabbedPane;

    invoke-direct {v0}, Ljavax/swing/JTabbedPane;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tabbedPane:Ljavax/swing/JTabbedPane;

    .line 76
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->entryPnl:Ljavax/swing/JPanel;

    .line 77
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->idxPnl:Ljavax/swing/JPanel;

    .line 78
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->treePane:Ljavax/swing/JScrollPane;

    .line 79
    new-instance v0, Ljavax/swing/JTree;

    invoke-direct {v0}, Ljavax/swing/JTree;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    .line 80
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->entryPane:Ljavax/swing/JScrollPane;

    .line 81
    new-instance v0, Ljavax/swing/JTable;

    invoke-direct {v0}, Ljavax/swing/JTable;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->entryTbl:Ljavax/swing/JTable;

    .line 82
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->idxPane:Ljavax/swing/JScrollPane;

    .line 83
    new-instance v0, Ljavax/swing/JTable;

    invoke-direct {v0}, Ljavax/swing/JTable;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->idxTbl:Ljavax/swing/JTable;

    .line 84
    new-instance v0, Ljavax/swing/JMenu;

    invoke-direct {v0}, Ljavax/swing/JMenu;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->searchMenu:Ljavax/swing/JMenu;

    .line 85
    new-instance v0, Ljavax/swing/JMenuItem;

    invoke-direct {v0}, Ljavax/swing/JMenuItem;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->annotate:Ljavax/swing/JMenuItem;

    .line 86
    new-instance v0, Ljavax/swing/JMenuItem;

    invoke-direct {v0}, Ljavax/swing/JMenuItem;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->run:Ljavax/swing/JMenuItem;

    .line 87
    new-instance v0, Ljavax/swing/JMenuItem;

    invoke-direct {v0}, Ljavax/swing/JMenuItem;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->debug:Ljavax/swing/JMenuItem;

    .line 88
    new-instance v0, Ljavax/swing/JMenu;

    invoke-direct {v0}, Ljavax/swing/JMenu;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->indices:Ljavax/swing/JMenu;

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    const/4 v1, 0x0

    .line 92
    iput-boolean v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->doCleanUp:Z

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->nodes:Ljava/util/HashMap;

    .line 94
    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->root:Lorg/apache/ldap/server/db/gui/EntryNode;

    .line 104
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    .line 105
    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->eng:Lorg/apache/ldap/server/db/SearchEngine;

    .line 107
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/MainFrame;->initGUI()V

    .line 108
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/gui/MainFrame;->buildIndicesMenu(Lorg/apache/ldap/server/db/Database;)V

    .line 109
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/MainFrame;->pack()V

    .line 110
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/MainFrame;->load()V

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/db/gui/MainFrame;)V
    .locals 0

    .line 471
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/MainFrame;->exitForm()V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/ldap/server/db/gui/MainFrame;Ljava/awt/Window;)V
    .locals 0

    .line 312
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/gui/MainFrame;->centerOnScreen(Ljava/awt/Window;)V

    return-void
.end method

.method private centerOnScreen(Ljava/awt/Window;)V
    .locals 4

    .line 314
    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 315
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v1

    .line 317
    iget v2, v0, Ljava/awt/Dimension;->height:I

    iget v3, v1, Ljava/awt/Dimension;->height:I

    if-le v2, v3, :cond_0

    .line 318
    iget v2, v1, Ljava/awt/Dimension;->height:I

    goto :goto_0

    :cond_0
    iget v2, v0, Ljava/awt/Dimension;->height:I

    .line 317
    :goto_0
    iput v2, v0, Ljava/awt/Dimension;->height:I

    .line 319
    iget v2, v0, Ljava/awt/Dimension;->width:I

    iget v3, v1, Ljava/awt/Dimension;->width:I

    if-le v2, v3, :cond_1

    .line 320
    iget v2, v1, Ljava/awt/Dimension;->width:I

    goto :goto_1

    :cond_1
    iget v2, v0, Ljava/awt/Dimension;->width:I

    .line 319
    :goto_1
    iput v2, v0, Ljava/awt/Dimension;->width:I

    .line 321
    iget v2, v1, Ljava/awt/Dimension;->width:I

    iget v3, v0, Ljava/awt/Dimension;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 322
    iget v1, v1, Ljava/awt/Dimension;->height:I

    iget v0, v0, Ljava/awt/Dimension;->height:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 321
    invoke-virtual {p1, v2, v1}, Ljava/awt/Window;->setLocation(II)V

    return-void
.end method

.method private exitForm()V
    .locals 2

    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/gui/MainFrame;->setEnabled(Z)V

    .line 474
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/gui/MainFrame;->setVisible(Z)V

    .line 475
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/MainFrame;->dispose()V

    .line 477
    iget-boolean v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->doCleanUp:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    if-eqz v1, :cond_0

    .line 481
    :try_start_0
    invoke-interface {v1}, Lorg/apache/ldap/server/db/Database;->sync()V

    .line 482
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v1}, Lorg/apache/ldap/server/db/Database;->close()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 486
    invoke-virtual {v1}, Ljavax/naming/NamingException;->printStackTrace()V

    .line 489
    :goto_0
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method private initGUI()V
    .locals 8

    .line 119
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->mainPnl:Ljavax/swing/JPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 120
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->mainPnl:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 121
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->mainPnl:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->splitPane:Ljavax/swing/JSplitPane;

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->splitPane:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tabbedPane:Ljavax/swing/JTabbedPane;

    const-string v3, "right"

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->splitPane:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->treePane:Ljavax/swing/JScrollPane;

    const-string v3, "left"

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tabbedPane:Ljavax/swing/JTabbedPane;

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->entryPnl:Ljavax/swing/JPanel;

    const-string v3, "Entry Attributes"

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JTabbedPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tabbedPane:Ljavax/swing/JTabbedPane;

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->idxPnl:Ljavax/swing/JPanel;

    const-string v3, "Entry Indices"

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JTabbedPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->entryPnl:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 128
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->entryPnl:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->entryPane:Ljavax/swing/JScrollPane;

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->idxPnl:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 131
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->idxPnl:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->idxPane:Ljavax/swing/JScrollPane;

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/MainFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 134
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    .line 135
    new-instance v1, Ljava/awt/Dimension;

    const/16 v3, 0x31e

    const/16 v4, 0x1cd

    invoke-direct {v1, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 136
    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 137
    invoke-static {}, Ljavax/swing/BorderFactory;->createEtchedBorder()Ljavax/swing/border/Border;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 138
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->mainPnl:Ljavax/swing/JPanel;

    const-string v3, "North"

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/MainFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 141
    const-string v0, "Backend DB Viewer"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/gui/MainFrame;->setTitle(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/MainFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->statusBar:Ljavax/swing/JLabel;

    const-string v2, "South"

    invoke-virtual {v0, v1, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 145
    new-instance v0, Ljavax/swing/JMenuBar;

    invoke-direct {v0}, Ljavax/swing/JMenuBar;-><init>()V

    .line 151
    new-instance v1, Ljavax/swing/JMenu;

    const-string v2, "Backend"

    invoke-direct {v1, v2}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    .line 153
    new-instance v2, Ljava/awt/Color;

    const/16 v3, 0xcd

    invoke-direct {v2, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->setBackground(Ljava/awt/Color;)V

    const/16 v2, 0x42

    .line 154
    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 157
    new-instance v2, Ljavax/swing/JMenuItem;

    const-string v4, "Add"

    invoke-direct {v2, v4}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    const/16 v4, 0x41

    .line 159
    invoke-virtual {v2, v4}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 160
    new-instance v5, Ljava/awt/Color;

    invoke-direct {v5, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {v2, v5}, Ljavax/swing/JMenuItem;->setBackground(Ljava/awt/Color;)V

    .line 161
    new-instance v5, Lorg/apache/ldap/server/db/gui/MainFrame$1;

    invoke-direct {v5, p0}, Lorg/apache/ldap/server/db/gui/MainFrame$1;-><init>(Lorg/apache/ldap/server/db/gui/MainFrame;)V

    invoke-virtual {v2, v5}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 170
    new-instance v2, Ljavax/swing/JMenuItem;

    const-string v5, "Import"

    invoke-direct {v2, v5}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    const/16 v5, 0x49

    .line 172
    invoke-virtual {v2, v5}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 173
    new-instance v5, Ljava/awt/Color;

    invoke-direct {v5, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {v2, v5}, Ljavax/swing/JMenuItem;->setBackground(Ljava/awt/Color;)V

    .line 174
    new-instance v5, Lorg/apache/ldap/server/db/gui/MainFrame$2;

    invoke-direct {v5, p0}, Lorg/apache/ldap/server/db/gui/MainFrame$2;-><init>(Lorg/apache/ldap/server/db/gui/MainFrame;)V

    invoke-virtual {v2, v5}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 183
    new-instance v2, Ljavax/swing/JMenuItem;

    const-string v5, "Exit"

    invoke-direct {v2, v5}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    const/16 v5, 0x45

    .line 185
    invoke-virtual {v2, v5}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 186
    new-instance v5, Ljava/awt/Color;

    invoke-direct {v5, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {v2, v5}, Ljavax/swing/JMenuItem;->setBackground(Ljava/awt/Color;)V

    .line 187
    new-instance v5, Lorg/apache/ldap/server/db/gui/MainFrame$3;

    invoke-direct {v5, p0}, Lorg/apache/ldap/server/db/gui/MainFrame$3;-><init>(Lorg/apache/ldap/server/db/gui/MainFrame;)V

    invoke-virtual {v2, v5}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 196
    new-instance v2, Ljavax/swing/JMenu;

    const-string v5, "Help"

    invoke-direct {v2, v5}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x48

    .line 197
    invoke-virtual {v2, v5}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 198
    new-instance v5, Ljavax/swing/JMenuItem;

    const-string v6, "About"

    invoke-direct {v5, v6}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v5, v4}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 200
    new-instance v4, Ljava/awt/Color;

    invoke-direct {v4, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {v5, v4}, Ljavax/swing/JMenuItem;->setBackground(Ljava/awt/Color;)V

    .line 201
    new-instance v4, Lorg/apache/ldap/server/db/gui/MainFrame$4;

    invoke-direct {v4, p0}, Lorg/apache/ldap/server/db/gui/MainFrame$4;-><init>(Lorg/apache/ldap/server/db/gui/MainFrame;)V

    invoke-virtual {v5, v4}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 211
    new-instance v4, Ljava/awt/Color;

    invoke-direct {v4, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {v2, v4}, Ljavax/swing/JMenu;->setBackground(Ljava/awt/Color;)V

    .line 212
    invoke-virtual {v2, v5}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 216
    new-instance v4, Ljava/awt/Color;

    const/16 v5, 0xc5

    const/16 v6, 0xcb

    const/16 v7, 0xc4

    invoke-direct {v4, v7, v5, v6}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {v0, v4}, Ljavax/swing/JMenuBar;->setBackground(Ljava/awt/Color;)V

    .line 217
    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 218
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->searchMenu:Ljavax/swing/JMenu;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 219
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->indices:Ljavax/swing/JMenu;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 220
    invoke-virtual {v0, v2}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 222
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/gui/MainFrame;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 223
    new-instance v0, Ljava/awt/Rectangle;

    const/4 v1, 0x0

    const/16 v2, 0x322

    const/16 v4, 0x203

    invoke-direct {v0, v1, v1, v2, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/gui/MainFrame;->setBounds(Ljava/awt/Rectangle;)V

    .line 224
    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, v2, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/gui/MainFrame;->setSize(Ljava/awt/Dimension;)V

    const/4 v0, 0x1

    .line 225
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/gui/MainFrame;->setResizable(Z)V

    .line 227
    new-instance v1, Lorg/apache/ldap/server/db/gui/MainFrame$5;

    invoke-direct {v1, p0}, Lorg/apache/ldap/server/db/gui/MainFrame$5;-><init>(Lorg/apache/ldap/server/db/gui/MainFrame;)V

    invoke-virtual {p0, v1}, Lorg/apache/ldap/server/db/gui/MainFrame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 235
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->treePane:Ljavax/swing/JScrollPane;

    invoke-virtual {v1}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    invoke-virtual {v1, v2}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 236
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    new-instance v2, Ljava/awt/Rectangle;

    const/16 v4, 0x52

    const/16 v5, 0x50

    const/4 v6, 0x6

    const/16 v7, 0xb8

    invoke-direct {v2, v6, v7, v4, v5}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v1, v2}, Ljavax/swing/JTree;->setBounds(Ljava/awt/Rectangle;)V

    .line 237
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    invoke-virtual {v1, v0}, Ljavax/swing/JTree;->setShowsRootHandles(Z)V

    .line 238
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    const-string v2, "DB DIT"

    invoke-virtual {v1, v2}, Ljavax/swing/JTree;->setToolTipText(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    invoke-virtual {v1, v0}, Ljavax/swing/JTree;->setScrollsOnExpand(Z)V

    .line 240
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    invoke-virtual {v0}, Ljavax/swing/JTree;->getSelectionModel()Ljavax/swing/tree/TreeSelectionModel;

    move-result-object v0

    .line 241
    new-instance v1, Lorg/apache/ldap/server/db/gui/MainFrame$6;

    invoke-direct {v1, p0}, Lorg/apache/ldap/server/db/gui/MainFrame$6;-><init>(Lorg/apache/ldap/server/db/gui/MainFrame;)V

    .line 240
    invoke-interface {v0, v1}, Ljavax/swing/tree/TreeSelectionModel;->addTreeSelectionListener(Ljavax/swing/event/TreeSelectionListener;)V

    .line 268
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->entryPane:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->entryTbl:Ljavax/swing/JTable;

    invoke-virtual {v0, v1}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 269
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->entryTbl:Ljavax/swing/JTable;

    new-instance v1, Ljava/awt/Rectangle;

    const/16 v2, 0x141

    const/16 v4, 0x67

    const/16 v5, 0x20

    invoke-direct {v1, v2, v4, v5, v5}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTable;->setBounds(Ljava/awt/Rectangle;)V

    .line 271
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->idxPane:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->idxTbl:Ljavax/swing/JTable;

    invoke-virtual {v0, v1}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 272
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->idxTbl:Ljavax/swing/JTable;

    new-instance v1, Ljava/awt/Rectangle;

    const/16 v2, 0x1ad

    const/16 v4, 0x86

    invoke-direct {v1, v2, v4, v5, v5}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTable;->setBounds(Ljava/awt/Rectangle;)V

    .line 274
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->treePane:Ljavax/swing/JScrollPane;

    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x1b3

    const/16 v4, 0x11d

    invoke-direct {v1, v4, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setSize(Ljava/awt/Dimension;)V

    .line 275
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->treePane:Ljavax/swing/JScrollPane;

    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x193

    invoke-direct {v1, v4, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 276
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->searchMenu:Ljavax/swing/JMenu;

    const-string v1, "Search"

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->searchMenu:Ljavax/swing/JMenu;

    new-instance v1, Ljava/awt/Color;

    invoke-direct {v1, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->setBackground(Ljava/awt/Color;)V

    .line 278
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->searchMenu:Ljavax/swing/JMenu;

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->run:Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 279
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->searchMenu:Ljavax/swing/JMenu;

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->debug:Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 280
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->searchMenu:Ljavax/swing/JMenu;

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->annotate:Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 282
    new-instance v0, Lorg/apache/ldap/server/db/gui/MainFrame$7;

    invoke-direct {v0, p0}, Lorg/apache/ldap/server/db/gui/MainFrame$7;-><init>(Lorg/apache/ldap/server/db/gui/MainFrame;)V

    .line 292
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->annotate:Ljavax/swing/JMenuItem;

    const-string v2, "Annotate"

    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->annotate:Ljavax/swing/JMenuItem;

    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->annotate:Ljavax/swing/JMenuItem;

    new-instance v2, Ljava/awt/Color;

    invoke-direct {v2, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->setBackground(Ljava/awt/Color;)V

    .line 295
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->annotate:Ljavax/swing/JMenuItem;

    invoke-virtual {v1, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 297
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->run:Ljavax/swing/JMenuItem;

    const-string v2, "Run"

    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->run:Ljavax/swing/JMenuItem;

    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->run:Ljavax/swing/JMenuItem;

    new-instance v2, Ljava/awt/Color;

    invoke-direct {v2, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->setBackground(Ljava/awt/Color;)V

    .line 300
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->run:Ljavax/swing/JMenuItem;

    invoke-virtual {v1, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 302
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->debug:Ljavax/swing/JMenuItem;

    const-string v2, "Debug"

    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->debug:Ljavax/swing/JMenuItem;

    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->debug:Ljavax/swing/JMenuItem;

    new-instance v2, Ljava/awt/Color;

    invoke-direct {v2, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->setBackground(Ljava/awt/Color;)V

    .line 305
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->debug:Ljavax/swing/JMenuItem;

    invoke-virtual {v1, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 307
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->indices:Ljavax/swing/JMenu;

    const-string v1, "Indices"

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->indices:Ljavax/swing/JMenu;

    new-instance v1, Ljava/awt/Color;

    invoke-direct {v1, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->setBackground(Ljava/awt/Color;)V

    return-void
.end method

.method private load()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 866
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->nodes:Ljava/util/HashMap;

    .line 868
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getSuffixEntry()Ljavax/naming/directory/Attributes;

    move-result-object v5

    .line 869
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    .line 870
    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getSuffix()Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 869
    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    .line 871
    new-instance v0, Lorg/apache/ldap/server/db/gui/EntryNode;

    iget-object v4, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    iget-object v6, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->nodes:Ljava/util/HashMap;

    const/4 v3, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/ldap/server/db/gui/EntryNode;-><init>(Ljava/math/BigInteger;Lorg/apache/ldap/server/db/gui/EntryNode;Lorg/apache/ldap/server/db/Database;Ljavax/naming/directory/Attributes;Ljava/util/HashMap;)V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->root:Lorg/apache/ldap/server/db/gui/EntryNode;

    .line 925
    new-instance v0, Ljavax/swing/tree/DefaultTreeModel;

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->root:Lorg/apache/ldap/server/db/gui/EntryNode;

    invoke-direct {v0, v1}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V

    .line 926
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    invoke-virtual {v1, v0}, Ljavax/swing/JTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    .line 928
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/MainFrame;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    invoke-virtual {v0}, Ljavax/swing/JTree;->validate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public buildIndicesMenu(Lorg/apache/ldap/server/db/Database;)V
    .locals 6

    .line 805
    new-instance v0, Lorg/apache/ldap/server/db/gui/MainFrame$9;

    invoke-direct {v0, p0}, Lorg/apache/ldap/server/db/gui/MainFrame$9;-><init>(Lorg/apache/ldap/server/db/gui/MainFrame;)V

    .line 820
    invoke-interface {p1}, Lorg/apache/ldap/server/db/Database;->getSystemIndices()Ljava/util/Iterator;

    move-result-object v1

    .line 821
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0xcd

    if-nez v2, :cond_1

    .line 832
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->indices:Ljavax/swing/JMenu;

    new-instance v2, Ljavax/swing/JSeparator;

    invoke-direct {v2}, Ljavax/swing/JSeparator;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 833
    invoke-interface {p1}, Lorg/apache/ldap/server/db/Database;->getUserIndices()Ljava/util/Iterator;

    move-result-object v2

    .line 834
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 836
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 837
    new-instance v1, Ljavax/swing/JMenuItem;

    invoke-direct {v1}, Ljavax/swing/JMenuItem;-><init>()V

    .line 838
    new-instance v4, Ljava/awt/Color;

    invoke-direct {v4, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {v1, v4}, Ljavax/swing/JMenuItem;->setBackground(Ljava/awt/Color;)V

    .line 839
    iget-object v4, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->indices:Ljavax/swing/JMenu;

    invoke-virtual {v4, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 840
    invoke-virtual {v1, p1}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v1, p1}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v1, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    goto :goto_1

    .line 823
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 824
    new-instance v4, Ljavax/swing/JMenuItem;

    invoke-direct {v4}, Ljavax/swing/JMenuItem;-><init>()V

    .line 825
    new-instance v5, Ljava/awt/Color;

    invoke-direct {v5, v3, v3, v3}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {v4, v5}, Ljavax/swing/JMenuItem;->setBackground(Ljava/awt/Color;)V

    .line 826
    iget-object v3, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->indices:Ljavax/swing/JMenu;

    invoke-virtual {v3, v4}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 827
    invoke-virtual {v4, v2}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v4, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v4, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    goto :goto_0
.end method

.method displayEntry(Ljava/math/BigInteger;Ljavax/naming/directory/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Database;->getEntryUpdn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    .line 852
    new-instance v1, Lorg/apache/ldap/server/db/gui/AttributesTableModel;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v0, v2}, Lorg/apache/ldap/server/db/gui/AttributesTableModel;-><init>(Ljavax/naming/directory/Attributes;Ljava/math/BigInteger;Ljava/lang/String;Z)V

    .line 853
    iget-object p2, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->entryTbl:Ljavax/swing/JTable;

    invoke-virtual {p2, v1}, Ljavax/swing/JTable;->setModel(Ljavax/swing/table/TableModel;)V

    .line 855
    new-instance p2, Lorg/apache/ldap/server/db/gui/AttributesTableModel;

    .line 856
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v1, p1}, Lorg/apache/ldap/server/db/Database;->getIndices(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object v1

    .line 855
    invoke-direct {p2, v1, p1, v0, v2}, Lorg/apache/ldap/server/db/gui/AttributesTableModel;-><init>(Ljavax/naming/directory/Attributes;Ljava/math/BigInteger;Ljava/lang/String;Z)V

    .line 857
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->idxTbl:Ljavax/swing/JTable;

    invoke-virtual {p1, p2}, Ljavax/swing/JTable;->setModel(Ljavax/swing/table/TableModel;)V

    .line 859
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/MainFrame;->validate()V

    return-void
.end method

.method public doAddDialog()V
    .locals 3

    .line 333
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    invoke-virtual {v0}, Ljavax/swing/JTree;->getSelectionModel()Ljavax/swing/tree/TreeSelectionModel;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/tree/TreeSelectionModel;->getSelectionPath()Ljavax/swing/tree/TreePath;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v1}, Lorg/apache/ldap/server/db/Database;->getSuffix()Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v0

    .line 340
    instance-of v2, v0, Lorg/apache/ldap/server/db/gui/EntryNode;

    if-eqz v2, :cond_0

    .line 342
    check-cast v0, Lorg/apache/ldap/server/db/gui/EntryNode;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/gui/EntryNode;->getEntryDn()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 349
    const-string v0, "Must select a parent entry to add a child to!"

    .line 348
    invoke-static {p0, v0}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;)V

    return-void

    .line 353
    :cond_1
    new-instance v0, Lorg/apache/ldap/server/db/gui/AddEntryDialog;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;-><init>(Ljava/awt/Frame;Z)V

    .line 354
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->setParentDn(Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, v0}, Lorg/apache/ldap/server/db/gui/MainFrame;->centerOnScreen(Ljava/awt/Window;)V

    const/4 v1, 0x1

    .line 357
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->setEnabled(Z)V

    .line 358
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/AddEntryDialog;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public doAnnotate(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 733
    new-instance v0, Lorg/apache/ldap/common/filter/FilterParserImpl;

    invoke-direct {v0}, Lorg/apache/ldap/common/filter/FilterParserImpl;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 738
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/ldap/common/filter/FilterParser;->parse(Ljava/lang/String;)Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    new-instance v3, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;

    .line 757
    invoke-direct {v3, p0, v2}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;-><init>(Ljava/awt/Frame;Z)V

    .line 759
    invoke-virtual {v3, p1}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->setFilter(Ljava/lang/String;)V

    .line 761
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->eng:Lorg/apache/ldap/server/db/SearchEngine;

    invoke-interface {p1}, Lorg/apache/ldap/server/db/SearchEngine;->getOptimizer()Lorg/apache/ldap/server/db/Optimizer;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/ldap/server/db/Optimizer;->annotate(Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 762
    new-instance p1, Lorg/apache/ldap/server/db/gui/ASTNode;

    invoke-direct {p1, v1, v0}, Lorg/apache/ldap/server/db/gui/ASTNode;-><init>(Lorg/apache/ldap/server/db/gui/ASTNode;Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 763
    new-instance v0, Ljavax/swing/tree/DefaultTreeModel;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;Z)V

    .line 764
    invoke-virtual {v3, v0}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->setModel(Ljavax/swing/tree/TreeModel;)V

    .line 765
    invoke-virtual {v3, v1}, Lorg/apache/ldap/server/db/gui/AnnotatedFilterTreeDialog;->setVisible(Z)V

    return v1

    :catch_0
    move-exception p1

    .line 742
    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    .line 743
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 745
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_0

    .line 747
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, "\n. . . truncated . . ."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 750
    :cond_0
    invoke-virtual {v0, p1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0, v2}, Ljavax/swing/JTextArea;->setEnabled(Z)V

    .line 752
    const-string p1, "Syntax Error"

    invoke-static {v1, v0, p1, v2}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    return v2
.end method

.method public doDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 690
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Search attempt using filter \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' with scope \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 691
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "\' and a return limit of \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 692
    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 690
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public doFilterDialog(Ljava/lang/String;)V
    .locals 3

    .line 536
    new-instance v0, Lorg/apache/ldap/server/db/gui/FilterDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lorg/apache/ldap/server/db/gui/FilterDialog;-><init>(Ljava/lang/String;Ljavax/swing/JFrame;Z)V

    .line 538
    iget-object v2, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    invoke-virtual {v2}, Ljavax/swing/JTree;->getSelectionModel()Ljavax/swing/tree/TreeSelectionModel;

    move-result-object v2

    invoke-interface {v2}, Ljavax/swing/tree/TreeSelectionModel;->getSelectionPath()Ljavax/swing/tree/TreePath;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 540
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/gui/MainFrame;->getSelectedDn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/db/gui/FilterDialog;->setBase(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_0
    iget-object v2, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v2}, Lorg/apache/ldap/server/db/Database;->getSuffix()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/db/gui/FilterDialog;->setBase(Ljava/lang/String;)V

    .line 547
    :goto_0
    new-instance v2, Lorg/apache/ldap/server/db/gui/MainFrame$8;

    invoke-direct {v2, p0, v0, p1}, Lorg/apache/ldap/server/db/gui/MainFrame$8;-><init>(Lorg/apache/ldap/server/db/gui/MainFrame;Lorg/apache/ldap/server/db/gui/FilterDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/db/gui/FilterDialog;->addActionListener(Ljava/awt/event/ActionListener;)V

    const/16 p1, 0x1c8

    const/16 v2, 0x100

    .line 573
    invoke-virtual {v0, p1, v2}, Lorg/apache/ldap/server/db/gui/FilterDialog;->setSize(II)V

    .line 574
    invoke-direct {p0, v0}, Lorg/apache/ldap/server/db/gui/MainFrame;->centerOnScreen(Ljava/awt/Window;)V

    .line 575
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->setEnabled(Z)V

    .line 576
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->setVisible(Z)V

    return-void
.end method

.method public doImport()V
    .locals 8

    .line 407
    const-string v0, "dn"

    .line 409
    new-instance v1, Lorg/apache/ldap/common/ldif/LdifParserImpl;

    invoke-direct {v1}, Lorg/apache/ldap/common/ldif/LdifParserImpl;-><init>()V

    .line 410
    new-instance v2, Ljavax/swing/JFileChooser;

    invoke-direct {v2}, Ljavax/swing/JFileChooser;-><init>()V

    .line 411
    invoke-virtual {v2, p0}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    move-result v3

    .line 412
    invoke-virtual {v2}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v2

    if-eqz v3, :cond_0

    return-void

    .line 421
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 422
    new-instance v2, Lorg/apache/ldap/common/ldif/LdifIterator;

    invoke-direct {v2, v3}, Lorg/apache/ldap/common/ldif/LdifIterator;-><init>(Ljava/io/Reader;)V

    .line 424
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lorg/apache/ldap/common/ldif/LdifIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 426
    :cond_2
    invoke-virtual {v2}, Lorg/apache/ldap/common/ldif/LdifIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 427
    new-instance v4, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v4}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    .line 428
    invoke-interface {v1, v4, v3}, Lorg/apache/ldap/common/ldif/LdifParser;->parse(Ljavax/naming/directory/Attributes;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v4, v0}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v3

    invoke-interface {v3}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 431
    new-instance v5, Lorg/apache/ldap/common/name/LdapName;

    invoke-static {v3}, Lorg/apache/ldap/common/util/StringTools;->deepTrimToLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v4, v0}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->remove(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    .line 434
    iget-object v6, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {v5}, Lorg/apache/ldap/common/name/LdapName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ldap/server/db/Database;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    if-nez v6, :cond_1

    .line 436
    iget-object v6, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v6, v3, v5, v4}, Lorg/apache/ldap/server/db/Database;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V

    .line 437
    invoke-direct {p0}, Lorg/apache/ldap/server/db/gui/MainFrame;->load()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 462
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_2
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void

    :catch_3
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljavax/naming/NamingException;->printStackTrace()V

    return-void
.end method

.method public doRun(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 584
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Search attempt using filter \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\' with scope \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 585
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\' and a return limit of \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 586
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 584
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 587
    new-instance v5, Lorg/apache/ldap/common/filter/FilterParserImpl;

    invoke-direct {v5}, Lorg/apache/ldap/common/filter/FilterParserImpl;-><init>()V

    const/4 v7, 0x0

    .line 592
    :try_start_0
    invoke-interface {v5, v0}, Lorg/apache/ldap/common/filter/FilterParser;->parse(Ljava/lang/String;)Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    new-instance v8, Ljavax/naming/directory/SearchControls;

    invoke-direct {v8}, Ljavax/naming/directory/SearchControls;-><init>()V

    .line 614
    const-string v9, "Base Object"

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v2, v9, :cond_0

    .line 616
    invoke-virtual {v8, v7}, Ljavax/naming/directory/SearchControls;->setSearchScope(I)V

    goto :goto_0

    .line 618
    :cond_0
    const-string v9, "Single Level"

    if-ne v2, v9, :cond_1

    .line 620
    invoke-virtual {v8, v11}, Ljavax/naming/directory/SearchControls;->setSearchScope(I)V

    goto :goto_0

    .line 622
    :cond_1
    const-string v9, "Subtree Level"

    if-ne v2, v9, :cond_8

    .line 624
    invoke-virtual {v8, v10}, Ljavax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 631
    :goto_0
    const-string v9, "Unlimited"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 633
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    :cond_2
    const v9, 0x7fffffff

    .line 636
    :goto_1
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    .line 638
    const-string v13, "java.naming.ldap.derefAliases"

    .line 639
    const-string v14, "always"

    .line 638
    invoke-virtual {v12, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v13, v1, Lorg/apache/ldap/server/db/gui/MainFrame;->eng:Lorg/apache/ldap/server/db/SearchEngine;

    new-instance v14, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v14, v3}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 642
    :try_start_1
    instance-of v15, v1, Ljavax/naming/Context;

    if-eqz v15, :cond_3

    instance-of v15, v1, Lorg/apache/ldap/server/ContextPartition;

    if-nez v15, :cond_3

    instance-of v15, v13, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz v15, :cond_3

    instance-of v15, v13, Lorg/apache/ldap/server/db/Database;

    if-nez v15, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v15

    move-object v6, v1

    check-cast v6, Ljavax/naming/Context;

    invoke-virtual {v15, v6}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    .line 641
    :cond_3
    invoke-interface {v13, v14, v12, v5, v8}, Lorg/apache/ldap/server/db/SearchEngine;->search(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    instance-of v8, v1, Ljavax/naming/Context;

    if-eqz v8, :cond_4

    instance-of v8, v1, Lorg/apache/ldap/server/ContextPartition;

    if-nez v8, :cond_4

    instance-of v8, v13, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz v8, :cond_4

    instance-of v8, v13, Lorg/apache/ldap/server/db/Database;

    if-nez v8, :cond_4

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v8

    move-object v12, v1

    check-cast v12, Ljavax/naming/Context;

    invoke-virtual {v8, v12}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    .line 643
    :cond_4
    new-array v8, v10, [Ljava/lang/String;

    .line 644
    const-string v12, "id"

    aput-object v12, v8, v7

    .line 645
    const-string v12, "dn"

    aput-object v12, v8, v11

    .line 646
    new-instance v12, Ljavax/swing/table/DefaultTableModel;

    invoke-direct {v12, v8, v7}, Ljavax/swing/table/DefaultTableModel;-><init>([Ljava/lang/Object;I)V

    .line 647
    new-array v8, v10, [Ljava/lang/Object;

    move v10, v7

    .line 649
    :goto_2
    invoke-interface {v6}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v13

    if-eqz v13, :cond_6

    if-lt v10, v9, :cond_5

    goto :goto_3

    .line 651
    :cond_5
    invoke-interface {v6}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ldap/server/db/IndexRecord;

    .line 652
    invoke-virtual {v13}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v13

    aput-object v13, v8, v7

    .line 653
    iget-object v14, v1, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    move-object v15, v13

    check-cast v15, Ljava/math/BigInteger;

    invoke-interface {v14, v13}, Lorg/apache/ldap/server/db/Database;->getEntryDn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v11

    .line 654
    invoke-virtual {v12, v8}, Ljavax/swing/table/DefaultTableModel;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 658
    :cond_6
    :goto_3
    new-instance v6, Lorg/apache/ldap/server/db/gui/SearchResultDialog;

    invoke-direct {v6, v1, v7}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;-><init>(Ljava/awt/Frame;Z)V

    .line 659
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "base: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    const-string v3, "\nscope: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    const-string v2, "\nlimit: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 668
    const-string v2, "\ntotal: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 671
    const-string v2, "\nfilter:\n"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 674
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 675
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->setFilter(Ljava/lang/String;)V

    .line 677
    new-instance v0, Lorg/apache/ldap/server/db/gui/ASTNode;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v5}, Lorg/apache/ldap/server/db/gui/ASTNode;-><init>(Lorg/apache/ldap/server/db/gui/ASTNode;Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 678
    new-instance v2, Ljavax/swing/tree/DefaultTreeModel;

    invoke-direct {v2, v0, v11}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;Z)V

    .line 679
    invoke-virtual {v6, v2}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->setTreeModel(Ljavax/swing/tree/TreeModel;)V

    .line 680
    invoke-virtual {v6, v12}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->setTableModel(Ljavax/swing/table/TableModel;)V

    .line 681
    invoke-direct {v1, v6}, Lorg/apache/ldap/server/db/gui/MainFrame;->centerOnScreen(Ljava/awt/Window;)V

    .line 682
    invoke-virtual {v6, v11}, Lorg/apache/ldap/server/db/gui/SearchResultDialog;->setVisible(Z)V

    return v11

    :catchall_0
    move-exception v0

    .line 641
    instance-of v2, v1, Ljavax/naming/Context;

    if-eqz v2, :cond_7

    instance-of v2, v1, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_7

    instance-of v2, v13, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz v2, :cond_7

    instance-of v2, v13, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_7

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_7
    throw v0

    .line 626
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Unexpected scope parameter: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 626
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 596
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 597
    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    .line 598
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_9

    .line 602
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "\n. . . truncated . . ."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 605
    :cond_9
    invoke-virtual {v0, v2}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v0, v7}, Ljavax/swing/JTextArea;->setEnabled(Z)V

    .line 607
    const-string v2, "Syntax Error"

    const/4 v3, 0x0

    invoke-static {v3, v0, v2, v7}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    return v7
.end method

.method public doRunDebugAnnotate(Lorg/apache/ldap/server/db/gui/FilterDialog;Ljava/lang/String;)V
    .locals 2

    .line 498
    :try_start_0
    const-string v0, "Run"

    if-ne p2, v0, :cond_0

    .line 500
    invoke-virtual {p1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->getFilter()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->getScope()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {p1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->getBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->getLimit()Ljava/lang/String;

    move-result-object p1

    .line 500
    invoke-virtual {p0, p2, v0, v1, p1}, Lorg/apache/ldap/server/db/gui/MainFrame;->doRun(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 503
    :cond_0
    const-string v0, "Debug"

    if-ne p2, v0, :cond_1

    .line 505
    invoke-virtual {p1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->getFilter()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->getScope()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-virtual {p1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->getBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->getLimit()Ljava/lang/String;

    move-result-object p1

    .line 505
    invoke-virtual {p0, p2, v0, v1, p1}, Lorg/apache/ldap/server/db/gui/MainFrame;->doDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_1
    const-string v0, "Annotate"

    if-ne p2, v0, :cond_2

    .line 510
    invoke-virtual {p1}, Lorg/apache/ldap/server/db/gui/FilterDialog;->getFilter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/gui/MainFrame;->doAnnotate(Ljava/lang/String;)Z

    return-void

    .line 523
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unrecognized mode."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 529
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getSelectedDn()Ljava/lang/String;
    .locals 2

    .line 375
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    invoke-virtual {v0}, Ljavax/swing/JTree;->getSelectionModel()Ljavax/swing/tree/TreeSelectionModel;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/tree/TreeSelectionModel;->getSelectionPath()Ljavax/swing/tree/TreePath;

    move-result-object v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getSuffix()Ljavax/naming/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 382
    :cond_0
    invoke-virtual {v0}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v0

    .line 385
    instance-of v1, v0, Lorg/apache/ldap/server/db/gui/EntryNode;

    if-eqz v1, :cond_1

    .line 389
    :try_start_0
    check-cast v0, Lorg/apache/ldap/server/db/gui/EntryNode;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/gui/EntryNode;->getEntryDn()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 393
    invoke-virtual {v0}, Ljavax/naming/NamingException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getSuffix()Ljavax/naming/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public selectTreeNode(Ljava/math/BigInteger;)V
    .locals 3

    .line 698
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    const/4 v1, 0x0

    .line 699
    check-cast v1, [Ljava/lang/Object;

    .line 700
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->nodes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/db/gui/EntryNode;

    :goto_0
    if-eqz p1, :cond_1

    .line 702
    invoke-interface {p1}, Ljavax/swing/tree/TreeNode;->getParent()Ljavax/swing/tree/TreeNode;

    move-result-object v1

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 704
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-interface {p1}, Ljavax/swing/tree/TreeNode;->getParent()Ljavax/swing/tree/TreeNode;

    move-result-object p1

    goto :goto_0

    .line 708
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 710
    new-array p1, p1, [Ljava/lang/Object;

    .line 711
    iget-object v2, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->root:Lorg/apache/ldap/server/db/gui/EntryNode;

    aput-object v2, p1, v1

    goto :goto_2

    .line 715
    :cond_2
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    .line 718
    :goto_2
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_4

    array-length v2, p1

    if-lt v1, v2, :cond_3

    goto :goto_3

    .line 720
    :cond_3
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 723
    :cond_4
    :goto_3
    new-instance v0, Ljavax/swing/tree/TreePath;

    invoke-direct {v0, p1}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    .line 724
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    invoke-virtual {p1, v0}, Ljavax/swing/JTree;->scrollPathToVisible(Ljavax/swing/tree/TreePath;)V

    .line 725
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    invoke-virtual {p1}, Ljavax/swing/JTree;->getSelectionModel()Ljavax/swing/tree/TreeSelectionModel;

    move-result-object p1

    invoke-interface {p1, v0}, Ljavax/swing/tree/TreeSelectionModel;->setSelectionPath(Ljavax/swing/tree/TreePath;)V

    .line 726
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->tree:Ljavax/swing/JTree;

    invoke-virtual {p1}, Ljavax/swing/JTree;->validate()V

    return-void
.end method

.method public showIndexDialog(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Database;->hasSystemIndexOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Database;->getSystemIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object p1

    goto :goto_0

    .line 788
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/MainFrame;->database:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Database;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 793
    new-instance v0, Lorg/apache/ldap/server/db/gui/IndexDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/ldap/server/db/gui/IndexDialog;-><init>(Ljava/awt/Frame;ZLorg/apache/ldap/server/db/Index;)V

    .line 794
    invoke-direct {p0, v0}, Lorg/apache/ldap/server/db/gui/MainFrame;->centerOnScreen(Ljava/awt/Window;)V

    const/4 p1, 0x1

    .line 795
    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/gui/IndexDialog;->setEnabled(Z)V

    .line 796
    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/gui/IndexDialog;->setVisible(Z)V

    :cond_1
    return-void
.end method
