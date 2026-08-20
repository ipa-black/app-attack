.class public Lorg/apache/ldap/common/exception/LdapNoPermissionException;
.super Ljavax/naming/NoPermissionException;
.source "LdapNoPermissionException.java"

# interfaces
.implements Lorg/apache/ldap/common/exception/LdapException;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljavax/naming/NoPermissionException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Ljavax/naming/NoPermissionException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;
    .locals 1

    .line 64
    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->INSUFFICIENTACCESSRIGHTS:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-object v0
.end method
