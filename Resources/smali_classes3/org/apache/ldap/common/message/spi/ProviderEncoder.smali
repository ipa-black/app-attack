.class public interface abstract Lorg/apache/ldap/common/message/spi/ProviderEncoder;
.super Ljava/lang/Object;
.source "ProviderEncoder.java"

# interfaces
.implements Lorg/apache/ldap/common/message/spi/ProviderObject;
.implements Lorg/apache/asn1/codec/stateful/StatefulEncoder;


# virtual methods
.method public abstract encodeBlocking(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation
.end method

.method public abstract encodeBlocking(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation
.end method
