.class Lorg/apache/asn1/codec/stateful/DecoderStack$1;
.super Ljava/lang/Object;
.source "DecoderStack.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/DecoderCallback;


# instance fields
.field private final synthetic this$0:Lorg/apache/asn1/codec/stateful/DecoderStack;


# direct methods
.method constructor <init>(Lorg/apache/asn1/codec/stateful/DecoderStack;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/apache/asn1/codec/stateful/DecoderStack$1;->this$0:Lorg/apache/asn1/codec/stateful/DecoderStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Object;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/DecoderStack$1;->this$0:Lorg/apache/asn1/codec/stateful/DecoderStack;

    invoke-virtual {p1, p2}, Lorg/apache/asn1/codec/stateful/DecoderStack;->decodeOccurred(Ljava/lang/Object;)V

    return-void
.end method
