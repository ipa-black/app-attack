.class public abstract Lorg/apache/ldap/server/jndi/ServerDirContext;
.super Lorg/apache/ldap/server/jndi/ServerContext;
.source "ServerDirContext.java"

# interfaces
.implements Ljavax/naming/directory/DirContext;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/server/jndi/ServerContext;-><init>(Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/ldap/server/authn/LdapPrincipal;Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;Ljavax/naming/Name;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ldap/server/jndi/ServerContext;-><init>(Lorg/apache/ldap/server/authn/LdapPrincipal;Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;Ljavax/naming/Name;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 169
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/ldap/server/jndi/ServerDirContext;->bind(Ljavax/naming/Name;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V

    return-void
.end method

.method public bind(Ljavax/naming/Name;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    const-string p2, "Both obj and attrs args are null. At least one of these parameters must not be null."

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p3, :cond_2

    .line 188
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/jndi/ServerContext;->bind(Ljavax/naming/Name;Ljava/lang/Object;)V

    return-void

    :cond_2
    if-nez p2, :cond_6

    .line 196
    invoke-interface {p3}, Ljavax/naming/directory/Attributes;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/naming/directory/Attributes;

    .line 198
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerDirContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object p1

    .line 200
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_3

    instance-of v1, p3, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_3
    invoke-interface {p3, v0, p1, p2}, Lorg/apache/ldap/server/PartitionNexus;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_4

    instance-of p1, p3, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_4

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_5

    instance-of p2, p3, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_5

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_5
    throw p1

    .line 206
    :cond_6
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p2, p1, p0, v0, p3}, Ljavax/naming/spi/DirectoryManager;->getStateToBind(Ljava/lang/Object;Ljavax/naming/Name;Ljavax/naming/Context;Ljava/util/Hashtable;Ljavax/naming/directory/Attributes;)Ljavax/naming/spi/DirStateFactory$Result;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljavax/naming/spi/DirStateFactory$Result;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v0

    if-eq v0, p3, :cond_c

    .line 212
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerDirContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object p1

    .line 214
    invoke-interface {p3}, Ljavax/naming/directory/Attributes;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/naming/directory/Attributes;

    if-eqz v0, :cond_8

    .line 216
    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->size()I

    move-result p3

    if-lez p3, :cond_8

    .line 218
    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object p3

    .line 220
    :goto_1
    invoke-interface {p3}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 222
    :cond_7
    invoke-interface {p3}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/directory/Attribute;

    invoke-interface {p2, v0}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_1

    .line 226
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_9

    instance-of v1, p3, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_9

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_9
    invoke-interface {p3, v0, p1, p2}, Lorg/apache/ldap/server/PartitionNexus;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_a

    instance-of p1, p3, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_a

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_a
    return-void

    :catchall_1
    move-exception p1

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_b

    instance-of p2, p3, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_b

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_b
    throw p1

    .line 232
    :cond_c
    instance-of v1, p2, Ljavax/naming/Referenceable;

    if-nez v1, :cond_19

    .line 240
    instance-of v1, p2, Ljavax/naming/Reference;

    if-nez v1, :cond_18

    .line 246
    instance-of v1, p2, Ljava/io/Serializable;

    if-eqz v1, :cond_11

    .line 250
    invoke-interface {p3}, Ljavax/naming/directory/Attributes;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/naming/directory/Attributes;

    if-eqz v0, :cond_e

    .line 252
    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 254
    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v0

    .line 256
    :goto_3
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    .line 258
    :cond_d
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/naming/directory/Attribute;

    invoke-interface {p3, v1}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_3

    .line 262
    :cond_e
    :goto_4
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerDirContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object p1

    .line 266
    invoke-static {p3, p2}, Lorg/apache/ldap/server/jndi/JavaLdapSupport;->serialize(Ljavax/naming/directory/Attributes;Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_2
    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_f

    instance-of v1, p2, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_f

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_f
    invoke-interface {p2, v0, p1, p3}, Lorg/apache/ldap/server/PartitionNexus;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_15

    instance-of p1, p2, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_15

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    goto :goto_7

    :catchall_2
    move-exception p1

    instance-of p3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p3, :cond_10

    instance-of p2, p2, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_10

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_10
    throw p1

    .line 270
    :cond_11
    instance-of p3, p2, Ljavax/naming/directory/DirContext;

    if-eqz p3, :cond_17

    .line 274
    check-cast p2, Ljavax/naming/directory/DirContext;

    const-string p3, ""

    invoke-interface {p2, p3}, Ljavax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object p2

    if-eqz v0, :cond_13

    .line 276
    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->size()I

    move-result p3

    if-lez p3, :cond_13

    .line 278
    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object p3

    .line 280
    :goto_5
    invoke-interface {p3}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_6

    .line 282
    :cond_12
    invoke-interface {p3}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/directory/Attribute;

    invoke-interface {p2, v0}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_5

    .line 286
    :cond_13
    :goto_6
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerDirContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object p1

    .line 288
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_3
    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_14

    instance-of v1, p3, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_14

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_14
    invoke-interface {p3, v0, p1, p2}, Lorg/apache/ldap/server/PartitionNexus;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_15

    instance-of p1, p3, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_15

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_15
    :goto_7
    return-void

    :catchall_3
    move-exception p1

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_16

    instance-of p2, p3, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_16

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_16
    throw p1

    .line 292
    :cond_17
    new-instance p1, Ljavax/naming/NamingException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Can\'t find a way to bind: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_18
    new-instance p1, Ljavax/naming/NamingException;

    const-string p2, "Do not know how to store References yet!"

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_19
    check-cast p2, Ljavax/naming/Referenceable;

    invoke-interface {p2}, Ljavax/naming/Referenceable;->getReference()Ljavax/naming/Reference;

    .line 236
    new-instance p1, Ljavax/naming/NamingException;

    const-string p2, "Do not know how to store Referenceables yet!"

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSubcontext(Ljava/lang/String;Ljavax/naming/directory/Attributes;)Ljavax/naming/directory/DirContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 330
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/ldap/server/jndi/ServerDirContext;->createSubcontext(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)Ljavax/naming/directory/DirContext;

    move-result-object p1

    return-object p1
.end method

.method public createSubcontext(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)Ljavax/naming/directory/DirContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 342
    invoke-super {p0, p1}, Lorg/apache/ldap/server/jndi/ServerContext;->createSubcontext(Ljavax/naming/Name;)Ljavax/naming/Context;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/DirContext;

    return-object p1

    .line 345
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerDirContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object v0

    .line 347
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-static {p1}, Lorg/apache/ldap/common/util/NamespaceTools;->getRdnAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {p1}, Lorg/apache/ldap/common/util/NamespaceTools;->getRdnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-interface {p2}, Ljavax/naming/directory/Attributes;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/naming/directory/Attributes;

    .line 356
    invoke-interface {p2, v1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 358
    :cond_1
    invoke-interface {p2, v1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v2

    invoke-interface {v2}, Ljavax/naming/directory/Attribute;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 360
    invoke-interface {p2, v1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v2

    invoke-interface {v2, p1}, Ljavax/naming/directory/Attribute;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 364
    :cond_2
    :goto_0
    invoke-interface {p2, v1, p1}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 368
    :goto_1
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/ldap/common/name/LdapName;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_3

    instance-of v2, p1, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_3
    invoke-interface {p1, v1, v0, p2}, Lorg/apache/ldap/server/PartitionNexus;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_4

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_4

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    .line 371
    :cond_4
    new-instance p1, Lorg/apache/ldap/server/jndi/ServerLdapContext;

    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getPrincipal()Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v2

    invoke-direct {p1, p2, v1, v2, v0}, Lorg/apache/ldap/server/jndi/ServerLdapContext;-><init>(Lorg/apache/ldap/server/authn/LdapPrincipal;Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;Ljavax/naming/Name;)V

    .line 373
    move-object p2, p0

    check-cast p2, Lorg/apache/ldap/server/jndi/ServerLdapContext;

    invoke-virtual {p2}, Lorg/apache/ldap/server/jndi/ServerLdapContext;->getRequestControls()[Ljavax/naming/ldap/Control;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 377
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljavax/naming/ldap/Control;

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    .line 381
    new-array p2, p2, [Ljavax/naming/ldap/Control;

    .line 384
    :goto_2
    invoke-virtual {p1, p2}, Lorg/apache/ldap/server/jndi/ServerLdapContext;->setRequestControls([Ljavax/naming/ldap/Control;)V

    return-object p1

    :catchall_0
    move-exception p2

    .line 368
    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_6

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_6

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_6
    throw p2
.end method

.method public getAttributes(Ljava/lang/String;)Ljavax/naming/directory/Attributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getAttributes(Ljavax/naming/Name;)Ljavax/naming/directory/Attributes;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes(Ljava/lang/String;[Ljava/lang/String;)Ljavax/naming/directory/Attributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 109
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getAttributes(Ljavax/naming/Name;[Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes(Ljavax/naming/Name;)Ljavax/naming/directory/Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerDirContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

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
    invoke-interface {v0, p1}, Lorg/apache/ldap/server/PartitionNexus;->lookup(Ljavax/naming/Name;)Ljavax/naming/directory/Attributes;

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

.method public getAttributes(Ljavax/naming/Name;[Ljava/lang/String;)Ljavax/naming/directory/Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerDirContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

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
    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/PartitionNexus;->lookup(Ljavax/naming/Name;[Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_1

    instance-of p2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_2

    instance-of p2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p1
.end method

.method public getSchema(Ljava/lang/String;)Ljavax/naming/directory/DirContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 404
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getSchema(Ljavax/naming/Name;)Ljavax/naming/directory/DirContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 395
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getSchemaClassDefinition(Ljava/lang/String;)Ljavax/naming/directory/DirContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 422
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getSchemaClassDefinition(Ljavax/naming/Name;)Ljavax/naming/directory/DirContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 413
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public modifyAttributes(Ljava/lang/String;ILjavax/naming/directory/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/ldap/server/jndi/ServerDirContext;->modifyAttributes(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V

    return-void
.end method

.method public modifyAttributes(Ljava/lang/String;[Ljavax/naming/directory/ModificationItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 149
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/ldap/server/jndi/ServerDirContext;->modifyAttributes(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V

    return-void
.end method

.method public modifyAttributes(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerDirContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

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
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ldap/server/PartitionNexus;->modify(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
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

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_2

    instance-of p2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p1
.end method

.method public modifyAttributes(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerDirContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

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
    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/PartitionNexus;->modify(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V
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

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_2

    instance-of p2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p1
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 303
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/ldap/server/jndi/ServerDirContext;->rebind(Ljavax/naming/Name;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V

    return-void
.end method

.method public rebind(Ljavax/naming/Name;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerDirContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object v1

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

    .line 317
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object v1

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

    .line 320
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/server/jndi/ServerDirContext;->bind(Ljavax/naming/Name;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V

    return-void

    :catchall_1
    move-exception p1

    .line 315
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

.method public search(Ljava/lang/String;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 545
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/ldap/server/jndi/ServerDirContext;->search(Ljavax/naming/Name;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 605
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/ldap/server/jndi/ServerDirContext;->search(Ljavax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1
.end method

.method public search(Ljava/lang/String;Ljavax/naming/directory/Attributes;)Ljavax/naming/NamingEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 438
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lorg/apache/ldap/server/jndi/ServerDirContext;->search(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;[Ljava/lang/String;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1
.end method

.method public search(Ljava/lang/String;Ljavax/naming/directory/Attributes;[Ljava/lang/String;)Ljavax/naming/NamingEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 459
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/ldap/server/jndi/ServerDirContext;->search(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;[Ljava/lang/String;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1
.end method

.method public search(Ljavax/naming/Name;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 556
    const-string v0, "\'"

    .line 558
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerDirContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object p1

    if-nez p2, :cond_0

    .line 560
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "__filter__"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/ldap/common/filter/ExprNode;

    goto :goto_0

    .line 568
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/ldap/common/filter/FilterParserImpl;

    invoke-direct {v1}, Lorg/apache/ldap/common/filter/FilterParserImpl;-><init>()V

    .line 570
    invoke-interface {v1, p2}, Lorg/apache/ldap/common/filter/FilterParser;->parse(Ljava/lang/String;)Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object p2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v1

    :try_start_1
    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_1

    instance-of v2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    invoke-interface {v0, p1, v1, p2, p3}, Lorg/apache/ldap/server/PartitionNexus;->search(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_2

    instance-of p2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_3

    instance-of p2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_3
    throw p1

    :catch_0
    move-exception p1

    .line 585
    new-instance p3, Ljavax/naming/NamingException;

    .line 586
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Parser failed with IO exception on filter: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 586
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 585
    invoke-direct {p3, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p3, p1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 589
    throw p3

    :catch_1
    move-exception p1

    .line 575
    new-instance p3, Ljavax/naming/directory/InvalidSearchFilterException;

    .line 576
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Encountered parse exception while parsing the filter: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 576
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 575
    invoke-direct {p3, p2}, Ljavax/naming/directory/InvalidSearchFilterException;-><init>(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p3, p1}, Ljavax/naming/directory/InvalidSearchFilterException;->setRootCause(Ljava/lang/Throwable;)V

    .line 581
    throw p3
.end method

.method public search(Ljavax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 621
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 645
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/ldap/server/jndi/ServerDirContext;->search(Ljavax/naming/Name;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_1
    const/16 v1, 0x7b

    .line 624
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_2

    move v1, p2

    :goto_2
    const/16 v2, 0x7d

    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 642
    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v2, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method public search(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)Ljavax/naming/NamingEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->search(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;[Ljava/lang/String;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1
.end method

.method public search(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;[Ljava/lang/String;)Ljavax/naming/NamingEnumeration;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 469
    new-instance v0, Ljavax/naming/directory/SearchControls;

    invoke-direct {v0}, Ljavax/naming/directory/SearchControls;-><init>()V

    .line 471
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/ServerDirContext;->buildTarget(Ljavax/naming/Name;)Lorg/apache/ldap/common/name/LdapName;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 476
    invoke-virtual {v0, p3}, Ljavax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_9

    .line 480
    invoke-interface {p2}, Ljavax/naming/directory/Attributes;->size()I

    move-result p3

    if-gtz p3, :cond_1

    goto/16 :goto_2

    .line 495
    :cond_1
    new-instance p3, Lorg/apache/ldap/common/filter/BranchNode;

    const/16 v1, 0xa

    invoke-direct {p3, v1}, Lorg/apache/ldap/common/filter/BranchNode;-><init>(I)V

    .line 497
    invoke-interface {p2}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object p2

    .line 500
    :goto_0
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    if-nez v1, :cond_5

    .line 534
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v1

    :try_start_0
    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_2

    instance-of v2, p2, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    invoke-interface {p2, p1, v1, p3, v0}, Lorg/apache/ldap/server/PartitionNexus;->search(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p3, :cond_3

    instance-of p2, p2, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    instance-of p3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p3, :cond_4

    instance-of p2, p2, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_4

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_4
    throw p1

    .line 502
    :cond_5
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/naming/directory/Attribute;

    .line 509
    invoke-interface {v1}, Ljavax/naming/directory/Attribute;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 511
    new-instance v2, Lorg/apache/ldap/common/filter/PresenceNode;

    invoke-interface {v1}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/ldap/common/filter/PresenceNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lorg/apache/ldap/common/filter/BranchNode;->addNode(Lorg/apache/ldap/common/filter/ExprNode;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    move v3, v2

    .line 520
    :goto_1
    invoke-interface {v1}, Ljavax/naming/directory/Attribute;->size()I

    move-result v4

    if-lt v3, v4, :cond_7

    goto :goto_0

    .line 522
    :cond_7
    invoke-interface {v1, v3}, Ljavax/naming/directory/Attribute;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 525
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 527
    new-instance v5, Lorg/apache/ldap/common/filter/SimpleNode;

    invoke-interface {v1}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v6

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v6, v4, v2}, Lorg/apache/ldap/common/filter/SimpleNode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 529
    invoke-virtual {p3, v5}, Lorg/apache/ldap/common/filter/BranchNode;->addNode(Lorg/apache/ldap/common/filter/ExprNode;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 482
    :cond_9
    :goto_2
    new-instance p2, Lorg/apache/ldap/common/filter/PresenceNode;

    const-string p3, "objectClass"

    invoke-direct {p2, p3}, Lorg/apache/ldap/common/filter/PresenceNode;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object p3

    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerDirContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v1

    :try_start_1
    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_a

    instance-of v2, p3, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_a

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_a
    invoke-interface {p3, p1, v1, p2, v0}, Lorg/apache/ldap/server/PartitionNexus;->search(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_b

    instance-of p2, p3, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_b

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_b
    return-object p1

    :catchall_1
    move-exception p1

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_c

    instance-of p2, p3, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_c

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_c
    throw p1
.end method
