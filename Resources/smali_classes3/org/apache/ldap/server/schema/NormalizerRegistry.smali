.class public interface abstract Lorg/apache/ldap/server/schema/NormalizerRegistry;
.super Ljava/lang/Object;
.source "NormalizerRegistry.java"


# virtual methods
.method public abstract getSchemaName(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract hasNormalizer(Ljava/lang/String;)Z
.end method

.method public abstract lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/Normalizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ldap/common/schema/Normalizer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
