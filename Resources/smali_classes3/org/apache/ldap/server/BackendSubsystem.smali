.class public interface abstract Lorg/apache/ldap/server/BackendSubsystem;
.super Ljava/lang/Object;
.source "BackendSubsystem.java"


# virtual methods
.method public abstract getLdapContext(Ljava/util/Hashtable;)Ljavax/naming/ldap/LdapContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract sync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
