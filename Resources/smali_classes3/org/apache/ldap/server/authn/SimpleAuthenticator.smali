.class public Lorg/apache/ldap/server/authn/SimpleAuthenticator;
.super Lorg/apache/ldap/server/authn/AbstractAuthenticator;
.source "SimpleAuthenticator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    const-string v0, "simple"

    invoke-direct {p0, v0}, Lorg/apache/ldap/server/authn/AbstractAuthenticator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/ldap/server/jndi/ServerContext;)Lorg/apache/ldap/server/authn/LdapPrincipal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lorg/apache/ldap/server/jndi/ServerContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "java.naming.security.credentials"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lorg/apache/ldap/common/util/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 66
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 68
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/ldap/server/jndi/ServerContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "java.naming.security.principal"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 81
    invoke-virtual {p1}, Lorg/apache/ldap/server/jndi/ServerContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 91
    new-instance v1, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v1, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lorg/apache/ldap/server/authn/SimpleAuthenticator;->getAuthenticatorContext()Lorg/apache/ldap/server/authn/AuthenticatorContext;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ldap/server/authn/AuthenticatorContext;->getPartitionNexus()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object p1

    .line 95
    :try_start_0
    instance-of v2, p0, Ljavax/naming/Context;

    if-eqz v2, :cond_2

    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_2

    instance-of v2, p1, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    invoke-interface {p1, v1}, Lorg/apache/ldap/server/PartitionNexus;->lookup(Ljavax/naming/Name;)Ljavax/naming/directory/Attributes;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v3, p0, Ljavax/naming/Context;

    if-eqz v3, :cond_3

    instance-of v3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v3, :cond_3

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    move-object v3, p0

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {p1, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_3
    if-eqz v2, :cond_7

    .line 104
    const-string p1, "userPassword"

    invoke-interface {v2, p1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object p1

    if-nez p1, :cond_4

    .line 110
    sget-object p1, Lorg/apache/ldap/common/util/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_1

    .line 114
    :cond_4
    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object p1

    .line 116
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 118
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 122
    :cond_5
    :goto_1
    invoke-static {v0, p1}, Lorg/apache/ldap/common/util/ArrayUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 127
    new-instance p1, Lorg/apache/ldap/server/authn/LdapPrincipal;

    invoke-direct {p1, v1}, Lorg/apache/ldap/server/authn/LdapPrincipal;-><init>(Ljavax/naming/Name;)V

    return-object p1

    .line 124
    :cond_6
    new-instance p1, Lorg/apache/ldap/common/exception/LdapAuthenticationException;

    invoke-direct {p1}, Lorg/apache/ldap/common/exception/LdapAuthenticationException;-><init>()V

    throw p1

    .line 99
    :cond_7
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNameNotFoundException;

    invoke-direct {p1}, Lorg/apache/ldap/common/exception/LdapNameNotFoundException;-><init>()V

    throw p1

    :catchall_0
    move-exception v0

    .line 95
    instance-of v1, p0, Ljavax/naming/Context;

    if-eqz v1, :cond_8

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_8

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_8

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Ljavax/naming/Context;

    invoke-virtual {p1, v1}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_8
    throw v0

    .line 85
    :cond_9
    new-instance p1, Lorg/apache/ldap/common/exception/LdapAuthenticationException;

    invoke-direct {p1}, Lorg/apache/ldap/common/exception/LdapAuthenticationException;-><init>()V

    throw p1

    .line 77
    :cond_a
    new-instance p1, Lorg/apache/ldap/common/exception/LdapAuthenticationException;

    invoke-direct {p1}, Lorg/apache/ldap/common/exception/LdapAuthenticationException;-><init>()V

    throw p1
.end method
