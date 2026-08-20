.class Lorg/apache/asn1/ber/TupleTreeAnalyzer$3;
.super Ljava/lang/Object;
.source "TupleTreeAnalyzer.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/asn1/ber/TupleTreeAnalyzer;

.field private final synthetic val$fc:Ljavax/swing/JFileChooser;


# direct methods
.method constructor <init>(Lorg/apache/asn1/ber/TupleTreeAnalyzer;Ljavax/swing/JFileChooser;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$3;->this$0:Lorg/apache/asn1/ber/TupleTreeAnalyzer;

    iput-object p2, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$3;->val$fc:Ljavax/swing/JFileChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 196
    iget-object p1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$3;->val$fc:Ljavax/swing/JFileChooser;

    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$3;->this$0:Lorg/apache/asn1/ber/TupleTreeAnalyzer;

    invoke-virtual {p1, v0}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    return-void
.end method
