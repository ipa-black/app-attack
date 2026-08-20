.class public abstract Lorg/apache/ldap/server/authn/AbstractAuthenticator;
.super Ljava/lang/Object;
.source "AbstractAuthenticator.java"

# interfaces
.implements Lorg/apache/ldap/server/authn/Authenticator;
.implements Lorg/apache/ldap/server/authn/AuthenticatorConfig;


# instance fields
.field public authenticatorConfig:Lorg/apache/ldap/server/authn/AuthenticatorConfig;

.field public authenticatorType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/ldap/server/authn/AbstractAuthenticator;->authenticatorType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lorg/apache/ldap/server/jndi/ServerContext;)Lorg/apache/ldap/server/authn/LdapPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method protected createLdapPrincipal(Ljava/lang/String;)Lorg/apache/ldap/server/authn/LdapPrincipal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 144
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 146
    new-instance p1, Lorg/apache/ldap/server/authn/LdapPrincipal;

    invoke-direct {p1, v0}, Lorg/apache/ldap/server/authn/LdapPrincipal;-><init>(Ljavax/naming/Name;)V

    return-object p1
.end method

.method public getAuthenticatorConfig()Lorg/apache/ldap/server/authn/AuthenticatorConfig;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/ldap/server/authn/AbstractAuthenticator;->authenticatorConfig:Lorg/apache/ldap/server/authn/AuthenticatorConfig;

    return-object v0
.end method

.method public getAuthenticatorContext()Lorg/apache/ldap/server/authn/AuthenticatorContext;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/ldap/server/authn/AbstractAuthenticator;->authenticatorConfig:Lorg/apache/ldap/server/authn/AuthenticatorConfig;

    invoke-interface {v0}, Lorg/apache/ldap/server/authn/AuthenticatorConfig;->getAuthenticatorContext()Lorg/apache/ldap/server/authn/AuthenticatorContext;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticatorName()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/ldap/server/authn/AbstractAuthenticator;->authenticatorConfig:Lorg/apache/ldap/server/authn/AuthenticatorConfig;

    invoke-interface {v0}, Lorg/apache/ldap/server/authn/AuthenticatorConfig;->getAuthenticatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticatorType()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/ldap/server/authn/AbstractAuthenticator;->authenticatorType:Ljava/lang/String;

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/ldap/server/authn/AbstractAuthenticator;->authenticatorConfig:Lorg/apache/ldap/server/authn/AuthenticatorConfig;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/authn/AuthenticatorConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/ldap/server/authn/AbstractAuthenticator;->authenticatorConfig:Lorg/apache/ldap/server/authn/AuthenticatorConfig;

    invoke-interface {v0}, Lorg/apache/ldap/server/authn/AuthenticatorConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    return-void
.end method

.method public init(Lorg/apache/ldap/server/authn/AuthenticatorConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lorg/apache/ldap/server/authn/AbstractAuthenticator;->authenticatorConfig:Lorg/apache/ldap/server/authn/AuthenticatorConfig;

    .line 88
    invoke-virtual {p0}, Lorg/apache/ldap/server/authn/AbstractAuthenticator;->init()V

    return-void
.end method
