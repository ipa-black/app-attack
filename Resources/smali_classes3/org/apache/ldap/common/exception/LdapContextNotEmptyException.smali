.class public Lorg/apache/ldap/common/exception/LdapContextNotEmptyException;
.super Ljavax/naming/ContextNotEmptyException;
.source "LdapContextNotEmptyException.java"

# interfaces
.implements Lorg/apache/ldap/common/exception/LdapException;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljavax/naming/ContextNotEmptyException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Ljavax/naming/ContextNotEmptyException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;
    .locals 1

    .line 53
    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->NOTALLOWEDONNONLEAF:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-object v0
.end method
