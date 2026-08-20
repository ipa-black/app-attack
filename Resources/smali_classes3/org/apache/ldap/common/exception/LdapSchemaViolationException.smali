.class public Lorg/apache/ldap/common/exception/LdapSchemaViolationException;
.super Ljavax/naming/directory/SchemaViolationException;
.source "LdapSchemaViolationException.java"

# interfaces
.implements Lorg/apache/ldap/common/exception/LdapException;


# instance fields
.field private final resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Ljavax/naming/directory/SchemaViolationException;-><init>(Ljava/lang/String;)V

    .line 84
    iput-object p2, p0, Lorg/apache/ldap/common/exception/LdapSchemaViolationException;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/message/ResultCodeEnum;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljavax/naming/directory/SchemaViolationException;-><init>()V

    .line 51
    invoke-virtual {p1}, Lorg/apache/ldap/common/message/ResultCodeEnum;->getValue()I

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    const/16 v1, 0x43

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/apache/ldap/common/message/ResultCodeEnum;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " is not an acceptable result code."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/exception/LdapSchemaViolationException;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-void
.end method


# virtual methods
.method public getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/ldap/common/exception/LdapSchemaViolationException;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-object v0
.end method
