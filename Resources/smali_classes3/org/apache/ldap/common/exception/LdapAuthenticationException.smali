.class public Lorg/apache/ldap/common/exception/LdapAuthenticationException;
.super Ljavax/naming/AuthenticationException;
.source "LdapAuthenticationException.java"

# interfaces
.implements Lorg/apache/ldap/common/exception/LdapException;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljavax/naming/AuthenticationException;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->INVALIDCREDENTIALS:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-object v0
.end method
