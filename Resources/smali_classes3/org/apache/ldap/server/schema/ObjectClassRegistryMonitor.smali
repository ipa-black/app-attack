.class public interface abstract Lorg/apache/ldap/server/schema/ObjectClassRegistryMonitor;
.super Ljava/lang/Object;
.source "ObjectClassRegistryMonitor.java"


# virtual methods
.method public abstract lookedUp(Lorg/apache/ldap/common/schema/ObjectClass;)V
.end method

.method public abstract lookupFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract registerFailed(Lorg/apache/ldap/common/schema/ObjectClass;Ljava/lang/Throwable;)V
.end method

.method public abstract registered(Lorg/apache/ldap/common/schema/ObjectClass;)V
.end method
