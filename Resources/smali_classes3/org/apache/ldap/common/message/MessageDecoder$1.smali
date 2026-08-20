.class Lorg/apache/ldap/common/message/MessageDecoder$1;
.super Ljava/lang/Object;
.source "MessageDecoder.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/DecoderCallback;


# instance fields
.field private final synthetic this$0:Lorg/apache/ldap/common/message/MessageDecoder;


# direct methods
.method constructor <init>(Lorg/apache/ldap/common/message/MessageDecoder;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/apache/ldap/common/message/MessageDecoder$1;->this$0:Lorg/apache/ldap/common/message/MessageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Object;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageDecoder$1;->this$0:Lorg/apache/ldap/common/message/MessageDecoder;

    invoke-static {v0}, Lorg/apache/ldap/common/message/MessageDecoder;->access$100(Lorg/apache/ldap/common/message/MessageDecoder;)Lorg/apache/asn1/codec/stateful/DecoderCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ldap/common/message/MessageDecoder$1;->this$0:Lorg/apache/ldap/common/message/MessageDecoder;

    invoke-static {v1}, Lorg/apache/ldap/common/message/MessageDecoder;->access$000(Lorg/apache/ldap/common/message/MessageDecoder;)Lorg/apache/ldap/common/message/spi/TransformerSpi;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/ldap/common/message/spi/TransformerSpi;->transform(Ljava/lang/Object;)Lorg/apache/ldap/common/message/Message;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/asn1/codec/stateful/DecoderCallback;->decodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Object;)V

    return-void
.end method
