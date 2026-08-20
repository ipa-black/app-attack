.class public Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;
.super Ljavax/naming/ServiceUnavailableException;
.source "LdapServiceUnavailableException.java"

# interfaces
.implements Lorg/apache/ldap/common/exception/LdapException;


# instance fields
.field private final resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Ljavax/naming/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p2}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;->checkResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 68
    iput-object p2, p0, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/message/ResultCodeEnum;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljavax/naming/ServiceUnavailableException;-><init>()V

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;->checkResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 51
    iput-object p1, p0, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-void
.end method

.method private checkResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V
    .locals 1

    .line 81
    invoke-static {}, Lorg/apache/ldap/common/message/ResultCodeEnum;->getServiceCodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "Only the following LDAP result codes can be used: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/ldap/common/message/ResultCodeEnum;->getSearchCodes()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;->resultCode:Lorg/apache/ldap/common/message/ResultCodeEnum;

    return-object v0
.end method
