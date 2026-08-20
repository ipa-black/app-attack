.class public Lorg/apache/ldap/common/exception/LdapAttributeInUseException;
.super Ljavax/naming/directory/AttributeInUseException;
.source "LdapAttributeInUseException.java"

# interfaces
.implements Lorg/apache/ldap/common/exception/LdapException;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljavax/naming/directory/AttributeInUseException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Ljavax/naming/directory/AttributeInUseException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;
    .locals 1

    .line 59
    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->ENTRYALREADYEXISTS:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-object v0
.end method
