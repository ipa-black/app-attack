.class Lorg/apache/asn1/ber/TupleTreeAnalyzer$1;
.super Ljava/lang/Object;
.source "TupleTreeAnalyzer.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/asn1/ber/TupleTreeAnalyzer;


# direct methods
.method constructor <init>(Lorg/apache/asn1/ber/TupleTreeAnalyzer;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$1;->this$0:Lorg/apache/asn1/ber/TupleTreeAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 0

    .line 172
    iget-object p1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$1;->this$0:Lorg/apache/asn1/ber/TupleTreeAnalyzer;

    invoke-static {p1}, Lorg/apache/asn1/ber/TupleTreeAnalyzer;->access$000(Lorg/apache/asn1/ber/TupleTreeAnalyzer;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 174
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method
