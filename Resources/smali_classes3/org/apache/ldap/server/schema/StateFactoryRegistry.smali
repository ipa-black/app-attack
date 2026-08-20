.class public interface abstract Lorg/apache/ldap/server/schema/StateFactoryRegistry;
.super Ljava/lang/Object;
.source "StateFactoryRegistry.java"


# virtual methods
.method public abstract getStateFactories(Ljava/lang/Object;)Lorg/apache/ldap/server/jndi/ServerDirStateFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract register(Lorg/apache/ldap/server/jndi/ServerDirStateFactory;)V
.end method
