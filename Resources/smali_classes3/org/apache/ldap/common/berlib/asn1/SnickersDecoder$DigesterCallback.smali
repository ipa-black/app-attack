.class Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder$DigesterCallback;
.super Ljava/lang/Object;
.source "SnickersDecoder.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/DecoderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DigesterCallback"
.end annotation


# instance fields
.field private msg:Lorg/apache/ldap/common/message/Message;

.field private final synthetic this$0:Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;


# direct methods
.method constructor <init>(Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder$DigesterCallback;->this$0:Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;

    return-void
.end method


# virtual methods
.method public decodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Object;)V
    .locals 0

    .line 213
    check-cast p2, Lorg/apache/ldap/common/message/Message;

    iput-object p2, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder$DigesterCallback;->msg:Lorg/apache/ldap/common/message/Message;

    return-void
.end method

.method getMessage()Lorg/apache/ldap/common/message/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder$DigesterCallback;->msg:Lorg/apache/ldap/common/message/Message;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 235
    iput-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder$DigesterCallback;->msg:Lorg/apache/ldap/common/message/Message;

    return-object v0

    .line 229
    :cond_0
    new-instance v0, Lorg/apache/ldap/common/message/spi/ProviderException;

    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder$DigesterCallback;->this$0:Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;

    invoke-static {v1}, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;->access$000(Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;)Lorg/apache/ldap/common/message/spi/Provider;

    move-result-object v1

    const-string v2, "Callback did not receive a message as expected from the Snickers BERDigester"

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    throw v0
.end method
