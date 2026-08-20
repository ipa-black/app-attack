.class public interface abstract Lorg/apache/ldap/server/schema/ComparatorRegistryMonitor;
.super Ljava/lang/Object;
.source "ComparatorRegistryMonitor.java"


# virtual methods
.method public abstract lookedUp(Ljava/lang/String;Ljava/util/Comparator;)V
.end method

.method public abstract lookupFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V
.end method

.method public abstract registerFailed(Ljava/lang/String;Ljava/util/Comparator;Ljavax/naming/NamingException;)V
.end method

.method public abstract registered(Ljava/lang/String;Ljava/util/Comparator;)V
.end method
