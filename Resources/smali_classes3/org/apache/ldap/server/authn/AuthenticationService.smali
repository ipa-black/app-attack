.class public Lorg/apache/ldap/server/authn/AuthenticationService;
.super Ljava/lang/Object;
.source "AuthenticationService.java"

# interfaces
.implements Lorg/apache/ldap/server/interceptor/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/server/authn/AuthenticationService$TrustedPrincipalWrapper;
    }
.end annotation


# static fields
.field private static final AUTH_TYPE:Ljava/lang/String; = "java.naming.security.authentication"

.field private static final CREDS:Ljava/lang/String; = "java.naming.security.credentials"


# instance fields
.field public authenticators:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/authn/AuthenticationService;->authenticators:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/ldap/server/authn/AuthenticationService;->authenticators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getAuthenticators(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/apache/ldap/server/authn/AuthenticationService;->authenticators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public init(Lorg/apache/ldap/server/interceptor/InterceptorContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getEnvironment()Ljava/util/Map;

    move-result-object v0

    const-string v1, "server.disable.anonymous"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 75
    new-instance v1, Lorg/apache/ldap/server/authn/GenericAuthenticatorContext;

    invoke-direct {v1}, Lorg/apache/ldap/server/authn/GenericAuthenticatorContext;-><init>()V

    .line 77
    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getRootNexus()Lorg/apache/ldap/server/RootNexus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/authn/GenericAuthenticatorContext;->setPartitionNexus(Lorg/apache/ldap/server/PartitionNexus;)V

    .line 79
    invoke-virtual {v1, v0}, Lorg/apache/ldap/server/authn/GenericAuthenticatorContext;->setAllowAnonymous(Z)V

    .line 85
    :try_start_0
    new-instance v0, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;

    invoke-direct {v0}, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;-><init>()V

    .line 87
    const-string v2, "none"

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->setAuthenticatorName(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->setAuthenticatorContext(Lorg/apache/ldap/server/authn/AuthenticatorContext;)V

    .line 91
    new-instance v2, Lorg/apache/ldap/server/authn/AnonymousAuthenticator;

    invoke-direct {v2}, Lorg/apache/ldap/server/authn/AnonymousAuthenticator;-><init>()V

    .line 93
    invoke-interface {v2, v0}, Lorg/apache/ldap/server/authn/Authenticator;->init(Lorg/apache/ldap/server/authn/AuthenticatorConfig;)V

    .line 95
    invoke-virtual {p0, v2}, Lorg/apache/ldap/server/authn/AuthenticationService;->register(Lorg/apache/ldap/server/authn/Authenticator;)V

    .line 98
    new-instance v0, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;

    invoke-direct {v0}, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;-><init>()V

    .line 100
    const-string v2, "simple"

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->setAuthenticatorName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->setAuthenticatorContext(Lorg/apache/ldap/server/authn/AuthenticatorContext;)V

    .line 104
    new-instance v2, Lorg/apache/ldap/server/authn/SimpleAuthenticator;

    invoke-direct {v2}, Lorg/apache/ldap/server/authn/SimpleAuthenticator;-><init>()V

    .line 106
    invoke-interface {v2, v0}, Lorg/apache/ldap/server/authn/Authenticator;->init(Lorg/apache/ldap/server/authn/AuthenticatorConfig;)V

    .line 108
    invoke-virtual {p0, v2}, Lorg/apache/ldap/server/authn/AuthenticationService;->register(Lorg/apache/ldap/server/authn/Authenticator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 115
    check-cast v0, [Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;

    .line 117
    new-instance v0, Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getEnvironment()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lorg/apache/ldap/server/authn/AuthenticatorConfigBuilder;->getAuthenticatorConfigs(Ljava/util/Hashtable;)[Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    .line 119
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_0

    return-void

    .line 123
    :cond_0
    :try_start_1
    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->setAuthenticatorContext(Lorg/apache/ldap/server/authn/AuthenticatorContext;)V

    .line 125
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/apache/ldap/server/authn/GenericAuthenticatorConfig;->getAuthenticatorClass()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 129
    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 131
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ldap/server/authn/AbstractAuthenticator;

    .line 133
    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lorg/apache/ldap/server/authn/AbstractAuthenticator;->init(Lorg/apache/ldap/server/authn/AuthenticatorConfig;)V

    .line 135
    invoke-virtual {p0, v3}, Lorg/apache/ldap/server/authn/AuthenticationService;->register(Lorg/apache/ldap/server/authn/Authenticator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 139
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 112
    new-instance v0, Ljavax/naming/NamingException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Invocation;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 208
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Invocation;->getContextStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/server/jndi/ServerLdapContext;

    .line 210
    invoke-virtual {v0}, Lorg/apache/ldap/server/jndi/ServerContext;->getPrincipal()Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object v1

    const-string v2, "java.naming.security.credentials"

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v0}, Lorg/apache/ldap/server/jndi/ServerContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/jndi/ServerContext;->removeFromEnvironment(Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void

    .line 222
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ldap/server/jndi/ServerContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v1

    const-string v3, "java.naming.security.authentication"

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    .line 226
    invoke-virtual {v0}, Lorg/apache/ldap/server/jndi/ServerContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    const-string v1, "simple"

    goto :goto_0

    .line 236
    :cond_2
    const-string v1, "none"

    .line 241
    :cond_3
    :goto_0
    invoke-static {v1}, Lorg/apache/ldap/common/util/StringTools;->deepTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    .line 249
    :goto_1
    array-length v6, v1

    if-lt v4, v6, :cond_4

    goto :goto_2

    .line 251
    :cond_4
    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Lorg/apache/ldap/server/authn/AuthenticationService;->getAuthenticators(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v5

    if-eqz v5, :cond_7

    :goto_2
    if-eqz v5, :cond_6

    .line 269
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 273
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ldap/server/authn/Authenticator;

    .line 277
    invoke-interface {v4, v0}, Lorg/apache/ldap/server/authn/Authenticator;->authenticate(Lorg/apache/ldap/server/jndi/ServerContext;)Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object v4

    .line 281
    new-instance v5, Lorg/apache/ldap/server/authn/AuthenticationService$TrustedPrincipalWrapper;

    invoke-direct {v5, p0, v4, v3}, Lorg/apache/ldap/server/authn/AuthenticationService$TrustedPrincipalWrapper;-><init>(Lorg/apache/ldap/server/authn/AuthenticationService;Lorg/apache/ldap/server/authn/LdapPrincipal;Lorg/apache/ldap/server/authn/AuthenticationService$TrustedPrincipalWrapper;)V

    invoke-virtual {v0, v5}, Lorg/apache/ldap/server/jndi/ServerContext;->setPrincipal(Lorg/apache/ldap/server/authn/AuthenticationService$TrustedPrincipalWrapper;)V

    .line 285
    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/jndi/ServerContext;->removeFromEnvironment(Ljava/lang/String;)Ljava/lang/Object;

    .line 287
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V
    :try_end_0
    .catch Lorg/apache/ldap/common/exception/LdapAuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 297
    :cond_5
    new-instance p1, Lorg/apache/ldap/common/exception/LdapAuthenticationException;

    invoke-direct {p1}, Lorg/apache/ldap/common/exception/LdapAuthenticationException;-><init>()V

    throw p1

    .line 261
    :cond_6
    invoke-virtual {v0}, Lorg/apache/ldap/server/jndi/ServerContext;->getEnvironment()Ljava/util/Hashtable;

    .line 263
    sget-object p1, Lorg/apache/ldap/common/message/ResultCodeEnum;->AUTHMETHODNOTSUPPORTED:Lorg/apache/ldap/common/message/ResultCodeEnum;

    .line 265
    new-instance p2, Lorg/apache/ldap/common/exception/LdapAuthenticationNotSupportedException;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/exception/LdapAuthenticationNotSupportedException;-><init>(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public register(Lorg/apache/ldap/server/authn/Authenticator;)V
    .locals 3

    .line 160
    invoke-interface {p1}, Lorg/apache/ldap/server/authn/Authenticator;->getAuthenticatorType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/authn/AuthenticationService;->getAuthenticators(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v1, p0, Lorg/apache/ldap/server/authn/AuthenticationService;->authenticators:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ldap/server/authn/Authenticator;->getAuthenticatorType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregister(Lorg/apache/ldap/server/authn/Authenticator;)V
    .locals 1

    .line 183
    invoke-interface {p1}, Lorg/apache/ldap/server/authn/Authenticator;->getAuthenticatorType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/authn/AuthenticationService;->getAuthenticators(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
