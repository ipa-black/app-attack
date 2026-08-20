.class public Lorg/apache/ldap/server/authn/AuthenticatorConfigBuilder;
.super Ljava/lang/Object;
.source "AuthenticatorConfigBuilder.java"


# static fields
.field private static final EMPTY:[Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;

    sput-object v0, Lorg/apache/ldap/server/authn/AuthenticatorConfigBuilder;->EMPTY:[Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthenticatorConfig(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    new-instance v1, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;

    invoke-direct {v1}, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;-><init>()V

    .line 60
    invoke-virtual {v1, p0}, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->setAuthenticatorName(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 67
    const-string v3, "server.authenticator.class."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {v1, v3}, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->setAuthenticatorClass(Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 80
    const-string v2, "server.authenticator.properties."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 87
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->getProperties()Ljava/util/Properties;

    move-result-object p1

    .line 88
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 89
    invoke-virtual {v1, p1}, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->setProperties(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 93
    new-instance p1, Ljavax/naming/NamingException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getAuthenticatorConfigs(Ljava/util/Hashtable;)[Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 112
    const-string v0, "server.authenticators"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    invoke-static {v0}, Lorg/apache/ldap/common/util/StringTools;->deepTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 122
    array-length v1, v0

    new-array v2, v1, [Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_1

    return-object v2

    .line 125
    :cond_1
    aget-object v4, v0, v3

    invoke-static {v4, p0}, Lorg/apache/ldap/server/authn/AuthenticatorConfigBuilder;->getAuthenticatorConfig(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    :cond_2
    :goto_1
    sget-object p0, Lorg/apache/ldap/server/authn/AuthenticatorConfigBuilder;->EMPTY:[Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;

    return-object p0
.end method
