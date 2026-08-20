.class public Lorg/apache/ldap/common/exception/LdapAuthenticationNotSupportedException;
.super Ljavax/naming/AuthenticationNotSupportedException;
.source "LdapAuthenticationNotSupportedException.java"

# interfaces
.implements Lorg/apache/ldap/common/exception/LdapException;


# instance fields
.field private final resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Ljavax/naming/AuthenticationNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 73
    iput-object p2, p0, Lorg/apache/ldap/common/exception/LdapAuthenticationNotSupportedException;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    .line 74
    invoke-direct {p0}, Lorg/apache/ldap/common/exception/LdapAuthenticationNotSupportedException;->checkResultCode()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/message/ResultCodeEnum;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljavax/naming/AuthenticationNotSupportedException;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/ldap/common/exception/LdapAuthenticationNotSupportedException;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    .line 58
    invoke-direct {p0}, Lorg/apache/ldap/common/exception/LdapAuthenticationNotSupportedException;->checkResultCode()V

    return-void
.end method

.method private checkResultCode()V
    .locals 3

    .line 108
    iget-object v0, p0, Lorg/apache/ldap/common/exception/LdapAuthenticationNotSupportedException;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/common/message/ResultCodeEnum;->getValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unexceptable result code for this exception type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/ldap/common/exception/LdapAuthenticationNotSupportedException;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-virtual {v2}, Lorg/apache/ldap/common/message/ResultCodeEnum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/ldap/common/exception/LdapAuthenticationNotSupportedException;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-object v0
.end method
