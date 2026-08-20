.class public Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;
.super Ljava/lang/Object;
.source "SnickersDecoder.java"

# interfaces
.implements Lorg/apache/ldap/common/message/spi/ProviderDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder$DigesterCallback;
    }
.end annotation


# instance fields
.field private final digester:Lorg/apache/asn1/ber/digester/BERDigester;

.field private final provider:Lorg/apache/ldap/common/message/spi/Provider;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/common/message/spi/Provider;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;->provider:Lorg/apache/ldap/common/message/spi/Provider;

    .line 59
    invoke-static {}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->getSingleton()Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->create()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;->digester:Lorg/apache/asn1/ber/digester/BERDigester;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;)Lorg/apache/ldap/common/message/spi/Provider;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;->provider:Lorg/apache/ldap/common/message/spi/Provider;

    return-object p0
.end method

.method private digest(Lorg/apache/asn1/ber/digester/BERDigester;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation

    .line 177
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    .line 179
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 181
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 186
    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->decode(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 192
    new-instance p2, Lorg/apache/ldap/common/message/spi/ProviderException;

    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;->provider:Lorg/apache/ldap/common/message/spi/Provider;

    const-string v1, "Snickers decoder failure!"

    invoke-direct {p2, v0, v1}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2, p1}, Lorg/apache/ldap/common/message/spi/ProviderException;->addThrowable(Ljava/lang/Throwable;)V

    .line 195
    throw p2
.end method


# virtual methods
.method public decode(Ljava/lang/Object;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation

    .line 125
    invoke-static {}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->getSingleton()Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->create()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    .line 129
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder$DigesterCallback;

    invoke-direct {v1, p0}, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder$DigesterCallback;-><init>(Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;)V

    .line 130
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    if-nez p1, :cond_0

    .line 134
    invoke-direct {p0, v0, p2}, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;->digest(Lorg/apache/asn1/ber/digester/BERDigester;Ljava/io/InputStream;)V

    .line 135
    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder$DigesterCallback;->getMessage()Lorg/apache/ldap/common/message/Message;

    move-result-object p1

    return-object p1

    .line 141
    :cond_0
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :try_start_1
    invoke-direct {p0, v0, p2}, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;->digest(Lorg/apache/asn1/ber/digester/BERDigester;Ljava/io/InputStream;)V

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 147
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder$DigesterCallback;->getMessage()Lorg/apache/ldap/common/message/Message;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    .line 147
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 152
    new-instance p2, Lorg/apache/ldap/common/message/spi/ProviderException;

    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;->provider:Lorg/apache/ldap/common/message/spi/Provider;

    const-string v1, "Snickers decoder failure!"

    invoke-direct {p2, v0, v1}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2, p1}, Lorg/apache/ldap/common/message/spi/ProviderException;->addThrowable(Ljava/lang/Throwable;)V

    .line 155
    throw p2
.end method

.method public decode(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 84
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 88
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 90
    check-cast p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 98
    :goto_0
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;->digester:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->decode(Ljava/lang/Object;)V

    return-void

    .line 94
    :cond_1
    new-instance v0, Lorg/apache/asn1/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Expected either a byte[] or ByteBuffer argument but got a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/asn1/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProvider()Lorg/apache/ldap/common/message/spi/Provider;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;->provider:Lorg/apache/ldap/common/message/spi/Provider;

    return-object v0
.end method

.method public setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;->digester:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    return-void
.end method

.method public setDecoderMonitor(Lorg/apache/asn1/codec/stateful/DecoderMonitor;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;->digester:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->setDecoderMonitor(Lorg/apache/asn1/codec/stateful/DecoderMonitor;)V

    return-void
.end method
