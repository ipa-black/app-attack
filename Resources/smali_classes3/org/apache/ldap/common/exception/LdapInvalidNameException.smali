.class public Lorg/apache/ldap/common/exception/LdapInvalidNameException;
.super Ljavax/naming/InvalidNameException;
.source "LdapInvalidNameException.java"

# interfaces
.implements Lorg/apache/ldap/common/exception/LdapException;


# instance fields
.field private final resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Ljavax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    .line 58
    iput-object p2, p0, Lorg/apache/ldap/common/exception/LdapInvalidNameException;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/message/ResultCodeEnum;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljavax/naming/InvalidNameException;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/ldap/common/exception/LdapInvalidNameException;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-void
.end method


# virtual methods
.method public getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/ldap/common/exception/LdapInvalidNameException;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-object v0
.end method
