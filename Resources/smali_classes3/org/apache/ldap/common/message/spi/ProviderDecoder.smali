.class public interface abstract Lorg/apache/ldap/common/message/spi/ProviderDecoder;
.super Ljava/lang/Object;
.source "ProviderDecoder.java"

# interfaces
.implements Lorg/apache/ldap/common/message/spi/ProviderObject;
.implements Lorg/apache/asn1/codec/stateful/StatefulDecoder;


# virtual methods
.method public abstract decode(Ljava/lang/Object;Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation
.end method
