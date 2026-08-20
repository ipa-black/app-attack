.class public Lorg/apache/asn1/codec/stateful/CallbackHistory;
.super Ljava/lang/Object;
.source "CallbackHistory.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/DecoderCallback;
.implements Lorg/apache/asn1/codec/stateful/EncoderCallback;


# instance fields
.field private final history:Ljava/util/LinkedList;

.field private final length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 46
    invoke-direct {p0, v0}, Lorg/apache/asn1/codec/stateful/CallbackHistory;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->length:I

    .line 62
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->history:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->history:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public decodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Object;)V
    .locals 1

    .line 72
    iget p1, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->length:I

    if-lez p1, :cond_0

    .line 74
    :goto_0
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->history:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v0, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->length:I

    if-lt p1, v0, :cond_0

    .line 76
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->history:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->history:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public encodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Object;)V
    .locals 1

    .line 92
    iget p1, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->length:I

    if-lez p1, :cond_0

    .line 94
    :goto_0
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->history:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v0, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->length:I

    if-lt p1, v0, :cond_0

    .line 96
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->history:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->history:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public getMostRecent()Ljava/lang/Object;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->history:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOldest()Ljava/lang/Object;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->history:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->history:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/CallbackHistory;->history:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
