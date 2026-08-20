.class public interface abstract Lorg/apache/ldap/server/PartitionNexus;
.super Ljava/lang/Object;
.source "PartitionNexus.java"

# interfaces
.implements Lorg/apache/ldap/server/BackingStore;


# virtual methods
.method public abstract getLdapContext()Ljavax/naming/ldap/LdapContext;
.end method

.method public abstract getMatchedDn(Ljavax/naming/Name;Z)Ljavax/naming/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getSuffix(Ljavax/naming/Name;Z)Ljavax/naming/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract listSuffixes(Z)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract register(Lorg/apache/ldap/server/ContextPartition;)V
.end method

.method public abstract unregister(Lorg/apache/ldap/server/ContextPartition;)V
.end method
