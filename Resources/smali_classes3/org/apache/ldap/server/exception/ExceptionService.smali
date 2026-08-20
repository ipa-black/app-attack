.class public Lorg/apache/ldap/server/exception/ExceptionService;
.super Lorg/apache/ldap/server/interceptor/BaseInterceptor;
.source "ExceptionService.java"


# instance fields
.field private nexus:Lorg/apache/ldap/server/RootNexus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;-><init>()V

    return-void
.end method

.method private assertHasEntry(Ljava/lang/String;Ljavax/naming/Name;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lorg/apache/ldap/server/exception/ExceptionService;->nexus:Lorg/apache/ldap/server/RootNexus;

    :try_start_0
    instance-of v1, p0, Ljavax/naming/Context;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/ldap/server/RootNexus;->hasEntry(Ljavax/naming/Name;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    instance-of v2, p0, Ljavax/naming/Context;

    if-eqz v2, :cond_1

    instance-of v3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v3, :cond_1

    instance-of v0, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    move-object v3, p0

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    if-nez v1, :cond_6

    if-eqz p1, :cond_2

    .line 342
    new-instance v0, Lorg/apache/ldap/common/exception/LdapNameNotFoundException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/exception/LdapNameNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_2
    new-instance v0, Lorg/apache/ldap/common/exception/LdapNameNotFoundException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/exception/LdapNameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 349
    :goto_0
    iget-object p1, p0, Lorg/apache/ldap/server/exception/ExceptionService;->nexus:Lorg/apache/ldap/server/RootNexus;

    :try_start_1
    instance-of v1, p0, Ljavax/naming/Context;

    if-eqz v1, :cond_3

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_3

    instance-of v1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v1, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/apache/ldap/server/RootNexus;->getMatchedDn(Ljavax/naming/Name;Z)Ljavax/naming/Name;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_4

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_4

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Ljavax/naming/Context;

    invoke-virtual {p1, v1}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_4
    invoke-virtual {v0, p2}, Lorg/apache/ldap/common/exception/LdapNameNotFoundException;->setResolvedName(Ljavax/naming/Name;)V

    .line 350
    throw v0

    :catchall_0
    move-exception p2

    if-eqz v2, :cond_5

    .line 349
    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_5

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_5

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Ljavax/naming/Context;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_5
    throw p2

    :cond_6
    return-void

    :catchall_1
    move-exception p1

    .line 336
    instance-of p2, p0, Ljavax/naming/Context;

    if-eqz p2, :cond_7

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_7

    instance-of p2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_7

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Ljavax/naming/Context;

    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_7
    throw p1
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public init(Lorg/apache/ldap/server/interceptor/InterceptorContext;)V
    .locals 0

    .line 67
    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getRootNexus()Lorg/apache/ldap/server/RootNexus;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/exception/ExceptionService;->nexus:Lorg/apache/ldap/server/RootNexus;

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Add;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 83
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Add;->getNormalizedName()Ljavax/naming/Name;

    move-result-object v0

    .line 84
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Add;->getUserProvidedName()Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lorg/apache/ldap/server/exception/ExceptionService;->nexus:Lorg/apache/ldap/server/RootNexus;

    :try_start_0
    instance-of v3, p0, Ljavax/naming/Context;

    if-eqz v3, :cond_0

    instance-of v3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v3, :cond_0

    instance-of v3, v2, Lorg/apache/ldap/server/db/Database;

    if-nez v3, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Ljavax/naming/Context;

    invoke-virtual {v3, v4}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-virtual {v2, v0}, Lorg/apache/ldap/server/RootNexus;->hasEntry(Ljavax/naming/Name;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    instance-of v4, p0, Ljavax/naming/Context;

    if-eqz v4, :cond_1

    instance-of v5, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v5, :cond_1

    instance-of v2, v2, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    move-object v5, p0

    check-cast v5, Ljavax/naming/Context;

    invoke-virtual {v2, v5}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    if-nez v3, :cond_6

    .line 92
    new-instance v2, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v2, v1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 93
    invoke-interface {v2, v3}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object v2

    .line 96
    const-string v5, "Attempt to add under non-existant parent: "

    invoke-direct {p0, v5, v2}, Lorg/apache/ldap/server/exception/ExceptionService;->assertHasEntry(Ljava/lang/String;Ljavax/naming/Name;)V

    .line 99
    iget-object v5, p0, Lorg/apache/ldap/server/exception/ExceptionService;->nexus:Lorg/apache/ldap/server/RootNexus;

    invoke-interface {v0, v3}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object v0

    :try_start_1
    instance-of v3, p0, Ljavax/naming/Context;

    if-eqz v3, :cond_2

    instance-of v3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v3, :cond_2

    instance-of v3, v5, Lorg/apache/ldap/server/db/Database;

    if-nez v3, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v3

    move-object v6, p0

    check-cast v6, Ljavax/naming/Context;

    invoke-virtual {v3, v6}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    invoke-virtual {v5, v0}, Lorg/apache/ldap/server/RootNexus;->lookup(Ljavax/naming/Name;)Ljavax/naming/directory/Attributes;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    instance-of v3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v3, :cond_3

    instance-of v3, v5, Lorg/apache/ldap/server/db/Database;

    if-nez v3, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Ljavax/naming/Context;

    invoke-virtual {v3, v4}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    .line 100
    :cond_3
    const-string v3, "objectClass"

    invoke-interface {v0, v3}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v0

    .line 101
    const-string v3, "alias"

    invoke-interface {v0, v3}, Ljavax/naming/directory/Attribute;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 111
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void

    .line 103
    :cond_4
    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, "Attempt to add entry to alias \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 104
    const-string p2, "\' not allowed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    sget-object p2, Lorg/apache/ldap/common/message/ResultCodeEnum;->ALIASPROBLEM:Lorg/apache/ldap/common/message/ResultCodeEnum;

    .line 106
    new-instance v0, Lorg/apache/ldap/common/exception/LdapNamingException;

    invoke-direct {v0, p1, p2}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 107
    invoke-virtual {v0, v2}, Ljavax/naming/NamingException;->setResolvedName(Ljavax/naming/Name;)V

    .line 108
    throw v0

    :catchall_0
    move-exception p1

    if-eqz v4, :cond_5

    .line 99
    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_5

    instance-of p2, v5, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_5

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Ljavax/naming/Context;

    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_5
    throw p1

    .line 87
    :cond_6
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNameAlreadyBoundException;

    invoke-direct {p1}, Lorg/apache/ldap/common/exception/LdapNameAlreadyBoundException;-><init>()V

    .line 88
    new-instance p2, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {p2, v1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljavax/naming/NamingException;->setResolvedName(Ljavax/naming/Name;)V

    .line 89
    throw p1

    :catchall_1
    move-exception p1

    .line 85
    instance-of p2, p0, Ljavax/naming/Context;

    if-eqz p2, :cond_7

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_7

    instance-of p2, v2, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_7

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Ljavax/naming/Context;

    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_7
    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Delete;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 121
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Delete;->getName()Ljavax/naming/Name;

    move-result-object v0

    .line 124
    const-string v1, "Attempt to delete non-existant entry: "

    .line 125
    invoke-direct {p0, v1, v0}, Lorg/apache/ldap/server/exception/ExceptionService;->assertHasEntry(Ljava/lang/String;Ljavax/naming/Name;)V

    .line 129
    iget-object v1, p0, Lorg/apache/ldap/server/exception/ExceptionService;->nexus:Lorg/apache/ldap/server/RootNexus;

    :try_start_0
    instance-of v2, p0, Ljavax/naming/Context;

    if-eqz v2, :cond_0

    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_0

    instance-of v2, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-virtual {v1, v0}, Lorg/apache/ldap/server/RootNexus;->list(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v3, p0, Ljavax/naming/Context;

    if-eqz v3, :cond_1

    instance-of v3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v3, :cond_1

    instance-of v1, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v1, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    .line 130
    :cond_1
    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    .line 135
    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->close()V

    if-nez v1, :cond_2

    .line 143
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void

    .line 138
    :cond_2
    new-instance p1, Lorg/apache/ldap/common/exception/LdapContextNotEmptyException;

    invoke-direct {p1}, Lorg/apache/ldap/common/exception/LdapContextNotEmptyException;-><init>()V

    .line 139
    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/exception/LdapContextNotEmptyException;->setResolvedName(Ljavax/naming/Name;)V

    .line 140
    throw p1

    :catchall_0
    move-exception p1

    .line 129
    instance-of p2, p0, Ljavax/naming/Context;

    if-eqz p2, :cond_3

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_3

    instance-of p2, v1, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Ljavax/naming/Context;

    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_3
    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 153
    const-string v0, "Attempt to search under non-existant entry: "

    .line 154
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/List;->getBaseName()Ljavax/naming/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/ldap/server/exception/ExceptionService;->assertHasEntry(Ljava/lang/String;Ljavax/naming/Name;)V

    .line 156
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Lookup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 165
    const-string v0, "Attempt to lookup non-existant entry: "

    .line 166
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Lookup;->getName()Ljavax/naming/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/ldap/server/exception/ExceptionService;->assertHasEntry(Ljava/lang/String;Ljavax/naming/Name;)V

    .line 168
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/LookupWithAttrIds;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 178
    const-string v0, "Attempt to lookup non-existant entry: "

    .line 179
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;->getName()Ljavax/naming/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/ldap/server/exception/ExceptionService;->assertHasEntry(Ljava/lang/String;Ljavax/naming/Name;)V

    .line 181
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Modify;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 191
    const-string v0, "Attempt to modify non-existant entry: "

    .line 192
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Modify;->getName()Ljavax/naming/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/ldap/server/exception/ExceptionService;->assertHasEntry(Ljava/lang/String;Ljavax/naming/Name;)V

    .line 194
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ModifyMany;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 204
    const-string v0, "Attempt to modify non-existant entry: "

    .line 205
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/ModifyMany;->getName()Ljavax/naming/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/ldap/server/exception/ExceptionService;->assertHasEntry(Ljava/lang/String;Ljavax/naming/Name;)V

    .line 207
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ModifyRN;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 216
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/ModifyRN;->getName()Ljavax/naming/Name;

    move-result-object v0

    .line 217
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/ModifyRN;->getNewRelativeName()Ljava/lang/String;

    move-result-object v1

    .line 220
    const-string v2, "Attempt to rename non-existant entry: "

    .line 221
    invoke-direct {p0, v2, v0}, Lorg/apache/ldap/server/exception/ExceptionService;->assertHasEntry(Ljava/lang/String;Ljavax/naming/Name;)V

    const/4 v2, 0x1

    .line 224
    invoke-interface {v0, v2}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object v0

    invoke-interface {v0, v1}, Ljavax/naming/Name;->add(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lorg/apache/ldap/server/exception/ExceptionService;->nexus:Lorg/apache/ldap/server/RootNexus;

    :try_start_0
    instance-of v2, p0, Ljavax/naming/Context;

    if-eqz v2, :cond_0

    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_0

    instance-of v2, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-virtual {v1, v0}, Lorg/apache/ldap/server/RootNexus;->hasEntry(Ljavax/naming/Name;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v3, p0, Ljavax/naming/Context;

    if-eqz v3, :cond_1

    instance-of v3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v3, :cond_1

    instance-of v1, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v1, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    if-nez v2, :cond_2

    .line 234
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void

    .line 228
    :cond_2
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNameAlreadyBoundException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "target entry "

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 229
    const-string v1, " already exists!"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 228
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/exception/LdapNameAlreadyBoundException;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/exception/LdapNameAlreadyBoundException;->setResolvedName(Ljavax/naming/Name;)V

    .line 231
    throw p1

    :catchall_0
    move-exception p1

    .line 225
    instance-of p2, p0, Ljavax/naming/Context;

    if-eqz p2, :cond_3

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_3

    instance-of p2, v1, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Ljavax/naming/Context;

    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_3
    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Move;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 246
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Move;->getName()Ljavax/naming/Name;

    move-result-object v0

    const-string v1, "Attempt to move to non-existant parent: "

    invoke-direct {p0, v1, v0}, Lorg/apache/ldap/server/exception/ExceptionService;->assertHasEntry(Ljava/lang/String;Ljavax/naming/Name;)V

    .line 250
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Move;->getNewParentName()Ljavax/naming/Name;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/ldap/server/exception/ExceptionService;->assertHasEntry(Ljava/lang/String;Ljavax/naming/Name;)V

    .line 253
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Move;->getName()Ljavax/naming/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Move;->getName()Ljavax/naming/Name;

    move-result-object v1

    invoke-interface {v1}, Ljavax/naming/Name;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Move;->getNewParentName()Ljavax/naming/Name;

    move-result-object v1

    invoke-interface {v1}, Ljavax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/naming/Name;

    .line 255
    invoke-interface {v1, v0}, Ljavax/naming/Name;->add(Ljava/lang/String;)Ljavax/naming/Name;

    .line 256
    iget-object v0, p0, Lorg/apache/ldap/server/exception/ExceptionService;->nexus:Lorg/apache/ldap/server/RootNexus;

    :try_start_0
    instance-of v2, p0, Ljavax/naming/Context;

    if-eqz v2, :cond_0

    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_0

    instance-of v2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/RootNexus;->hasEntry(Ljavax/naming/Name;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v3, p0, Ljavax/naming/Context;

    if-eqz v3, :cond_1

    instance-of v3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v3, :cond_1

    instance-of v0, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    move-object v3, p0

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    if-nez v2, :cond_2

    .line 265
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void

    .line 259
    :cond_2
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNameAlreadyBoundException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "target entry "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 260
    const-string v0, " already exists!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 259
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/exception/LdapNameAlreadyBoundException;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1, v1}, Lorg/apache/ldap/common/exception/LdapNameAlreadyBoundException;->setResolvedName(Ljavax/naming/Name;)V

    .line 262
    throw p1

    :catchall_0
    move-exception p1

    .line 256
    instance-of p2, p0, Ljavax/naming/Context;

    if-eqz p2, :cond_3

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_3

    instance-of p2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Ljavax/naming/Context;

    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_3
    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/MoveAndModifyRN;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 277
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/MoveAndModifyRN;->getName()Ljavax/naming/Name;

    move-result-object v0

    const-string v1, "Attempt to move to non-existant parent: "

    invoke-direct {p0, v1, v0}, Lorg/apache/ldap/server/exception/ExceptionService;->assertHasEntry(Ljava/lang/String;Ljavax/naming/Name;)V

    .line 281
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/MoveAndModifyRN;->getNewParentName()Ljavax/naming/Name;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/ldap/server/exception/ExceptionService;->assertHasEntry(Ljava/lang/String;Ljavax/naming/Name;)V

    .line 284
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/MoveAndModifyRN;->getNewParentName()Ljavax/naming/Name;

    move-result-object v0

    invoke-interface {v0}, Ljavax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/Name;

    .line 285
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/MoveAndModifyRN;->getNewRelativeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/naming/Name;->add(Ljava/lang/String;)Ljavax/naming/Name;

    .line 286
    iget-object v1, p0, Lorg/apache/ldap/server/exception/ExceptionService;->nexus:Lorg/apache/ldap/server/RootNexus;

    :try_start_0
    instance-of v2, p0, Ljavax/naming/Context;

    if-eqz v2, :cond_0

    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_0

    instance-of v2, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-virtual {v1, v0}, Lorg/apache/ldap/server/RootNexus;->hasEntry(Ljavax/naming/Name;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v3, p0, Ljavax/naming/Context;

    if-eqz v3, :cond_1

    instance-of v3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v3, :cond_1

    instance-of v1, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v1, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    if-nez v2, :cond_2

    .line 295
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void

    .line 289
    :cond_2
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNameAlreadyBoundException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "target entry "

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 290
    const-string v1, " already exists!"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 289
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/exception/LdapNameAlreadyBoundException;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/exception/LdapNameAlreadyBoundException;->setResolvedName(Ljavax/naming/Name;)V

    .line 292
    throw p1

    :catchall_0
    move-exception p1

    .line 286
    instance-of p2, p0, Ljavax/naming/Context;

    if-eqz p2, :cond_3

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_3

    instance-of p2, v1, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Ljavax/naming/Context;

    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_3
    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Search;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 306
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getBaseName()Ljavax/naming/Name;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljavax/naming/Name;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 309
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void

    .line 313
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/server/exception/ExceptionService;->nexus:Lorg/apache/ldap/server/RootNexus;

    invoke-virtual {v1}, Lorg/apache/ldap/server/RootNexus;->getRootDSE()Ljavax/naming/directory/Attributes;

    move-result-object v1

    const-string v2, "subschemaSubentry"

    invoke-interface {v1, v2}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v1

    .line 314
    invoke-interface {v1}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void

    .line 320
    :cond_1
    const-string v1, "Attempt to search under non-existant entry: "

    invoke-direct {p0, v1, v0}, Lorg/apache/ldap/server/exception/ExceptionService;->assertHasEntry(Ljava/lang/String;Ljavax/naming/Name;)V

    .line 322
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method
