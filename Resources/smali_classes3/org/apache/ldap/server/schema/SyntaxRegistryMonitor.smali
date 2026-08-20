.class public interface abstract Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;
.super Ljava/lang/Object;
.source "SyntaxRegistryMonitor.java"


# virtual methods
.method public abstract lookedUp(Lorg/apache/ldap/common/schema/Syntax;)V
.end method

.method public abstract lookupFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V
.end method

.method public abstract registerFailed(Lorg/apache/ldap/common/schema/Syntax;Ljavax/naming/NamingException;)V
.end method

.method public abstract registered(Lorg/apache/ldap/common/schema/Syntax;)V
.end method
