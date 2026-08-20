.class public final Lorg/apache/ldap/common/message/MessageDecoder;
.super Ljava/lang/Object;
.source "MessageDecoder.java"

# interfaces
.implements Lorg/apache/ldap/common/message/spi/ProviderDecoder;


# instance fields
.field private cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

.field private final decoder:Lorg/apache/ldap/common/message/spi/ProviderDecoder;

.field private final env:Ljava/util/Hashtable;

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

    .line 62
    invoke-static {}, Lorg/apache/ldap/common/message/spi/Provider;->getEnvironment()Ljava/util/Properties;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/message/MessageDecoder;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/MessageException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    iput-object p1, p0, Lorg/apache/ldap/common/message/MessageDecoder;->env:Ljava/util/Hashtable;

    .line 76
    invoke-static {p1}, Lorg/apache/ldap/common/message/spi/Provider;->getProvider(Ljava/util/Hashtable;)Lorg/apache/ldap/common/message/spi/Provider;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/common/message/MessageDecoder;->provider:Lorg/apache/ldap/common/message/spi/Provider;

    .line 77
    invoke-virtual {p1}, Lorg/apache/ldap/common/message/spi/Provider;->getDecoder()Lorg/apache/ldap/common/message/spi/ProviderDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/common/message/MessageDecoder;->decoder:Lorg/apache/ldap/common/message/spi/ProviderDecoder;

    .line 78
    invoke-virtual {p1}, Lorg/apache/ldap/common/message/spi/Provider;->getTransformer()Lorg/apache/ldap/common/message/spi/TransformerSpi;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/common/message/MessageDecoder;->transformer:Lorg/apache/ldap/common/message/spi/TransformerSpi;

    .line 79
    new-instance p1, Lorg/apache/ldap/common/message/MessageDecoder$1;

    invoke-direct {p1, p0}, Lorg/apache/ldap/common/message/MessageDecoder$1;-><init>(Lorg/apache/ldap/common/message/MessageDecoder;)V

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/message/spi/ProviderDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/ldap/common/message/MessageDecoder;)Lorg/apache/ldap/common/message/spi/TransformerSpi;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/apache/ldap/common/message/MessageDecoder;->transformer:Lorg/apache/ldap/common/message/spi/TransformerSpi;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/ldap/common/message/MessageDecoder;)Lorg/apache/asn1/codec/stateful/DecoderCallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/apache/ldap/common/message/MessageDecoder;->cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    return-object p0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/MessageException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 107
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageDecoder;->decoder:Lorg/apache/ldap/common/message/spi/ProviderDecoder;

    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/common/message/spi/ProviderDecoder;->decode(Ljava/lang/Object;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_0
    monitor-enter p1

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageDecoder;->decoder:Lorg/apache/ldap/common/message/spi/ProviderDecoder;

    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/common/message/spi/ProviderDecoder;->decode(Ljava/lang/Object;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p2

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 116
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p2

    .line 121
    :goto_0
    iget-object p2, p0, Lorg/apache/ldap/common/message/MessageDecoder;->transformer:Lorg/apache/ldap/common/message/spi/TransformerSpi;

    invoke-interface {p2, p1}, Lorg/apache/ldap/common/message/spi/TransformerSpi;->transform(Ljava/lang/Object;)Lorg/apache/ldap/common/message/Message;

    move-result-object p1

    const/4 p2, 0x1

    .line 124
    invoke-interface {p1, p2}, Lorg/apache/ldap/common/message/Message;->setLocked(Z)V

    return-object p1

    :catchall_0
    move-exception p2

    .line 116
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public decode(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/MessageException;
        }
    .end annotation

    .line 141
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageDecoder;->decoder:Lorg/apache/ldap/common/message/spi/ProviderDecoder;

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/message/spi/ProviderDecoder;->decode(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/asn1/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 145
    new-instance v0, Lorg/apache/ldap/common/message/MessageException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "decoder failture: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/asn1/codec/DecoderException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/message/MessageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProvider()Lorg/apache/ldap/common/message/spi/Provider;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageDecoder;->provider:Lorg/apache/ldap/common/message/spi/Provider;

    return-object v0
.end method

.method public setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/apache/ldap/common/message/MessageDecoder;->cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    return-void
.end method

.method public setDecoderMonitor(Lorg/apache/asn1/codec/stateful/DecoderMonitor;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/ldap/common/message/MessageDecoder;->decoder:Lorg/apache/ldap/common/message/spi/ProviderDecoder;

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/message/spi/ProviderDecoder;->setDecoderMonitor(Lorg/apache/asn1/codec/stateful/DecoderMonitor;)V

    return-void
.end method
