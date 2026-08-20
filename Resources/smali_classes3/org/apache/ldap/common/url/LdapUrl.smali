.class public interface abstract Lorg/apache/ldap/common/url/LdapUrl;
.super Ljava/lang/Object;
.source "LdapUrl.java"


# virtual methods
.method public abstract getAttributes()Ljava/util/List;
.end method

.method public abstract getExtensions()Ljava/util/List;
.end method

.method public abstract getFilter()Lorg/apache/ldap/common/filter/ExprNode;
.end method

.method public abstract getHostName()Ljava/lang/String;
.end method

.method public abstract getName()Ljavax/naming/Name;
.end method

.method public abstract getPort()I
.end method

.method public abstract getScope()I
.end method

.method public abstract isSecure()Z
.end method
