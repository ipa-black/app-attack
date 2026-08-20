.class public interface abstract Lorg/apache/ldap/server/schema/DITStructureRuleRegistryMonitor;
.super Ljava/lang/Object;
.source "DITStructureRuleRegistryMonitor.java"


# virtual methods
.method public abstract lookedUp(Lorg/apache/ldap/common/schema/DITStructureRule;)V
.end method

.method public abstract lookupFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract registerFailed(Lorg/apache/ldap/common/schema/DITStructureRule;Ljava/lang/Throwable;)V
.end method

.method public abstract registered(Lorg/apache/ldap/common/schema/DITStructureRule;)V
.end method
