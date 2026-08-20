.class public interface abstract Lorg/apache/ldap/server/schema/ObjectFactoryRegistry;
.super Ljava/lang/Object;
.source "ObjectFactoryRegistry.java"


# virtual methods
.method public abstract getObjectFactories(Ljavax/naming/ldap/LdapContext;)Lorg/apache/ldap/server/jndi/ServerDirObjectFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract register(Lorg/apache/ldap/server/jndi/ServerDirObjectFactory;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
