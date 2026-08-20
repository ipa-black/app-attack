.class public interface abstract Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitor;
.super Ljava/lang/Object;
.source "MatchingRuleUseRegistryMonitor.java"


# virtual methods
.method public abstract lookedUp(Lorg/apache/ldap/common/schema/MatchingRuleUse;)V
.end method

.method public abstract lookupFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract registerFailed(Lorg/apache/ldap/common/schema/MatchingRuleUse;Ljava/lang/Throwable;)V
.end method

.method public abstract registered(Lorg/apache/ldap/common/schema/MatchingRuleUse;)V
.end method
