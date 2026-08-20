.class public interface abstract Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitor;
.super Ljava/lang/Object;
.source "AttributeTypeRegistryMonitor.java"


# virtual methods
.method public abstract lookedUp(Lorg/apache/ldap/common/schema/AttributeType;)V
.end method

.method public abstract lookupFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract registerFailed(Lorg/apache/ldap/common/schema/AttributeType;Ljava/lang/Throwable;)V
.end method

.method public abstract registered(Lorg/apache/ldap/common/schema/AttributeType;)V
.end method
