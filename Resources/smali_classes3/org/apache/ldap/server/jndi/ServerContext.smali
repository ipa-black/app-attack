.class public abstract Lorg/apache/ldap/server/jndi/ServerContext;
.super Ljava/lang/Object;
.source "ServerContext.java"

# interfaces
.implements Ljavax/naming/Context;


# static fields
.field public static final DELETE_OLD_RDN_PROP:Ljava/lang/String; = "java.naming.ldap.deleteRDN"


# instance fields
.field private final dn:Lorg/apache/ldap/common/name/LdapName;

.field private final env:Ljava/util/Hashtable;

.field private final nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

.field private principal:Lorg/apache/ldap/server/authn/LdapPrincipal;


# direct methods
.method protected constructor <init>(Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    .line 90
    invoke-virtual {p2}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->env:Ljava/util/Hashtable;

    .line 96
    const-string v0, "java.naming.provider.url"

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 105
    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 116
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p2}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->dn:Lorg/apache/ldap/common/name/LdapName;

    .line 118
    :try_start_0
    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_0

    instance-of p2, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-interface {p1, v0}, Lorg/apache/ldap/server/PartitionNexus;->hasEntry(Ljavax/naming/Name;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_1

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    if-eqz p2, :cond_2

    return-void

    .line 120
    :cond_2
    new-instance p1, Ljavax/naming/NameNotFoundException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " does not exist"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/naming/NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p2

    .line 118
    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_3

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_3
    throw p2

    .line 113
    :cond_4
    new-instance p1, Ljavax/naming/ConfigurationException;

    const-string p2, "Expected value for property java.naming.provider.url but it was set to null in env!"

    invoke-direct {p1, p2}, Ljavax/naming/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_5
    new-instance p1, Ljavax/naming/ConfigurationException;

    const-string p2, "Expected property java.naming.provider.url but could not find it in env!"

    invoke-direct {p1, p2}, Ljavax/naming/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lorg/apache/ldap/server/authn/LdapPrincipal;Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;Ljavax/naming/Name;)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-interface {p4}, Ljavax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/name/LdapName;

    iput-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->dn:Lorg/apache/ldap/common/name/LdapName;

    .line 139
    invoke-virtual {p3}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Hashtable;

    iput-object p3, p0, Lorg/apache/ldap/server/jndi/ServerContext;->env:Ljava/util/Hashtable;

    .line 141
    const-string v0, "java.naming.provider.url"

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iput-object p2, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    .line 145
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerContext;->principal:Lorg/apache/ldap/server/authn/LdapPrincipal;

    return-void
.end method


