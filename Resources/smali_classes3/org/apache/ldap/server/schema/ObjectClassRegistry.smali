.class public interface abstract Lorg/apache/ldap/server/schema/ObjectClassRegistry;
.super Ljava/lang/Object;
.source "ObjectClassRegistry.java"


# virtual methods
.method public abstract getSchemaName(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract hasObjectClass(Ljava/lang/String;)Z
.end method

.method public abstract list()Ljava/util/Iterator;
.end method

.method public abstract lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/ObjectClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/String;Lorg/apache/ldap/common/schema/ObjectClass;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
