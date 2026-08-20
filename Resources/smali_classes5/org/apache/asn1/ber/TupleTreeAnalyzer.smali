.class public Lorg/apache/asn1/ber/TupleTreeAnalyzer;
.super Ljavax/swing/JFrame;
.source "TupleTreeAnalyzer.java"

# interfaces
.implements Ljavax/swing/event/TreeSelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;
    }
.end annotation


# instance fields
.field private doVmExit:Z

.field private jLabel1:Ljavax/swing/JLabel;

.field private jLabel2:Ljavax/swing/JLabel;

.field private jLabel3:Ljavax/swing/JLabel;

.field private jPanel1:Ljavax/swing/JPanel;

.field private jPanel2:Ljavax/swing/JPanel;

.field private jPanel3:Ljavax/swing/JPanel;

.field private jPanel4:Ljavax/swing/JPanel;

.field private jPanel5:Ljavax/swing/JPanel;

.field private jScrollPane1:Ljavax/swing/JScrollPane;

.field private jScrollPane2:Ljavax/swing/JScrollPane;

.field private jSplitPane1:Ljavax/swing/JSplitPane;

.field private jTextArea1:Ljavax/swing/JTextArea;

.field private jTextField1:Ljavax/swing/JTextField;

.field private jTextField2:Ljavax/swing/JTextField;

.field private jTextField3:Ljavax/swing/JTextField;

.field private jTree1:Ljavax/swing/JTree;

.field private layout:Ljava/awt/BorderLayout;

.field private root:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

