.class public interface abstract Lorg/apache/ldap/common/message/spi/TransformerSpi;
.super Ljava/lang/Object;
.source "TransformerSpi.java"

# interfaces
.implements Lorg/apache/ldap/common/message/spi/ProviderObject;


# virtual methods
.method public abstract transform(Lorg/apache/ldap/common/message/Message;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation
.end method

.method public abstract transform(Ljava/lang/Object;)Lorg/apache/ldap/common/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation
.end method
