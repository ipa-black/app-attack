.class public interface abstract Lorg/apache/ldap/server/schema/NameFormRegistry;
.super Ljava/lang/Object;
.source "NameFormRegistry.java"


# virtual methods
.method public abstract getSchemaName(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract hasNameForm(Ljava/lang/String;)Z
.end method

.method public abstract list()Ljava/util/Iterator;
.end method

.method public abstract lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/NameForm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/String;Lorg/apache/ldap/common/schema/NameForm;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
