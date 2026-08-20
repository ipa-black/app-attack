.class public interface abstract Lorg/apache/ldap/server/schema/OidRegistryMonitor;
.super Ljava/lang/Object;
.source "OidRegistryMonitor.java"


# virtual methods
.method public abstract getOidWithOid(Ljava/lang/String;)V
.end method

.method public abstract nameResolved(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract namesResolved(Ljava/lang/String;Ljava/util/List;)V
.end method

.method public abstract oidDoesNotExist(Ljava/lang/String;Ljavax/naming/NamingException;)V
.end method

.method public abstract oidResolutionFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V
.end method

.method public abstract oidResolved(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract oidResolved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registered(Ljava/lang/String;Ljava/lang/String;)V
.end method
