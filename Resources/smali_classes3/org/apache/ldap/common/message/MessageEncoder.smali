.class public final Lorg/apache/ldap/common/message/MessageEncoder;
.super Ljava/lang/Object;
.source "MessageEncoder.java"

# interfaces
.implements Lorg/apache/ldap/common/message/spi/ProviderEncoder;


# instance fields
.field private final encoder:Lorg/apache/ldap/common/message/spi/ProviderEncoder;

.field private final provider:Lorg/apache/ldap/common/message/spi/Provider;

.field private final transformer:Lorg/apache/ldap/common/message/spi/TransformerSpi;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/MessageException;
        }
    .end annotation

    .line 58
    invoke-static {}, Lorg/apache/ldap/common/message/spi/Provider;->getEnvironment()Ljava/util/Properties;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/message/MessageEncoder;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/MessageException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/apache/ldap/common/message/spi/Provider;->getProvider(Ljava/util/Hashtable;)Lorg/apache/ldap/common/message/spi/Provider;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/common/message/MessageEncoder;->provider:Lorg/apache/ldap/common/message/spi/Provider;

    .line 72
    invoke-virtual {p1}, Lorg/apache/ldap/common/message/spi/Provider;->getEncoder()Lorg/apache/ldap/common/message/spi/ProviderEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/common/message/MessageEncoder;->encoder:Lorg/apache/ldap/common/message/spi/ProviderEncoder;

    .line 73
    invoke-virtual {p1}, Lorg/apache/ldap/common/message/spi/Provider;->getTransformer()Lorg/apache/ldap/common/message/spi/TransformerSpi;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/common/message/MessageEncoder;->transformer:Lorg/apache/ldap/common/message/spi/TransformerSpi;

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/EncoderException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageEncoder;->transformer:Lorg/apache/ldap/common/message/spi/TransformerSpi;

    check-cast p1, Lorg/apache/ldap/common/message/Message;

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/message/spi/TransformerSpi;->transform(Lorg/apache/ldap/common/message/Message;)Ljava/lang/Object;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageEncoder;->encoder:Lorg/apache/ldap/common/message/spi/ProviderEncoder;

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/message/spi/ProviderEncoder;->encode(Ljava/lang/Object;)V

    return-void
.end method

.method public encodeBlocking(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageEncoder;->transformer:Lorg/apache/ldap/common/message/spi/TransformerSpi;

    check-cast p1, Lorg/apache/ldap/common/message/Message;

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/message/spi/TransformerSpi;->transform(Lorg/apache/ldap/common/message/Message;)Ljava/lang/Object;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageEncoder;->encoder:Lorg/apache/ldap/common/message/spi/ProviderEncoder;

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/message/spi/ProviderEncoder;->encodeBlocking(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public encodeBlocking(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageEncoder;->transformer:Lorg/apache/ldap/common/message/spi/TransformerSpi;

    check-cast p3, Lorg/apache/ldap/common/message/Message;

    invoke-interface {v0, p3}, Lorg/apache/ldap/common/message/spi/TransformerSpi;->transform(Lorg/apache/ldap/common/message/Message;)Ljava/lang/Object;

    move-result-object p3

    .line 91
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageEncoder;->encoder:Lorg/apache/ldap/common/message/spi/ProviderEncoder;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ldap/common/message/spi/ProviderEncoder;->encodeBlocking(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/Object;)V

    return-void
.end method

.method public getProvider()Lorg/apache/ldap/common/message/spi/Provider;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageEncoder;->provider:Lorg/apache/ldap/common/message/spi/Provider;

    return-object v0
.end method

.method public setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageEncoder;->encoder:Lorg/apache/ldap/common/message/spi/ProviderEncoder;

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/message/spi/ProviderEncoder;->setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V

    return-void
.end method

.method public setEncoderMonitor(Lorg/apache/asn1/codec/stateful/EncoderMonitor;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageEncoder;->encoder:Lorg/apache/ldap/common/message/spi/ProviderEncoder;

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/message/spi/ProviderEncoder;->setEncoderMonitor(Lorg/apache/asn1/codec/stateful/EncoderMonitor;)V

    return-void
.end method
