.class public interface abstract Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;
.super Ljava/lang/Object;
.source "MatchingRuleRegistryMonitor.java"


# virtual methods
.method public abstract lookedUp(Lorg/apache/ldap/common/schema/MatchingRule;)V
.end method

.method public abstract lookupFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V
.end method

.method public abstract registerFailed(Lorg/apache/ldap/common/schema/MatchingRule;Ljavax/naming/NamingException;)V
.end method

.method public abstract registered(Lorg/apache/ldap/common/schema/MatchingRule;)V
.end method
