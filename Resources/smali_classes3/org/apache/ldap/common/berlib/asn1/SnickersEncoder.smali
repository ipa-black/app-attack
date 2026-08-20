.class public Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;
.super Ljava/lang/Object;
.source "SnickersEncoder.java"

# interfaces
.implements Lorg/apache/ldap/common/message/spi/ProviderEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$OutputCallback;,
        Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;
    }
.end annotation


# instance fields
.field private final accCb:Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;

.field private final encoder:Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

.field private final outCb:Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$OutputCallback;

.field private final provider:Lorg/apache/ldap/common/message/spi/Provider;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/common/message/spi/Provider;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->provider:Lorg/apache/ldap/common/message/spi/Provider;

    .line 53
    new-instance p1, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$OutputCallback;

    invoke-direct {p1, p0}, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$OutputCallback;-><init>(Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;)V

    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->outCb:Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$OutputCallback;

    .line 54
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;-><init>(Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;)V

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->accCb:Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;

    .line 55
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

    invoke-direct {v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->encoder:Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

    .line 56
    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V

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

    .line 139
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->encoder:Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->encode(Ljava/lang/Object;)V

    return-void
.end method

.method public encodeBlocking(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation

    const-string v0, "Snickers encoder failed to encode object: "

    .line 84
    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->encoder:Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->encoder:Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

    iget-object v3, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->accCb:Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;

    invoke-virtual {v2, v3}, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    iget-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->encoder:Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

    invoke-virtual {v2, p1}, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->encode(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/asn1/codec/EncoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :try_start_2
    iget-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->accCb:Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;

    invoke-virtual {p1}, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;->getEncoded()Ljava/nio/ByteBuffer;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 94
    :catch_0
    new-instance v2, Lorg/apache/ldap/common/message/spi/ProviderException;

    iget-object v3, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->provider:Lorg/apache/ldap/common/message/spi/Provider;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    .line 96
    throw v2

    :catchall_0
    move-exception p1

    .line 100
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public encodeBlocking(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation

    const-string p1, "Snickers encoder failed to encode object: "

    .line 63
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->encoder:Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->outCb:Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$OutputCallback;

    invoke-virtual {v1, p2}, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$OutputCallback;->attach(Ljava/io/OutputStream;)V

    .line 66
    iget-object p2, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->encoder:Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->outCb:Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$OutputCallback;

    invoke-virtual {p2, v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    iget-object p2, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->encoder:Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

    invoke-virtual {p2, p3}, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->encode(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/asn1/codec/EncoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    monitor-exit v0

    return-void

    .line 74
    :catch_0
    new-instance p2, Lorg/apache/ldap/common/message/spi/ProviderException;

    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->provider:Lorg/apache/ldap/common/message/spi/Provider;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    .line 76
    throw p2

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public encodeToArray(Ljava/lang/Object;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation

    const-string v0, "Snickers encoder failed to encode object: "

    .line 106
    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->encoder:Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->encoder:Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

    iget-object v3, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->accCb:Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;

    invoke-virtual {v2, v3}, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    iget-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->encoder:Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

    invoke-virtual {v2, p1}, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->encode(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/asn1/codec/EncoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    iget-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->accCb:Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;

    invoke-virtual {p1}, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;->getEncoded()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/ldap/common/berlib/asn1/BufferUtils;->getArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 116
    :catch_0
    new-instance v2, Lorg/apache/ldap/common/message/spi/ProviderException;

    iget-object v3, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->provider:Lorg/apache/ldap/common/message/spi/Provider;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lorg/apache/ldap/common/message/spi/ProviderException;-><init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V

    .line 118
    throw v2

    :catchall_0
    move-exception p1

    .line 122
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getProvider()Lorg/apache/ldap/common/message/spi/Provider;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->provider:Lorg/apache/ldap/common/message/spi/Provider;

    return-object v0
.end method

.method public setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->encoder:Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V

    return-void
.end method

.method public setEncoderMonitor(Lorg/apache/asn1/codec/stateful/EncoderMonitor;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;->encoder:Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->setEncoderMonitor(Lorg/apache/asn1/codec/stateful/EncoderMonitor;)V

    return-void
.end method
