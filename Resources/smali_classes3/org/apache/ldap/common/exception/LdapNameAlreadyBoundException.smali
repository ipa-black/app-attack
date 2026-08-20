.class public Lorg/apache/ldap/common/exception/LdapNameAlreadyBoundException;
.super Ljavax/naming/NameAlreadyBoundException;
.source "LdapNameAlreadyBoundException.java"

# interfaces
.implements Lorg/apache/ldap/common/exception/LdapException;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljavax/naming/NameAlreadyBoundException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Ljavax/naming/NameAlreadyBoundException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;
    .locals 1

    .line 58
    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->ENTRYALREADYEXISTS:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-object v0
.end method