# virtual methods
.method public addToEnvironment(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->env:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 333
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/ldap/server/jndi/ServerContext;->bind(Ljavax/naming/Name;Ljava/lang/Object;)V

    return-void
.end method

.method public bind(Ljavax/naming/Name;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->env:Ljava/util/Hashtable;

    const/4 v1, 0x0

    invoke-static {p2, p1, p0, v0, v1}, Ljavax/naming/spi/DirectoryManager;->getStateToBind(Ljava/lang/Object;Ljavax/naming/Name;Ljavax/naming/Context;Ljava/util/Hashtable;Ljavax/naming/directory/Attributes;)Ljavax/naming/spi/DirStateFactory$Result;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Ljavax/naming/spi/DirStateFactory$Result;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 349
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object p1

    .line 351
    iget-object p2, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_0

    instance-of v2, p2, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-interface {p2, v1, p1, v0}, Lorg/apache/ldap/server/PartitionNexus;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_1

    instance-of p1, p2, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_2

    instance-of p2, p2, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p1

    .line 357
    :cond_3
    instance-of v1, p2, Ljavax/naming/Referenceable;

    if-nez v1, :cond_10

    .line 365
    instance-of v1, p2, Ljavax/naming/Reference;

    if-nez v1, :cond_f

    .line 371
    instance-of v1, p2, Ljava/io/Serializable;

    if-eqz v1, :cond_8

    .line 375
    new-instance v1, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    if-eqz v0, :cond_5

    .line 377
    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 379
    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v0

    .line 381
    :goto_0
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 383
    :cond_4
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/naming/directory/Attribute;

    invoke-interface {v1, v2}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_0

    .line 387
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object p1

    .line 391
    invoke-static {v1, p2}, Lorg/apache/ldap/server/jndi/JavaLdapSupport;->serialize(Ljavax/naming/directory/Attributes;Ljava/lang/Object;)V

    .line 393
    iget-object p2, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_6

    instance-of v2, p2, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_6

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_6
    invoke-interface {p2, v0, p1, v1}, Lorg/apache/ldap/server/PartitionNexus;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_c

    instance-of p1, p2, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_c

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    goto :goto_4

    :catchall_1
    move-exception p1

    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_7

    instance-of p2, p2, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_7

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_7
    throw p1

    .line 395
    :cond_8
    instance-of v1, p2, Ljavax/naming/directory/DirContext;

    if-eqz v1, :cond_e

    .line 399
    check-cast p2, Ljavax/naming/directory/DirContext;

    const-string v1, ""

    invoke-interface {p2, v1}, Ljavax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object p2

    if-eqz v0, :cond_a

    .line 401
    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 403
    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v0

    .line 405
    :goto_2
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    .line 407
    :cond_9
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/naming/directory/Attribute;

    invoke-interface {p2, v1}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_2

    .line 411
    :cond_a
    :goto_3
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object p1

    .line 413
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_2
    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_b

    instance-of v2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_b

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_b
    invoke-interface {v0, v1, p1, p2}, Lorg/apache/ldap/server/PartitionNexus;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_c

    instance-of p1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_c

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_c
    :goto_4
    return-void

    :catchall_2
    move-exception p1

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_d

    instance-of p2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_d

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_d
    throw p1

    .line 417
    :cond_e
    new-instance p1, Ljavax/naming/NamingException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Can\'t find a way to bind: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 369
    :cond_f
    new-instance p1, Ljavax/naming/NamingException;

    const-string p2, "Do not know how to store References yet!"

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 359
    :cond_10
    check-cast p2, Ljavax/naming/Referenceable;

    invoke-interface {p2}, Ljavax/naming/Referenceable;->getReference()Ljavax/naming/Reference;

    .line 361
    new-instance p1, Ljavax/naming/NamingException;

    const-string p2, "Do not know how to store Referenceables yet!"

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/InvalidNameException;
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->dn:Lorg/apache/ldap/common/name/LdapName;

    invoke-virtual {v0}, Lorg/apache/ldap/common/name/LdapName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/name/LdapName;

    .line 771
    invoke-virtual {v0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/ldap/common/name/LdapName;->addAll(ILjavax/naming/Name;)Ljavax/naming/Name;

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    return-void
.end method

.method public composeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 693
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->composeName(Ljavax/naming/Name;Ljavax/naming/Name;)Ljavax/naming/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public composeName(Ljavax/naming/Name;Ljavax/naming/Name;)Ljavax/naming/Name;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 704
    invoke-interface {p2}, Ljavax/naming/Name;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 725
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object p1

    const/4 v0, 0x0

    .line 727
    invoke-interface {p2, v0}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 730
    :goto_0
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 733
    invoke-interface {p1, v0}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    .line 739
    :cond_1
    invoke-interface {p1, v0}, Ljavax/naming/Name;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 743
    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "The prefix \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "\' is not an ancestor of this "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 745
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, "entry \'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/ldap/server/jndi/ServerContext;->dn:Lorg/apache/ldap/common/name/LdapName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 747
    new-instance p2, Ljavax/naming/NamingException;

    invoke-direct {p2, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    return-object p1
.end method

.method public createSubcontext(Ljava/lang/String;)Ljavax/naming/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 259
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/jndi/ServerContext;->createSubcontext(Ljavax/naming/Name;)Ljavax/naming/Context;

    move-result-object p1

    return-object p1
.end method

.method public createSubcontext(Ljavax/naming/Name;)Ljavax/naming/Context;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 268
    new-instance v0, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v0}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    .line 270
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object v1

    .line 272
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-static {p1}, Lorg/apache/ldap/common/util/NamespaceTools;->getRdnAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-static {p1}, Lorg/apache/ldap/common/util/NamespaceTools;->getRdnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-interface {v0, v2, p1}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 280
    const-string p1, "javaContainer"

    const-string v2, "objectClass"

    invoke-interface {v0, v2, p1}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 282
    const-string p1, "top"

    invoke-interface {v0, v2, p1}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 291
    iget-object p1, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    invoke-virtual {v1}, Lorg/apache/ldap/common/name/LdapName;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    instance-of v3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v3, :cond_0

    instance-of v3, p1, Lorg/apache/ldap/server/db/Database;

    if-nez v3, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-interface {p1, v2, v1, v0}, Lorg/apache/ldap/server/PartitionNexus;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_1

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    .line 293
    :cond_1
    new-instance p1, Lorg/apache/ldap/server/jndi/ServerLdapContext;

    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->principal:Lorg/apache/ldap/server/authn/LdapPrincipal;

    iget-object v2, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    iget-object v3, p0, Lorg/apache/ldap/server/jndi/ServerContext;->env:Ljava/util/Hashtable;

    invoke-direct {p1, v0, v2, v3, v1}, Lorg/apache/ldap/server/jndi/ServerLdapContext;-><init>(Lorg/apache/ldap/server/authn/LdapPrincipal;Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;Ljavax/naming/Name;)V

    .line 295
    move-object v0, p0

    check-cast v0, Lorg/apache/ldap/server/jndi/ServerLdapContext;

    invoke-virtual {v0}, Lorg/apache/ldap/server/jndi/ServerLdapContext;->getRequestControls()[Ljavax/naming/ldap/Control;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/naming/ldap/Control;

    .line 297
    invoke-virtual {p1, v0}, Lorg/apache/ldap/server/jndi/ServerLdapContext;->setRequestControls([Ljavax/naming/ldap/Control;)V

    return-object p1

    :catchall_0
    move-exception v0

    .line 291
    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_2

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw v0
.end method

.method public destroySubcontext(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 308
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/jndi/ServerContext;->destroySubcontext(Ljavax/naming/Name;)V

    return-void
.end method

.method public destroySubcontext(Ljavax/naming/Name;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object p1

    .line 319
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    :try_start_0
    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/ldap/server/PartitionNexus;->delete(Ljavax/naming/Name;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_1

    instance-of p1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_2

    instance-of v0, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p1

    .line 321
    :cond_3
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    const-string v0, "can\'t delete the rootDSE"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getDn()Ljavax/naming/Name;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->dn:Lorg/apache/ldap/common/name/LdapName;

    return-object v0
.end method

.method public getEnvironment()Ljava/util/Hashtable;
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->env:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getNameInNamespace()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->dn:Lorg/apache/ldap/common/name/LdapName;

    invoke-virtual {v0}, Lorg/apache/ldap/common/name/LdapName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameParser(Ljava/lang/String;)Ljavax/naming/NameParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 625
    invoke-static {}, Lorg/apache/ldap/common/name/LdapName;->getNameParser()Lorg/apache/ldap/common/name/DnParser;

    move-result-object p1

    return-object p1
.end method

.method public getNameParser(Ljavax/naming/Name;)Ljavax/naming/NameParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 639
    invoke-static {}, Lorg/apache/ldap/common/name/LdapName;->getNameParser()Lorg/apache/ldap/common/name/DnParser;

    move-result-object p1

    return-object p1
.end method

.method protected getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    return-object v0
.end method

.method public getPrincipal()Lorg/apache/ldap/server/authn/LdapPrincipal;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->principal:Lorg/apache/ldap/server/authn/LdapPrincipal;

    return-object v0
.end method

.method public list(Ljava/lang/String;)Ljavax/naming/NamingEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 648
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    :try_start_0
    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_0

    instance-of p1, p0, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz p1, :cond_0

    instance-of p1, p0, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/jndi/ServerContext;->list(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz v0, :cond_2

    instance-of v0, p0, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p1
.end method

.method public list(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object p1

    :try_start_0
    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/ldap/server/PartitionNexus;->list(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_1

    instance-of v0, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_2

    instance-of v0, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p1
.end method

.method public listBindings(Ljava/lang/String;)Ljavax/naming/NamingEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 666
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/jndi/ServerContext;->listBindings(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1
.end method

.method public listBindings(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 676
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object p1

    .line 678
    new-instance v0, Lorg/apache/ldap/common/filter/PresenceNode;

    const-string v1, "objectClass"

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/filter/PresenceNode;-><init>(Ljava/lang/String;)V

    .line 680
    new-instance v1, Ljavax/naming/directory/SearchControls;

    invoke-direct {v1}, Ljavax/naming/directory/SearchControls;-><init>()V

    const/4 v2, 0x1

    .line 682
    invoke-virtual {v1, v2}, Ljavax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 684
    iget-object v2, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v3

    :try_start_0
    instance-of v4, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v4, :cond_0

    instance-of v4, v2, Lorg/apache/ldap/server/db/Database;

    if-nez v4, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-interface {v2, p1, v3, v0, v1}, Lorg/apache/ldap/server/PartitionNexus;->search(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_1

    instance-of v0, v2, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_2

    instance-of v0, v2, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p1
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 546
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/jndi/ServerContext;->lookup(Ljavax/naming/Name;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lookup(Ljavax/naming/Name;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 557
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    :try_start_0
    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_0

    instance-of v2, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-interface {v1, v0}, Lorg/apache/ldap/server/PartitionNexus;->lookup(Ljavax/naming/Name;)Ljavax/naming/directory/Attributes;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v3, :cond_1

    instance-of v1, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    .line 563
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/ldap/server/jndi/ServerContext;->env:Ljava/util/Hashtable;

    const/4 v3, 0x0

    invoke-static {v3, p1, p0, v1, v2}, Ljavax/naming/spi/DirectoryManager;->getObjectInstance(Ljava/lang/Object;Ljavax/naming/Name;Ljavax/naming/Context;Ljava/util/Hashtable;Ljavax/naming/directory/Attributes;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_2

    return-object p1

    .line 576
    :cond_2
    const-string p1, "javaClassName"

    invoke-interface {v2, p1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 579
    invoke-static {v2}, Lorg/apache/ldap/server/jndi/JavaLdapSupport;->deserialize(Ljavax/naming/directory/Attributes;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 583
    :cond_3
    new-instance p1, Lorg/apache/ldap/server/jndi/ServerLdapContext;

    iget-object v1, p0, Lorg/apache/ldap/server/jndi/ServerContext;->principal:Lorg/apache/ldap/server/authn/LdapPrincipal;

    iget-object v2, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    iget-object v3, p0, Lorg/apache/ldap/server/jndi/ServerContext;->env:Ljava/util/Hashtable;

    invoke-direct {p1, v1, v2, v3, v0}, Lorg/apache/ldap/server/jndi/ServerLdapContext;-><init>(Lorg/apache/ldap/server/authn/LdapPrincipal;Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;Ljavax/naming/Name;)V

    .line 586
    move-object v0, p0

    check-cast v0, Lorg/apache/ldap/server/jndi/ServerLdapContext;

    invoke-virtual {v0}, Lorg/apache/ldap/server/jndi/ServerLdapContext;->getRequestControls()[Ljavax/naming/ldap/Control;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 590
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/naming/ldap/Control;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/server/jndi/ServerLdapContext;->setRequestControls([Ljavax/naming/ldap/Control;)V

    :cond_4
    return-object p1

    :catch_0
    move-exception p1

    .line 567
    new-instance v0, Ljavax/naming/NamingException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 559
    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_5

    instance-of v0, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_5

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_5
    throw p1
.end method

.method public lookupLink(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 602
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public lookupLink(Ljavax/naming/Name;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 611
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 503
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/ldap/server/jndi/ServerContext;->rebind(Ljavax/naming/Name;Ljava/lang/Object;)V

    return-void
.end method

.method public rebind(Ljavax/naming/Name;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 512
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    :try_start_0
    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_0

    instance-of v2, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-interface {v1, v0}, Lorg/apache/ldap/server/PartitionNexus;->hasEntry(Ljavax/naming/Name;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    instance-of v3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v3, :cond_1

    instance-of v1, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    if-eqz v2, :cond_4

    .line 516
    iget-object v1, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    :try_start_1
    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_2

    instance-of v2, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    invoke-interface {v1, v0}, Lorg/apache/ldap/server/PartitionNexus;->delete(Ljavax/naming/Name;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_4

    instance-of v0, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_4

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    if-nez v3, :cond_3

    instance-of p2, v1, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_3
    throw p1

    .line 519
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/jndi/ServerContext;->bind(Ljavax/naming/Name;Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception p1

    .line 514
    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_5

    instance-of p2, v1, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_5

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_5
    throw p1
.end method

.method public removeFromEnvironment(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->env:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 427
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->rename(Ljavax/naming/Name;Ljavax/naming/Name;)V

    return-void
.end method

.method public rename(Ljavax/naming/Name;Ljavax/naming/Name;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 436
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object v0

    .line 438
    invoke-virtual {p0, p2}, Lorg/apache/ldap/server/jndi/ServerContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object v1

    .line 440
    invoke-interface {v0}, Ljavax/naming/Name;->size()I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    .line 445
    invoke-interface {p1, v2}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object v3

    .line 447
    invoke-interface {p2, v2}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object v4

    .line 449
    invoke-interface {p2}, Ljavax/naming/Name;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {p2, v5}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v5

    .line 451
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-interface {p1, v6}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v6

    .line 459
    iget-object v7, p0, Lorg/apache/ldap/server/jndi/ServerContext;->env:Ljava/util/Hashtable;

    const-string v8, "java.naming.ldap.deleteRDN"

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 461
    iget-object v7, p0, Lorg/apache/ldap/server/jndi/ServerContext;->env:Ljava/util/Hashtable;

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 463
    const-string v8, "false"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v2

    if-nez v8, :cond_0

    .line 465
    const-string v8, "no"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 467
    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move v7, v2

    .line 478
    :goto_0
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result p1

    invoke-interface {p2}, Ljavax/naming/Name;->size()I

    move-result p2

    if-ne p1, p2, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 480
    iget-object p1, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    :try_start_0
    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_1

    instance-of p2, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    invoke-interface {p1, v0, v5, v7}, Lorg/apache/ldap/server/PartitionNexus;->modifyRn(Ljavax/naming/Name;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_8

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_8

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    goto/16 :goto_1

    :catchall_0
    move-exception p2

    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_2

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p2

    .line 484
    :cond_3
    invoke-interface {v1, v2}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object p1

    .line 486
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 488
    iget-object p2, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    :try_start_1
    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_4

    instance-of v1, p2, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_4

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_4
    invoke-interface {p2, v0, p1}, Lorg/apache/ldap/server/PartitionNexus;->move(Ljavax/naming/Name;Ljavax/naming/Name;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_8

    instance-of p1, p2, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_8

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_5

    instance-of p2, p2, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_5

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_5
    throw p1

    .line 492
    :cond_6
    iget-object p2, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    :try_start_2
    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_7

    instance-of v1, p2, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_7

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_7
    invoke-interface {p2, v0, p1, v5, v7}, Lorg/apache/ldap/server/PartitionNexus;->move(Ljavax/naming/Name;Ljavax/naming/Name;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_8

    instance-of p1, p2, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_8

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_8
    :goto_1
    return-void

    :catchall_2
    move-exception p1

    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_9

    instance-of p2, p2, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_9

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_9
    throw p1

    .line 442
    :cond_a
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    const-string p2, "can\'t rename the rootDSE"

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrincipal(Lorg/apache/ldap/server/authn/AuthenticationService$TrustedPrincipalWrapper;)V
    .locals 0

    .line 172
    invoke-virtual {p1}, Lorg/apache/ldap/server/authn/AuthenticationService$TrustedPrincipalWrapper;->getPrincipal()Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerContext;->principal:Lorg/apache/ldap/server/authn/LdapPrincipal;

    return-void
.end method

.method public unbind(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 528
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/jndi/ServerContext;->unbind(Ljavax/naming/Name;)V

    return-void
.end method

.method public unbind(Ljavax/naming/Name;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContext;->nexusProxy:Lorg/apache/ldap/server/PartitionNexus;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object p1

    :try_start_0
    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/ldap/server/PartitionNexus;->delete(Ljavax/naming/Name;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_1

    instance-of p1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_2

    instance-of v0, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p1
.end method