.field private statusBar:Ljavax/swing/JLabel;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljavax/swing/JFrame;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->doVmExit:Z

    .line 70
    new-instance v0, Ljava/awt/BorderLayout;

    invoke-direct {v0}, Ljava/awt/BorderLayout;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->layout:Ljava/awt/BorderLayout;

    .line 71
    new-instance v0, Ljavax/swing/JLabel;

    const-string v1, "Ready"

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->statusBar:Ljavax/swing/JLabel;

    .line 72
    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0}, Ljavax/swing/JSplitPane;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jSplitPane1:Ljavax/swing/JSplitPane;

    .line 73
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane1:Ljavax/swing/JScrollPane;

    .line 74
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel1:Ljavax/swing/JPanel;

    .line 75
    new-instance v0, Ljavax/swing/JTree;

    invoke-direct {v0}, Ljavax/swing/JTree;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTree1:Ljavax/swing/JTree;

    .line 76
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel2:Ljavax/swing/JPanel;

    .line 77
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel5:Ljavax/swing/JPanel;

    .line 78
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel3:Ljavax/swing/JPanel;

    .line 79
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel4:Ljavax/swing/JPanel;

    .line 80
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel1:Ljavax/swing/JLabel;

    .line 81
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel3:Ljavax/swing/JLabel;

    .line 82
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel2:Ljavax/swing/JLabel;

    .line 83
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane2:Ljavax/swing/JScrollPane;

    .line 84
    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextArea1:Ljavax/swing/JTextArea;

    .line 85
    new-instance v0, Ljavax/swing/JTextField;

    invoke-direct {v0}, Ljavax/swing/JTextField;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField1:Ljavax/swing/JTextField;

    .line 86
    new-instance v0, Ljavax/swing/JTextField;

    invoke-direct {v0}, Ljavax/swing/JTextField;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField3:Ljavax/swing/JTextField;

    .line 87
    new-instance v0, Ljavax/swing/JTextField;

    invoke-direct {v0}, Ljavax/swing/JTextField;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField2:Ljavax/swing/JTextField;

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->root:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 121
    new-instance v0, Lorg/apache/asn1/ber/TupleTreeDecoder;

    invoke-direct {v0}, Lorg/apache/asn1/ber/TupleTreeDecoder;-><init>()V

    .line 122
    new-instance v1, Lorg/apache/asn1/codec/stateful/CallbackHistory;

    invoke-direct {v1}, Lorg/apache/asn1/codec/stateful/CallbackHistory;-><init>()V

    .line 123
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/TupleTreeDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    .line 124
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/TupleTreeDecoder;->decode(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v1}, Lorg/apache/asn1/codec/stateful/CallbackHistory;->getMostRecent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    iput-object p1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->root:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 127
    invoke-direct {p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->initGUI()V

    .line 128
    invoke-virtual {p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->pack()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljavax/swing/JFrame;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->doVmExit:Z

    .line 70
    new-instance v0, Ljava/awt/BorderLayout;

    invoke-direct {v0}, Ljava/awt/BorderLayout;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->layout:Ljava/awt/BorderLayout;

    .line 71
    new-instance v0, Ljavax/swing/JLabel;

    const-string v1, "Ready"

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->statusBar:Ljavax/swing/JLabel;

    .line 72
    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0}, Ljavax/swing/JSplitPane;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jSplitPane1:Ljavax/swing/JSplitPane;

    .line 73
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane1:Ljavax/swing/JScrollPane;

    .line 74
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel1:Ljavax/swing/JPanel;

    .line 75
    new-instance v0, Ljavax/swing/JTree;

    invoke-direct {v0}, Ljavax/swing/JTree;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTree1:Ljavax/swing/JTree;

    .line 76
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel2:Ljavax/swing/JPanel;

    .line 77
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel5:Ljavax/swing/JPanel;

    .line 78
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel3:Ljavax/swing/JPanel;

    .line 79
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel4:Ljavax/swing/JPanel;

    .line 80
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel1:Ljavax/swing/JLabel;

    .line 81
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel3:Ljavax/swing/JLabel;

    .line 82
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel2:Ljavax/swing/JLabel;

    .line 83
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane2:Ljavax/swing/JScrollPane;

    .line 84
    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextArea1:Ljavax/swing/JTextArea;

    .line 85
    new-instance v0, Ljavax/swing/JTextField;

    invoke-direct {v0}, Ljavax/swing/JTextField;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField1:Ljavax/swing/JTextField;

    .line 86
    new-instance v0, Ljavax/swing/JTextField;

    invoke-direct {v0}, Ljavax/swing/JTextField;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField3:Ljavax/swing/JTextField;

    .line 87
    new-instance v0, Ljavax/swing/JTextField;

    invoke-direct {v0}, Ljavax/swing/JTextField;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField2:Ljavax/swing/JTextField;

    .line 95
    iput-object p1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->root:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 97
    invoke-direct {p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->initGUI()V

    .line 98
    invoke-virtual {p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->pack()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Z)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljavax/swing/JFrame;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->doVmExit:Z

    .line 70
    new-instance v0, Ljava/awt/BorderLayout;

    invoke-direct {v0}, Ljava/awt/BorderLayout;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->layout:Ljava/awt/BorderLayout;

    .line 71
    new-instance v0, Ljavax/swing/JLabel;

    const-string v1, "Ready"

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->statusBar:Ljavax/swing/JLabel;

    .line 72
    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0}, Ljavax/swing/JSplitPane;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jSplitPane1:Ljavax/swing/JSplitPane;

    .line 73
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane1:Ljavax/swing/JScrollPane;

    .line 74
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel1:Ljavax/swing/JPanel;

    .line 75
    new-instance v0, Ljavax/swing/JTree;

    invoke-direct {v0}, Ljavax/swing/JTree;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTree1:Ljavax/swing/JTree;

    .line 76
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel2:Ljavax/swing/JPanel;

    .line 77
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel5:Ljavax/swing/JPanel;

    .line 78
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel3:Ljavax/swing/JPanel;

    .line 79
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel4:Ljavax/swing/JPanel;

    .line 80
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel1:Ljavax/swing/JLabel;

    .line 81
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel3:Ljavax/swing/JLabel;

    .line 82
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel2:Ljavax/swing/JLabel;

    .line 83
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane2:Ljavax/swing/JScrollPane;

    .line 84
    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextArea1:Ljavax/swing/JTextArea;

    .line 85
    new-instance v0, Ljavax/swing/JTextField;

    invoke-direct {v0}, Ljavax/swing/JTextField;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField1:Ljavax/swing/JTextField;

    .line 86
    new-instance v0, Ljavax/swing/JTextField;

    invoke-direct {v0}, Ljavax/swing/JTextField;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField3:Ljavax/swing/JTextField;

    .line 87
    new-instance v0, Ljavax/swing/JTextField;

    invoke-direct {v0}, Ljavax/swing/JTextField;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField2:Ljavax/swing/JTextField;

    .line 105
    iput-object p1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->root:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 106
    iput-boolean p2, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->doVmExit:Z

    .line 108
    invoke-direct {p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->initGUI()V

    .line 109
    invoke-virtual {p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->pack()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 115
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>([Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljavax/swing/JFrame;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->doVmExit:Z

    .line 70
    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->layout:Ljava/awt/BorderLayout;

    .line 71
    new-instance v1, Ljavax/swing/JLabel;

    const-string v2, "Ready"

    invoke-direct {v1, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->statusBar:Ljavax/swing/JLabel;

    .line 72
    new-instance v1, Ljavax/swing/JSplitPane;

    invoke-direct {v1}, Ljavax/swing/JSplitPane;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jSplitPane1:Ljavax/swing/JSplitPane;

    .line 73
    new-instance v1, Ljavax/swing/JScrollPane;

    invoke-direct {v1}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane1:Ljavax/swing/JScrollPane;

    .line 74
    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel1:Ljavax/swing/JPanel;

    .line 75
    new-instance v1, Ljavax/swing/JTree;

    invoke-direct {v1}, Ljavax/swing/JTree;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTree1:Ljavax/swing/JTree;

    .line 76
    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel2:Ljavax/swing/JPanel;

    .line 77
    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel5:Ljavax/swing/JPanel;

    .line 78
    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel3:Ljavax/swing/JPanel;

    .line 79
    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel4:Ljavax/swing/JPanel;

    .line 80
    new-instance v1, Ljavax/swing/JLabel;

    invoke-direct {v1}, Ljavax/swing/JLabel;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel1:Ljavax/swing/JLabel;

    .line 81
    new-instance v1, Ljavax/swing/JLabel;

    invoke-direct {v1}, Ljavax/swing/JLabel;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel3:Ljavax/swing/JLabel;

    .line 82
    new-instance v1, Ljavax/swing/JLabel;

    invoke-direct {v1}, Ljavax/swing/JLabel;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel2:Ljavax/swing/JLabel;

    .line 83
    new-instance v1, Ljavax/swing/JScrollPane;

    invoke-direct {v1}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane2:Ljavax/swing/JScrollPane;

    .line 84
    new-instance v1, Ljavax/swing/JTextArea;

    invoke-direct {v1}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextArea1:Ljavax/swing/JTextArea;

    .line 85
    new-instance v1, Ljavax/swing/JTextField;

    invoke-direct {v1}, Ljavax/swing/JTextField;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField1:Ljavax/swing/JTextField;

    .line 86
    new-instance v1, Ljavax/swing/JTextField;

    invoke-direct {v1}, Ljavax/swing/JTextField;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField3:Ljavax/swing/JTextField;

    .line 87
    new-instance v1, Ljavax/swing/JTextField;

    invoke-direct {v1}, Ljavax/swing/JTextField;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField2:Ljavax/swing/JTextField;

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->root:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 134
    new-instance v1, Lorg/apache/asn1/ber/TupleTreeDecoder;

    invoke-direct {v1}, Lorg/apache/asn1/ber/TupleTreeDecoder;-><init>()V

    .line 135
    new-instance v2, Lorg/apache/asn1/codec/stateful/CallbackHistory;

    invoke-direct {v2}, Lorg/apache/asn1/codec/stateful/CallbackHistory;-><init>()V

    .line 136
    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/TupleTreeDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    .line 138
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 140
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/asn1/ber/TupleTreeDecoder;->decode(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v2}, Lorg/apache/asn1/codec/stateful/CallbackHistory;->getMostRecent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    iput-object p1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->root:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 145
    invoke-direct {p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->initGUI()V

    .line 146
    invoke-virtual {p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->pack()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/asn1/ber/TupleTreeAnalyzer;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->doVmExit:Z

    return p0
.end method

.method static synthetic access$100(Lorg/apache/asn1/ber/TupleTreeAnalyzer;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->hexDumpTupleTree()V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/asn1/ber/TupleTreeAnalyzer;Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->exitForm(Ljava/awt/event/WindowEvent;)V

    return-void
.end method

.method public static analyze(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 469
    new-instance v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;

    invoke-direct {v0, p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 470
    invoke-virtual {v0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->startup()V

    return-void
.end method

.method public static analyze([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 462
    new-instance v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;

    invoke-direct {v0, p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;-><init>([B)V

    .line 463
    invoke-virtual {v0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->startup()V

    return-void
.end method

.method private exitForm(Ljava/awt/event/WindowEvent;)V
    .locals 3

    .line 331
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Closed window: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/awt/event/WindowEvent;->getWindow()Ljava/awt/Window;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/Window;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    iget-boolean p1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->doVmExit:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 335
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method public static getHexDump(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1

    .line 454
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 455
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 456
    new-instance p0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/asn1/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private hexDumpTupleTree()V
    .locals 0

    return-void
.end method

.method private initGUI()V
    .locals 25

    move-object/from16 v0, p0

    .line 154
    invoke-virtual/range {p0 .. p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->layout:Ljava/awt/BorderLayout;

    invoke-virtual {v1, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 155
    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    .line 156
    new-instance v2, Ljava/awt/Dimension;

    const/16 v3, 0x12c

    const/16 v4, 0xc8

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "Center"

    invoke-virtual {v2, v1, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 159
    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->setTitle(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->statusBar:Ljavax/swing/JLabel;

    const-string v5, "South"

    invoke-virtual {v2, v4, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 163
    new-instance v2, Ljavax/swing/JMenuBar;

    invoke-direct {v2}, Ljavax/swing/JMenuBar;-><init>()V

    .line 164
    new-instance v4, Ljavax/swing/JMenu;

    const-string v5, "File"

    invoke-direct {v4, v5}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x46

    .line 165
    invoke-virtual {v4, v5}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 167
    new-instance v5, Ljavax/swing/JMenuItem;

    const-string v6, "Exit"

    invoke-direct {v5, v6}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x45

    .line 168
    invoke-virtual {v5, v6}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 169
    new-instance v6, Lorg/apache/asn1/ber/TupleTreeAnalyzer$1;

    invoke-direct {v6, v0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer$1;-><init>(Lorg/apache/asn1/ber/TupleTreeAnalyzer;)V

    invoke-virtual {v5, v6}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 179
    new-instance v6, Ljavax/swing/JMenu;

    const-string v7, "Help"

    invoke-direct {v6, v7}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x48

    .line 180
    invoke-virtual {v6, v7}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 181
    new-instance v7, Ljavax/swing/JMenuItem;

    const-string v8, "About"

    invoke-direct {v7, v8}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x41

    .line 182
    invoke-virtual {v7, v8}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 183
    new-instance v8, Lorg/apache/asn1/ber/TupleTreeAnalyzer$2;

    invoke-direct {v8, v0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer$2;-><init>(Lorg/apache/asn1/ber/TupleTreeAnalyzer;)V

    invoke-virtual {v7, v8}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 188
    invoke-virtual {v6, v7}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 190
    new-instance v7, Ljavax/swing/JFileChooser;

    invoke-direct {v7}, Ljavax/swing/JFileChooser;-><init>()V

    .line 191
    new-instance v8, Ljavax/swing/JMenuItem;

    const-string v9, "Open"

    invoke-direct {v8, v9}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x4f

    .line 192
    invoke-virtual {v8, v9}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 193
    new-instance v9, Lorg/apache/asn1/ber/TupleTreeAnalyzer$3;

    invoke-direct {v9, v0, v7}, Lorg/apache/asn1/ber/TupleTreeAnalyzer$3;-><init>(Lorg/apache/asn1/ber/TupleTreeAnalyzer;Ljavax/swing/JFileChooser;)V

    invoke-virtual {v8, v9}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 205
    invoke-virtual {v4, v8}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 207
    new-instance v8, Ljavax/swing/JMenuItem;

    const-string v9, "Save"

    invoke-direct {v8, v9}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x53

    .line 208
    invoke-virtual {v8, v9}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 209
    new-instance v9, Lorg/apache/asn1/ber/TupleTreeAnalyzer$4;

    invoke-direct {v9, v0, v7}, Lorg/apache/asn1/ber/TupleTreeAnalyzer$4;-><init>(Lorg/apache/asn1/ber/TupleTreeAnalyzer;Ljavax/swing/JFileChooser;)V

    invoke-virtual {v8, v9}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 221
    invoke-virtual {v4, v8}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 223
    new-instance v7, Ljavax/swing/JMenuItem;

    const-string v8, "Print"

    invoke-direct {v7, v8}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x50

    .line 224
    invoke-virtual {v7, v8}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 225
    new-instance v8, Lorg/apache/asn1/ber/TupleTreeAnalyzer$5;

    invoke-direct {v8, v0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer$5;-><init>(Lorg/apache/asn1/ber/TupleTreeAnalyzer;)V

    invoke-virtual {v7, v8}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 230
    invoke-virtual {v4, v7}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 231
    invoke-virtual {v4, v5}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 232
    invoke-virtual {v2, v4}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 233
    invoke-virtual {v2, v6}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 235
    invoke-virtual {v0, v2}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 236
    new-instance v2, Lorg/apache/asn1/ber/TupleTreeAnalyzer$6;

    invoke-direct {v2, v0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer$6;-><init>(Lorg/apache/asn1/ber/TupleTreeAnalyzer;)V

    invoke-virtual {v0, v2}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 244
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel3:Ljavax/swing/JLabel;

    const-string v4, "Type Class:"

    invoke-virtual {v2, v4}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 245
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel5:Ljavax/swing/JPanel;

    new-instance v4, Ljava/awt/FlowLayout;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/awt/FlowLayout;-><init>(I)V

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 246
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel5:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel3:Ljavax/swing/JLabel;

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 247
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel5:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField3:Ljavax/swing/JTextField;

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 248
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField3:Ljavax/swing/JTextField;

    invoke-virtual {v2, v1}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 249
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField3:Ljavax/swing/JTextField;

    new-instance v4, Ljava/awt/Dimension;

    const/16 v6, 0xb8

    const/16 v7, 0x19

    invoke-direct {v4, v6, v7}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v2, v4}, Ljavax/swing/JTextField;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 250
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField3:Ljavax/swing/JTextField;

    new-instance v4, Ljava/awt/Dimension;

    invoke-direct {v4, v6, v7}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v2, v4}, Ljavax/swing/JTextField;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 251
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jSplitPane1:Ljavax/swing/JSplitPane;

    const/16 v4, 0x32

    invoke-virtual {v2, v4}, Ljavax/swing/JSplitPane;->setLastDividerLocation(I)V

    .line 252
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jSplitPane1:Ljavax/swing/JSplitPane;

    const/16 v4, 0xb4

    invoke-virtual {v2, v4}, Ljavax/swing/JSplitPane;->setDividerLocation(I)V

    .line 253
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jSplitPane1:Ljavax/swing/JSplitPane;

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane1:Ljavax/swing/JScrollPane;

    const-string v6, "left"

    invoke-virtual {v2, v4, v6}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 254
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jSplitPane1:Ljavax/swing/JSplitPane;

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel1:Ljavax/swing/JPanel;

    const-string v6, "right"

    invoke-virtual {v2, v4, v6}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 255
    new-instance v2, Lorg/apache/asn1/ber/TupleTreeAnalyzer$7;

    invoke-direct {v2, v0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer$7;-><init>(Lorg/apache/asn1/ber/TupleTreeAnalyzer;)V

    invoke-virtual {v0, v2}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jSplitPane1:Ljavax/swing/JSplitPane;

    invoke-virtual {v2, v4, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 262
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane1:Ljavax/swing/JScrollPane;

    invoke-virtual {v2}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v2

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTree1:Ljavax/swing/JTree;

    invoke-virtual {v2, v4}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 263
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTree1:Ljavax/swing/JTree;

    new-instance v4, Ljava/awt/Rectangle;

    const/16 v6, 0x55

    const/16 v8, 0x54

    const/16 v9, 0x5f

    invoke-direct {v4, v9, v9, v6, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v2, v4}, Ljavax/swing/JTree;->setBounds(Ljava/awt/Rectangle;)V

    .line 264
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTree1:Ljavax/swing/JTree;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljavax/swing/JTree;->setShowsRootHandles(Z)V

    .line 265
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel1:Ljavax/swing/JPanel;

    new-instance v6, Ljava/awt/GridBagLayout;

    invoke-direct {v6}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v2, v6}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 266
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel1:Ljavax/swing/JPanel;

    iget-object v6, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel2:Ljavax/swing/JPanel;

    new-instance v15, Ljava/awt/GridBagConstraints;

    new-instance v13, Ljava/awt/Insets;

    const/16 v14, 0x9

    invoke-direct {v13, v5, v14, v5, v14}, Ljava/awt/Insets;-><init>(IIII)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v22, 0x11

    const/16 v23, 0x2

    move-object v8, v15

    move-object/from16 v24, v13

    move v7, v14

    move-wide/from16 v13, v16

    move-object v4, v15

    move-wide/from16 v15, v18

    move/from16 v17, v22

    move/from16 v18, v23

    move-object/from16 v19, v24

    invoke-direct/range {v8 .. v21}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    invoke-virtual {v2, v6, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 271
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel1:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel3:Ljavax/swing/JPanel;

    new-instance v6, Ljava/awt/GridBagConstraints;

    new-instance v15, Ljava/awt/Insets;

    invoke-direct {v15, v5, v7, v5, v7}, Ljava/awt/Insets;-><init>(IIII)V

    const/4 v10, 0x1

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const/16 v18, 0x11

    const/16 v19, 0x2

    move-object v8, v6

    move-object/from16 v22, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v22

    invoke-direct/range {v8 .. v21}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    invoke-virtual {v2, v4, v6}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 276
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel1:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel4:Ljavax/swing/JPanel;

    new-instance v6, Ljava/awt/GridBagConstraints;

    new-instance v15, Ljava/awt/Insets;

    const/16 v8, 0xc

    invoke-direct {v15, v7, v8, v7, v8}, Ljava/awt/Insets;-><init>(IIII)V

    const/4 v10, 0x3

    const/16 v12, 0x23

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const/16 v18, 0xa

    const/16 v19, 0x1

    move-object v8, v6

    move-object/from16 v22, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v22

    invoke-direct/range {v8 .. v21}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    invoke-virtual {v2, v4, v6}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 281
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel1:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel5:Ljavax/swing/JPanel;

    new-instance v6, Ljava/awt/GridBagConstraints;

    new-instance v15, Ljava/awt/Insets;

    invoke-direct {v15, v5, v7, v5, v7}, Ljava/awt/Insets;-><init>(IIII)V

    const/4 v10, 0x2

    const/4 v12, 0x1

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const/16 v7, 0x11

    const/16 v18, 0x2

    move-object v8, v6

    move-object/from16 v19, v15

    move-wide/from16 v15, v16

    move/from16 v17, v7

    invoke-direct/range {v8 .. v21}, Ljava/awt/GridBagConstraints;-><init>(IIIIDDIILjava/awt/Insets;II)V

    invoke-virtual {v2, v4, v6}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 286
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel1:Ljavax/swing/JLabel;

    const-string v4, "Tag Id:"

    invoke-virtual {v2, v4}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 287
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel2:Ljavax/swing/JPanel;

    new-instance v4, Ljava/awt/FlowLayout;

    invoke-direct {v4, v5}, Ljava/awt/FlowLayout;-><init>(I)V

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 288
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel2:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel1:Ljavax/swing/JLabel;

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 289
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel2:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField1:Ljavax/swing/JTextField;

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 290
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel2:Ljavax/swing/JLabel;

    const-string v4, "Length:"

    invoke-virtual {v2, v4}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 291
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel3:Ljavax/swing/JPanel;

    new-instance v4, Ljava/awt/FlowLayout;

    invoke-direct {v4, v5}, Ljava/awt/FlowLayout;-><init>(I)V

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 292
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel3:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jLabel2:Ljavax/swing/JLabel;

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 293
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel3:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField2:Ljavax/swing/JTextField;

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 294
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel4:Ljavax/swing/JPanel;

    new-instance v4, Ljava/awt/BorderLayout;

    invoke-direct {v4}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 295
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel4:Ljavax/swing/JPanel;

    new-instance v4, Ljava/awt/Color;

    const/16 v6, 0x99

    invoke-direct {v4, v6, v6, v6}, Ljava/awt/Color;-><init>(III)V

    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v7

    new-instance v11, Ljava/awt/Font;

    const-string v4, "Comic Sans MS"

    const/16 v6, 0xe

    invoke-direct {v11, v4, v5, v6}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    new-instance v12, Ljava/awt/Color;

    const/16 v4, 0x3c

    invoke-direct {v12, v4, v4, v4}, Ljava/awt/Color;-><init>(III)V

    const-string v8, "Value"

    const/4 v9, 0x4

    invoke-static/range {v7 .. v12}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljavax/swing/border/Border;Ljava/lang/String;IILjava/awt/Font;Ljava/awt/Color;)Ljavax/swing/border/TitledBorder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 302
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jPanel4:Ljavax/swing/JPanel;

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane2:Ljavax/swing/JScrollPane;

    invoke-virtual {v2, v4, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 303
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextArea1:Ljavax/swing/JTextArea;

    invoke-virtual {v2, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 304
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane2:Ljavax/swing/JScrollPane;

    invoke-virtual {v2}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextArea1:Ljavax/swing/JTextArea;

    invoke-virtual {v2, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 305
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField1:Ljavax/swing/JTextField;

    invoke-virtual {v2, v1}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 306
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField1:Ljavax/swing/JTextField;

    new-instance v3, Ljava/awt/Dimension;

    const/16 v4, 0xa4

    const/16 v5, 0x19

    invoke-direct {v3, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v2, v3}, Ljavax/swing/JTextField;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 307
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField1:Ljavax/swing/JTextField;

    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v2, v3}, Ljavax/swing/JTextField;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 308
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField1:Ljavax/swing/JTextField;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/swing/JTextField;->setEditable(Z)V

    .line 309
    iget-object v2, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField2:Ljavax/swing/JTextField;

    invoke-virtual {v2, v1}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 310
    iget-object v1, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField2:Ljavax/swing/JTextField;

    new-instance v2, Ljava/awt/Dimension;

    invoke-direct {v2, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JTextField;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 311
    iget-object v1, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField2:Ljavax/swing/JTextField;

    new-instance v2, Ljava/awt/Dimension;

    invoke-direct {v2, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JTextField;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 312
    iget-object v1, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField2:Ljavax/swing/JTextField;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/swing/JTextField;->setEditable(Z)V

    .line 313
    iget-object v1, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane2:Ljavax/swing/JScrollPane;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Ljavax/swing/JScrollPane;->setVerticalScrollBarPolicy(I)V

    .line 315
    iget-object v1, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane2:Ljavax/swing/JScrollPane;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljavax/swing/JScrollPane;->setHorizontalScrollBarPolicy(I)V

    .line 317
    iget-object v1, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jScrollPane2:Ljavax/swing/JScrollPane;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/swing/JScrollPane;->setBorder(Ljavax/swing/border/Border;)V

    .line 319
    iget-object v1, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTree1:Ljavax/swing/JTree;

    new-instance v2, Ljavax/swing/tree/DefaultTreeModel;

    new-instance v3, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;

    iget-object v4, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->root:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-direct {v3, v0, v4}, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;-><init>(Lorg/apache/asn1/ber/TupleTreeAnalyzer;Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    invoke-direct {v2, v3}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    .line 321
    iget-object v1, v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTree1:Ljavax/swing/JTree;

    invoke-virtual {v1}, Ljavax/swing/JTree;->getSelectionModel()Ljavax/swing/tree/TreeSelectionModel;

    move-result-object v1

    invoke-interface {v1, v0}, Ljavax/swing/tree/TreeSelectionModel;->addTreeSelectionListener(Ljavax/swing/event/TreeSelectionListener;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 548
    new-instance p0, Ljavax/swing/JFileChooser;

    const-string v0, "."

    invoke-direct {p0, v0}, Ljavax/swing/JFileChooser;-><init>(Ljava/lang/String;)V

    .line 549
    new-instance v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$8;

    invoke-direct {v0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer$8;-><init>()V

    invoke-virtual {p0, v0}, Ljavax/swing/JFileChooser;->setFileFilter(Ljavax/swing/filechooser/FileFilter;)V

    const/4 v0, 0x0

    .line 562
    invoke-virtual {p0, v0}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    .line 563
    invoke-virtual {p0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 567
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    const/4 v1, -0x1

    .line 574
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 578
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 579
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 582
    :goto_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 586
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 588
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 593
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 594
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 600
    :cond_1
    :try_start_2
    new-instance v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;-><init>([B)V

    .line 601
    invoke-virtual {v0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->startup()V
    :try_end_2
    .catch Lorg/apache/asn1/codec/DecoderException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 605
    invoke-virtual {p0}, Lorg/apache/asn1/codec/DecoderException;->printStackTrace()V

    .line 606
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public startup()V
    .locals 4

    const/16 v0, 0x320

    const/16 v1, 0x280

    .line 342
    invoke-virtual {p0, v0, v1}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->setSize(II)V

    .line 343
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 344
    invoke-virtual {p0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->getSize()Ljava/awt/Dimension;

    move-result-object v1

    .line 345
    iget v2, v1, Ljava/awt/Dimension;->height:I

    iget v3, v0, Ljava/awt/Dimension;->height:I

    if-le v2, v3, :cond_0

    iget v2, v0, Ljava/awt/Dimension;->height:I

    goto :goto_0

    :cond_0
    iget v2, v1, Ljava/awt/Dimension;->height:I

    :goto_0
    iput v2, v1, Ljava/awt/Dimension;->height:I

    .line 347
    iget v2, v1, Ljava/awt/Dimension;->width:I

    iget v3, v0, Ljava/awt/Dimension;->width:I

    if-le v2, v3, :cond_1

    iget v2, v0, Ljava/awt/Dimension;->width:I

    goto :goto_1

    :cond_1
    iget v2, v1, Ljava/awt/Dimension;->width:I

    :goto_1
    iput v2, v1, Ljava/awt/Dimension;->width:I

    .line 349
    iget v2, v0, Ljava/awt/Dimension;->width:I

    iget v3, v1, Ljava/awt/Dimension;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v0, v0, Ljava/awt/Dimension;->height:I

    iget v1, v1, Ljava/awt/Dimension;->height:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2, v0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->setLocation(II)V

    const/4 v0, 0x1

    .line 351
    invoke-virtual {p0, v0}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->setVisible(Z)V

    return-void
.end method

.method public valueChanged(Ljavax/swing/event/TreeSelectionEvent;)V
    .locals 8

    .line 357
    invoke-virtual {p1}, Ljavax/swing/event/TreeSelectionEvent;->getPath()Ljavax/swing/tree/TreePath;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;

    .line 360
    invoke-virtual {p1}, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->getTupleNode()Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    move-result-object p1

    .line 361
    invoke-interface {p1}, Lorg/apache/asn1/ber/TupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object p1

    .line 363
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getRawTag()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    invoke-static {v0}, Lorg/apache/asn1/ber/TypeClass;->getTypeClass(I)Lorg/apache/asn1/ber/TypeClass;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField3:Ljavax/swing/JTextField;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TypeClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getLength()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 369
    iget-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField2:Ljavax/swing/JTextField;

    const-string v2, "INDEFINITE"

    invoke-virtual {v1, v2}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_0
    iget-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField2:Ljavax/swing/JTextField;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 376
    :goto_0
    sget-object v1, Lorg/apache/asn1/ber/TypeClass;->UNIVERSAL:Lorg/apache/asn1/ber/TypeClass;

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/TypeClass;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getRawTag()I

    move-result v1

    invoke-static {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getUniversalTag(I)Lorg/apache/asn1/ber/primitives/UniversalTag;

    move-result-object v1

    .line 379
    iget-object v2, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField1:Ljavax/swing/JTextField;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 383
    :cond_1
    iget-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextField1:Ljavax/swing/JTextField;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 386
    :goto_1
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 388
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getLastValueChunk()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 389
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v3, v2, [B

    .line 390
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 392
    iget-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextArea1:Ljavax/swing/JTextArea;

    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/asn1/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 395
    sget-object v1, Lorg/apache/asn1/ber/TypeClass;->UNIVERSAL:Lorg/apache/asn1/ber/TypeClass;

    const-string v4, "Boolean: "

    const-string v5, "Numeric: "

    const-string v6, "String: "

    const/4 v7, 0x0

    if-ne v0, v1, :cond_5

    .line 397
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getRawTag()I

    move-result p1

    invoke-static {p1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getUniversalTag(I)Lorg/apache/asn1/ber/primitives/UniversalTag;

    move-result-object p1

    .line 400
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    if-eq p1, v0, :cond_4

    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->INTEGER:Lorg/apache/asn1/ber/primitives/UniversalTag;

    if-ne p1, v0, :cond_2

    goto :goto_2

    .line 407
    :cond_2
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->BOOLEAN:Lorg/apache/asn1/ber/primitives/UniversalTag;

    if-ne p1, v0, :cond_3

    .line 409
    aget-byte p1, v3, v7

    invoke-static {p1}, Lorg/apache/asn1/ber/primitives/PrimitiveUtils;->berDecodeBoolean(B)Z

    move-result p1

    .line 410
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextArea1:Ljavax/swing/JTextArea;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/swing/JTextArea;->setToolTipText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 415
    :cond_3
    iget-object p1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextArea1:Ljavax/swing/JTextArea;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/swing/JTextArea;->setToolTipText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 403
    :cond_4
    :goto_2
    invoke-static {v3, v7, v2}, Lorg/apache/asn1/ber/primitives/PrimitiveUtils;->decodeInt([BII)I

    move-result p1

    .line 404
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextArea1:Ljavax/swing/JTextArea;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/swing/JTextArea;->setToolTipText(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    const/4 p1, 0x4

    if-le v2, p1, :cond_6

    .line 423
    iget-object p1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextArea1:Ljavax/swing/JTextArea;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/swing/JTextArea;->setToolTipText(Ljava/lang/String;)V

    return-void

    .line 428
    :cond_6
    invoke-static {v3, v7, v2}, Lorg/apache/asn1/ber/primitives/PrimitiveUtils;->decodeInt([BII)I

    move-result p1

    .line 429
    aget-byte v0, v3, v7

    invoke-static {v0}, Lorg/apache/asn1/ber/primitives/PrimitiveUtils;->berDecodeBoolean(B)Z

    move-result v0

    .line 430
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 431
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 432
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 433
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextArea1:Ljavax/swing/JTextArea;

    invoke-virtual {v0, p1}, Ljavax/swing/JTextArea;->setToolTipText(Ljava/lang/String;)V

    goto :goto_3

    .line 438
    :cond_7
    iget-object p1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextArea1:Ljavax/swing/JTextArea;

    const-string v0, "N/A"

    invoke-virtual {p1, v0}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 439
    iget-object p1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->jTextArea1:Ljavax/swing/JTextArea;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/swing/JTextArea;->setToolTipText(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
