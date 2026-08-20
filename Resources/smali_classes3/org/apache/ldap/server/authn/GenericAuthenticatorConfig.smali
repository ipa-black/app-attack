.class public Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;
.super Ljava/lang/Object;
.source "GenericAuthenticatorConfig.java"

# interfaces
.implements Lorg/apache/ldap/server/authn/AuthenticatorConfig;


# instance fields
.field private authenticatorClass:Ljava/lang/String;

.field private authenticatorContext:Lorg/apache/ldap/server/authn/AuthenticatorContext;

.field private authenticatorName:Ljava/lang/String;

.field private properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->properties:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public getAuthenticatorClass()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->authenticatorClass:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticatorContext()Lorg/apache/ldap/server/authn/AuthenticatorContext;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->authenticatorContext:Lorg/apache/ldap/server/authn/AuthenticatorContext;

    return-object v0
.end method

.method public getAuthenticatorName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->authenticatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->properties:Ljava/util/Properties;

    return-object v0
.end method

.method public setAuthenticatorClass(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->authenticatorClass:Ljava/lang/String;

    return-void
.end method

.method public setAuthenticatorContext(Lorg/apache/ldap/server/authn/AuthenticatorContext;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->authenticatorContext:Lorg/apache/ldap/server/authn/AuthenticatorContext;

    return-void
.end method

.method public setAuthenticatorName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->authenticatorName:Ljava/lang/String;

    return-void
.end method

.method public setProperties(Ljava/util/Properties;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->properties:Ljava/util/Properties;

    return-void
.end method
