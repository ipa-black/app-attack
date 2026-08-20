.class public interface abstract Lorg/apache/ldap/server/schema/SyntaxCheckerRegistryMonitor;
.super Ljava/lang/Object;
.source "SyntaxCheckerRegistryMonitor.java"


# virtual methods
.method public abstract lookedUp(Ljava/lang/String;Lorg/apache/ldap/common/schema/SyntaxChecker;)V
.end method

.method public abstract lookupFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V
.end method

.method public abstract registerFailed(Ljava/lang/String;Lorg/apache/ldap/common/schema/SyntaxChecker;Ljavax/naming/NamingException;)V
.end method

.method public abstract registered(Ljava/lang/String;Lorg/apache/ldap/common/schema/SyntaxChecker;)V
.end method
