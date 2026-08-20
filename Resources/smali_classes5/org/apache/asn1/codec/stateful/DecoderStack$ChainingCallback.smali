.class Lorg/apache/asn1/codec/stateful/DecoderStack$ChainingCallback;
.super Ljava/lang/Object;
.source "DecoderStack.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/DecoderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/asn1/codec/stateful/DecoderStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChainingCallback"
.end annotation


# instance fields
.field private sink:Lorg/apache/asn1/codec/stateful/StatefulDecoder;

.field private src:Lorg/apache/asn1/codec/stateful/StatefulDecoder;

.field private final synthetic this$0:Lorg/apache/asn1/codec/stateful/DecoderStack;


# direct methods
.method constructor <init>(Lorg/apache/asn1/codec/stateful/DecoderStack;Lorg/apache/asn1/codec/stateful/StatefulDecoder;Lorg/apache/asn1/codec/stateful/StatefulDecoder;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lorg/apache/asn1/codec/stateful/DecoderStack$ChainingCallback;->this$0:Lorg/apache/asn1/codec/stateful/DecoderStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lorg/apache/asn1/codec/stateful/DecoderStack$ChainingCallback;->src:Lorg/apache/asn1/codec/stateful/StatefulDecoder;

    .line 179
    iput-object p3, p0, Lorg/apache/asn1/codec/stateful/DecoderStack$ChainingCallback;->sink:Lorg/apache/asn1/codec/stateful/StatefulDecoder;

    return-void
.end method


# virtual methods
.method public decodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Object;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/DecoderStack$ChainingCallback;->src:Lorg/apache/asn1/codec/stateful/StatefulDecoder;

    if-eq p1, v0, :cond_0

    return-void

    .line 201
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/DecoderStack$ChainingCallback;->sink:Lorg/apache/asn1/codec/stateful/StatefulDecoder;

    invoke-interface {p1, p2}, Lorg/apache/asn1/codec/stateful/StatefulDecoder;->decode(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/asn1/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 205
    iget-object p2, p0, Lorg/apache/asn1/codec/stateful/DecoderStack$ChainingCallback;->this$0:Lorg/apache/asn1/codec/stateful/DecoderStack;

    invoke-virtual {p2}, Lorg/apache/asn1/codec/stateful/DecoderStack;->getDecoderMonitor()Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 207
    iget-object p2, p0, Lorg/apache/asn1/codec/stateful/DecoderStack$ChainingCallback;->this$0:Lorg/apache/asn1/codec/stateful/DecoderStack;

    invoke-virtual {p2}, Lorg/apache/asn1/codec/stateful/DecoderStack;->getDecoderMonitor()Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/DecoderStack$ChainingCallback;->this$0:Lorg/apache/asn1/codec/stateful/DecoderStack;

    invoke-interface {p2, v0, p1}, Lorg/apache/asn1/codec/stateful/DecoderMonitor;->fatalError(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Exception;)V

    .line 210
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
