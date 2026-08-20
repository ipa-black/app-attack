.class public Lorg/apache/ldap/server/jndi/CoreContextFactory;
.super Ljava/lang/Object;
.source "CoreContextFactory.java"

# interfaces
.implements Ljavax/naming/spi/InitialContextFactory;


# static fields
.field protected static final ADMIN:Ljava/lang/String; = "uid=admin,ou=system"

.field protected static final ADMIN_NAME:Ljavax/naming/Name;

.field private static final CREDS:Ljava/lang/String; = "java.naming.security.credentials"

.field protected static final DEFAULT_SCHEMAS:[Ljava/lang/String;

.field public static final DEFAULT_WKDIR:Ljava/lang/String; = "server-work"

.field protected static final PRINCIPAL:Ljava/lang/String; = "java.naming.security.principal"

.field private static final TYPE:Ljava/lang/String; = "java.naming.security.authentication"

.field static synthetic class$0:Ljava/lang/Class;

.field static synthetic class$1:Ljava/lang/Class;


# instance fields
.field protected createMode:Z

.field protected globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

.field protected initialEnv:Ljava/util/Hashtable;

.field protected nexus:Lorg/apache/ldap/server/RootNexus;

.field protected provider:Lorg/apache/ldap/server/jndi/JndiProvider;

.field protected system:Lorg/apache/ldap/server/SystemPartition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 92
    invoke-static {}, Lorg/apache/ldap/server/SystemPartition;->getAdminDn()Ljavax/naming/Name;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->ADMIN_NAME:Ljavax/naming/Name;

    const/4 v0, 0x6

    .line 99
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 100
    const-string v2, "org.apache.ldap.server.schema.bootstrap.CoreSchema"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 101
    const-string v2, "org.apache.ldap.server.schema.bootstrap.CosineSchema"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 102
    const-string v2, "org.apache.ldap.server.schema.bootstrap.ApacheSchema"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 103
    const-string v2, "org.apache.ldap.server.schema.bootstrap.InetorgpersonSchema"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 104
    const-string v2, "org.apache.ldap.server.schema.bootstrap.JavaSchema"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 105
    const-string v2, "org.apache.ldap.server.schema.bootstrap.SystemSchema"

    .line 99
    aput-object v2, v0, v1

    .line 98
    sput-object v0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->DEFAULT_SCHEMAS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    .line 136
    invoke-static {p0}, Lorg/apache/ldap/server/jndi/JndiProvider;->setProviderOn(Lorg/apache/ldap/server/jndi/CoreContextFactory;)V

    return-void
.end method

.method private createBootstrapEntries()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->nexus:Lorg/apache/ldap/server/RootNexus;

    sget-object v1, Lorg/apache/ldap/server/jndi/CoreContextFactory;->ADMIN_NAME:Ljavax/naming/Name;

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
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    instance-of v3, p0, Ljavax/naming/Context;

    if-eqz v3, :cond_1

    instance-of v4, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v4, :cond_1

    instance-of v0, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    move-object v4, p0

    check-cast v4, Ljavax/naming/Context;

    invoke-virtual {v0, v4}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    const-string v0, "createTimestamp"

    const-string v4, "creatorsName"

    const-string v5, "top"

    const-string v6, "uid=admin,ou=system"

    const-string v7, "objectClass"

    if-eqz v2, :cond_2

    goto :goto_0

    .line 370
    :cond_2
    new-instance v2, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v2}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    .line 372
    invoke-interface {v2, v7, v5}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 374
    const-string v8, "person"

    invoke-interface {v2, v7, v8}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 376
    const-string v8, "organizationalPerson"

    invoke-interface {v2, v7, v8}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 378
    const-string v8, "inetOrgPerson"

    invoke-interface {v2, v7, v8}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 380
    const-string v8, "uid"

    const-string v9, "admin"

    invoke-interface {v2, v8, v9}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 382
    const-string v8, "userPassword"

    sget-object v9, Lorg/apache/ldap/server/SystemPartition;->ADMIN_PW:[B

    invoke-interface {v2, v8, v9}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 384
    const-string v8, "displayName"

    const-string v9, "Directory Superuser"

    invoke-interface {v2, v8, v9}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 386
    invoke-interface {v2, v4, v6}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 388
    invoke-static {}, Lorg/apache/ldap/common/util/DateUtils;->getGeneralizedTime()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v0, v10}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 390
    invoke-interface {v2, v8, v9}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 392
    iget-object v8, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->nexus:Lorg/apache/ldap/server/RootNexus;

    :try_start_1
    instance-of v9, p0, Ljavax/naming/Context;

    if-eqz v9, :cond_3

    instance-of v9, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v9, :cond_3

    instance-of v9, v8, Lorg/apache/ldap/server/db/Database;

    if-nez v9, :cond_3

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v9

    move-object v10, p0

    check-cast v10, Ljavax/naming/Context;

    invoke-virtual {v9, v10}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_3
    invoke-virtual {v8, v6, v1, v2}, Lorg/apache/ldap/server/RootNexus;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v3, :cond_4

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_4

    instance-of v1, v8, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_4

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    .line 399
    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->nexus:Lorg/apache/ldap/server/RootNexus;

    new-instance v2, Lorg/apache/ldap/common/name/LdapName;

    const-string v8, "ou=users,ou=system"

    invoke-direct {v2, v8}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    :try_start_2
    instance-of v9, p0, Ljavax/naming/Context;

    if-eqz v9, :cond_5

    instance-of v9, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v9, :cond_5

    instance-of v9, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v9, :cond_5

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v9

    move-object v10, p0

    check-cast v10, Ljavax/naming/Context;

    invoke-virtual {v9, v10}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_5
    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/RootNexus;->hasEntry(Ljavax/naming/Name;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v3, :cond_6

    instance-of v9, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v9, :cond_6

    instance-of v1, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_6

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v9, p0

    check-cast v9, Ljavax/naming/Context;

    invoke-virtual {v1, v9}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_6
    const-string v1, "ou"

    const-string v9, "organizationalUnit"

    if-eqz v2, :cond_7

    goto :goto_1

    .line 407
    :cond_7
    new-instance v2, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v2}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    .line 409
    invoke-interface {v2, v7, v5}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 411
    invoke-interface {v2, v7, v9}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 413
    const-string v10, "users"

    invoke-interface {v2, v1, v10}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 415
    invoke-interface {v2, v4, v6}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 417
    invoke-static {}, Lorg/apache/ldap/common/util/DateUtils;->getGeneralizedTime()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v0, v10}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 419
    iget-object v10, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->nexus:Lorg/apache/ldap/server/RootNexus;

    new-instance v11, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v11, v8}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    :try_start_3
    instance-of v12, p0, Ljavax/naming/Context;

    if-eqz v12, :cond_8

    instance-of v12, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v12, :cond_8

    instance-of v12, v10, Lorg/apache/ldap/server/db/Database;

    if-nez v12, :cond_8

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v12

    move-object v13, p0

    check-cast v13, Ljavax/naming/Context;

    invoke-virtual {v12, v13}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_8
    invoke-virtual {v10, v8, v11, v2}, Lorg/apache/ldap/server/RootNexus;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v3, :cond_9

    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_9

    instance-of v2, v10, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_9

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    move-object v8, p0

    check-cast v8, Ljavax/naming/Context;

    invoke-virtual {v2, v8}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    .line 426
    :cond_9
    :goto_1
    iget-object v2, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->nexus:Lorg/apache/ldap/server/RootNexus;

    new-instance v8, Lorg/apache/ldap/common/name/LdapName;

    const-string v10, "ou=groups,ou=system"

    invoke-direct {v8, v10}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    :try_start_4
    instance-of v11, p0, Ljavax/naming/Context;

    if-eqz v11, :cond_a

    instance-of v11, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v11, :cond_a

    instance-of v11, v2, Lorg/apache/ldap/server/db/Database;

    if-nez v11, :cond_a

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v11

    move-object v12, p0

    check-cast v12, Ljavax/naming/Context;

    invoke-virtual {v11, v12}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_a
    invoke-virtual {v2, v8}, Lorg/apache/ldap/server/RootNexus;->hasEntry(Ljavax/naming/Name;)Z

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_b

    instance-of v11, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v11, :cond_b

    instance-of v2, v2, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_b

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    move-object v11, p0

    check-cast v11, Ljavax/naming/Context;

    invoke-virtual {v2, v11}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_b
    if-eqz v8, :cond_c

    goto :goto_2

    .line 434
    :cond_c
    new-instance v2, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v2}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    .line 436
    invoke-interface {v2, v7, v5}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 438
    invoke-interface {v2, v7, v9}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 440
    const-string v8, "groups"

    invoke-interface {v2, v1, v8}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 442
    invoke-interface {v2, v4, v6}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 444
    invoke-static {}, Lorg/apache/ldap/common/util/DateUtils;->getGeneralizedTime()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 446
    iget-object v1, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->nexus:Lorg/apache/ldap/server/RootNexus;

    new-instance v8, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v8, v10}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    :try_start_5
    instance-of v9, p0, Ljavax/naming/Context;

    if-eqz v9, :cond_d

    instance-of v9, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v9, :cond_d

    instance-of v9, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v9, :cond_d

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v9

    move-object v11, p0

    check-cast v11, Ljavax/naming/Context;

    invoke-virtual {v9, v11}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_d
    invoke-virtual {v1, v10, v8, v2}, Lorg/apache/ldap/server/RootNexus;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_e

    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_e

    instance-of v1, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_e

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    .line 453
    :cond_e
    :goto_2
    iget-object v1, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->nexus:Lorg/apache/ldap/server/RootNexus;

    new-instance v2, Lorg/apache/ldap/common/name/LdapName;

    const-string v8, "prefNodeName=sysPrefRoot,ou=system"

    invoke-direct {v2, v8}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    :try_start_6
    instance-of v9, p0, Ljavax/naming/Context;

    if-eqz v9, :cond_f

    instance-of v9, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v9, :cond_f

    instance-of v9, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v9, :cond_f

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v9

    move-object v10, p0

    check-cast v10, Ljavax/naming/Context;

    invoke-virtual {v9, v10}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_f
    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/RootNexus;->hasEntry(Ljavax/naming/Name;)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_10

    instance-of v9, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v9, :cond_10

    instance-of v1, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_10

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v9, p0

    check-cast v9, Ljavax/naming/Context;

    invoke-virtual {v1, v9}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_10
    if-eqz v2, :cond_11

    const/4 v0, 0x0

    goto :goto_3

    .line 461
    :cond_11
    new-instance v1, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    .line 463
    invoke-interface {v1, v7, v5}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 465
    const-string v2, "prefNode"

    invoke-interface {v1, v7, v2}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 467
    const-string v2, "extensibleObject"

    invoke-interface {v1, v7, v2}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 469
    const-string v2, "prefNodeName"

    const-string v5, "sysPrefRoot"

    invoke-interface {v1, v2, v5}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 471
    invoke-interface {v1, v4, v6}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 473
    invoke-static {}, Lorg/apache/ldap/common/util/DateUtils;->getGeneralizedTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 475
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, v8}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 477
    iget-object v2, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->nexus:Lorg/apache/ldap/server/RootNexus;

    :try_start_7
    instance-of v4, p0, Ljavax/naming/Context;

    if-eqz v4, :cond_12

    instance-of v4, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v4, :cond_12

    instance-of v4, v2, Lorg/apache/ldap/server/db/Database;

    if-nez v4, :cond_12

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Ljavax/naming/Context;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_12
    invoke-virtual {v2, v8, v0, v1}, Lorg/apache/ldap/server/RootNexus;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_13

    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_13

    instance-of v0, v2, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_13

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljavax/naming/Context;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_13
    const/4 v0, 0x1

    :goto_3
    return v0

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_14

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_14

    instance-of v1, v2, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_14

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_14
    throw v0

    :catchall_1
    move-exception v0

    if-eqz v3, :cond_15

    .line 453
    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_15

    instance-of v1, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_15

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_15
    throw v0

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_16

    .line 446
    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_16

    instance-of v1, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_16

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_16
    throw v0

    :catchall_3
    move-exception v0

    if-eqz v3, :cond_17

    .line 426
    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_17

    instance-of v1, v2, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_17

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_17
    throw v0

    :catchall_4
    move-exception v0

    if-eqz v3, :cond_18

    .line 419
    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_18

    instance-of v1, v10, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_18

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_18
    throw v0

    :catchall_5
    move-exception v0

    if-eqz v3, :cond_19

    .line 399
    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_19

    instance-of v1, v1, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_19

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_19
    throw v0

    :catchall_6
    move-exception v0

    if-eqz v3, :cond_1a

    .line 392
    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_1a

    instance-of v1, v8, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_1a

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1a
    throw v0

    :catchall_7
    move-exception v1

    .line 362
    instance-of v2, p0, Ljavax/naming/Context;

    if-eqz v2, :cond_1b

    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_1b

    instance-of v0, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_1b

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1b
    throw v1
.end method


# virtual methods
.method protected checkSecuritySettings(Ljava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 258
    const-string v0, "java.naming.security.authentication"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "java.naming.security.principal"

    const-string v3, "java.naming.security.credentials"

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 264
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "simple"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance p1, Lorg/apache/ldap/common/exception/LdapConfigurationException;

    const-string v0, "missing required java.naming.security.principal property for simple authentication"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/exception/LdapConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    :cond_1
    new-instance p1, Lorg/apache/ldap/common/exception/LdapConfigurationException;

    const-string v0, "missing required java.naming.security.credentials property for simple authentication"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/exception/LdapConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 290
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 292
    :cond_3
    new-instance p1, Lorg/apache/ldap/common/exception/LdapConfigurationException;

    const-string v0, "ambiguous bind settings encountered where bind is anonymous yet java.naming.security.principal property is set"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/exception/LdapConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_4
    new-instance p1, Lorg/apache/ldap/common/exception/LdapConfigurationException;

    const-string v0, "ambiguous bind settings encountered where bind is anonymous yet java.naming.security.credentials property is set"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/exception/LdapConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :cond_5
    new-instance p1, Lorg/apache/ldap/common/exception/LdapAuthenticationNotSupportedException;

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->AUTHMETHODNOTSUPPORTED:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/exception/LdapAuthenticationNotSupportedException;-><init>(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1

    .line 306
    :cond_6
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 308
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    .line 310
    :cond_7
    new-instance p1, Lorg/apache/ldap/common/exception/LdapConfigurationException;

    const-string v0, "credentials provided without principal name property: java.naming.security.principal"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/exception/LdapConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_0
    return-void
.end method

.method public getInitialContext(Ljava/util/Hashtable;)Ljavax/naming/Context;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    .line 157
    const-string v0, "server.operation.shutdown"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object p1, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    if-nez p1, :cond_0

    .line 161
    new-instance p1, Lorg/apache/ldap/server/jndi/DeadContext;

    invoke-direct {p1}, Lorg/apache/ldap/server/jndi/DeadContext;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 166
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ldap/server/jndi/JndiProvider;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 170
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    :goto_0
    new-instance p1, Lorg/apache/ldap/server/jndi/DeadContext;

    invoke-direct {p1}, Lorg/apache/ldap/server/jndi/DeadContext;-><init>()V

    .line 176
    iput-object v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    .line 178
    iput-object v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->initialEnv:Ljava/util/Hashtable;

    return-object p1

    :catchall_1
    move-exception p1

    .line 174
    new-instance v1, Lorg/apache/ldap/server/jndi/DeadContext;

    invoke-direct {v1}, Lorg/apache/ldap/server/jndi/DeadContext;-><init>()V

    .line 176
    iput-object v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    .line 178
    iput-object v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->initialEnv:Ljava/util/Hashtable;

    .line 173
    throw p1

    .line 184
    :cond_1
    const-string v0, "server.operation.sync"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    invoke-virtual {v0}, Lorg/apache/ldap/server/jndi/JndiProvider;->sync()V

    .line 188
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/jndi/JndiProvider;->getLdapContext(Ljava/util/Hashtable;)Ljavax/naming/ldap/LdapContext;

    move-result-object p1

    return-object p1

    .line 191
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/CoreContextFactory;->checkSecuritySettings(Ljava/util/Hashtable;)V

    .line 193
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/CoreContextFactory;->isAnonymous(Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    const-string v0, "java.naming.security.principal"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_3
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    if-nez v0, :cond_a

    .line 203
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/jndi/CoreContextFactory;->isAnonymous(Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "server.disable.anonymous"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 205
    :cond_4
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    const-string v0, "cannot bind as anonymous on startup while disabling anonymous binds w/ property: server.disable.anonymous"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 210
    :cond_5
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->initialEnv:Ljava/util/Hashtable;

    .line 212
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/CoreContextFactory;->initialize()V

    .line 214
    invoke-direct {p0}, Lorg/apache/ldap/server/jndi/CoreContextFactory;->createBootstrapEntries()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->createMode:Z

    if-eqz v0, :cond_a

    .line 223
    const-string v0, "server.test.entries"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 225
    iget-object v1, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->initialEnv:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 229
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_6

    goto/16 :goto_3

    .line 231
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/naming/directory/Attributes;

    .line 233
    const-string v3, "creatorsName"

    const-string v4, "uid=admin,ou=system"

    invoke-interface {v2, v3, v4}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 235
    const-string v3, "createTimestamp"

    invoke-static {}, Lorg/apache/ldap/common/util/DateUtils;->getGeneralizedTime()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 237
    const-string v3, "dn"

    invoke-interface {v2, v3}, Ljavax/naming/directory/Attributes;->remove(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v3

    .line 239
    iget-object v4, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->nexus:Lorg/apache/ldap/server/RootNexus;

    invoke-interface {v3}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lorg/apache/ldap/common/name/LdapName;

    invoke-interface {v3}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v6, v3}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    :try_start_2
    instance-of v3, p0, Ljavax/naming/Context;

    if-eqz v3, :cond_7

    instance-of v3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v3, :cond_7

    instance-of v3, v4, Lorg/apache/ldap/server/db/Database;

    if-nez v3, :cond_7

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v3

    move-object v7, p0

    check-cast v7, Ljavax/naming/Context;

    invoke-virtual {v3, v7}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_7
    invoke-virtual {v4, v5, v6, v2}, Lorg/apache/ldap/server/RootNexus;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    instance-of v2, p0, Ljavax/naming/Context;

    if-eqz v2, :cond_8

    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_8

    instance-of v2, v4, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_8

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_2
    move-exception p1

    instance-of v0, p0, Ljavax/naming/Context;

    if-eqz v0, :cond_9

    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_9

    instance-of v0, v4, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_9

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljavax/naming/Context;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_9
    throw p1

    .line 245
    :cond_a
    :goto_3
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/jndi/JndiProvider;->getLdapContext(Ljava/util/Hashtable;)Ljavax/naming/ldap/LdapContext;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/jndi/ServerContext;

    return-object p1
.end method

.method protected initialize()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 495
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;

    invoke-direct {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;-><init>()V

    .line 497
    new-instance v1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;

    invoke-direct {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;-><init>()V

    .line 499
    sget-object v2, Lorg/apache/ldap/server/jndi/CoreContextFactory;->DEFAULT_SCHEMAS:[Ljava/lang/String;

    .line 501
    iget-object v3, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->initialEnv:Ljava/util/Hashtable;

    const-string v4, "server.schemas"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 503
    iget-object v2, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->initialEnv:Ljava/util/Hashtable;

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 505
    invoke-static {v2}, Lorg/apache/ldap/common/util/StringTools;->deepTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 507
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v2, v5

    .line 509
    :goto_0
    array-length v4, v3

    if-lt v2, v4, :cond_0

    move-object v2, v3

    goto :goto_1

    .line 511
    :cond_0
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    :cond_1
    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->load([Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 517
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->checkRefInteg()Ljava/util/List;

    move-result-object v1

    .line 519
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 534
    iget-object v1, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->initialEnv:Ljava/util/Hashtable;

    const-string v2, "server.wkdir"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    iget-object v1, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->initialEnv:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 534
    :cond_2
    const-string v1, "server-work"

    .line 539
    :goto_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v2}, Ljava/io/File;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 543
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 545
    :cond_3
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "working directory "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_4
    new-instance v2, Ljava/io/File;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/ldap/server/jndi/CoreContextFactory;->mkdirs(Ljava/lang/String;Ljava/lang/String;)Z

    .line 555
    :goto_3
    new-instance v2, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v2}, Lorg/apache/ldap/common/name/LdapName;-><init>()V

    .line 557
    const-string v3, "ou=system"

    invoke-virtual {v2, v3}, Lorg/apache/ldap/common/name/LdapName;->add(Ljava/lang/String;)Ljavax/naming/Name;

    .line 559
    new-instance v3, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;

    invoke-direct {v3, v2, v2, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;-><init>(Ljavax/naming/Name;Ljavax/naming/Name;Ljava/lang/String;)V

    .line 563
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    move-result-object v2

    .line 567
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getOidRegistry()Lorg/apache/ldap/server/schema/OidRegistry;

    move-result-object v4

    .line 571
    new-instance v6, Lorg/apache/ldap/server/db/ExpressionEvaluator;

    invoke-direct {v6, v3, v4, v2}, Lorg/apache/ldap/server/db/ExpressionEvaluator;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/schema/OidRegistry;Lorg/apache/ldap/server/schema/AttributeTypeRegistry;)V

    .line 575
    new-instance v4, Lorg/apache/ldap/server/db/ExpressionEnumerator;

    invoke-direct {v4, v3, v2, v6}, Lorg/apache/ldap/server/db/ExpressionEnumerator;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/schema/AttributeTypeRegistry;Lorg/apache/ldap/server/db/ExpressionEvaluator;)V

    .line 577
    new-instance v7, Lorg/apache/ldap/server/db/DefaultSearchEngine;

    invoke-direct {v7, v3, v6, v4}, Lorg/apache/ldap/server/db/DefaultSearchEngine;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/ExpressionEvaluator;Lorg/apache/ldap/server/db/ExpressionEnumerator;)V

    const/4 v4, 0x7

    .line 580
    new-array v4, v4, [Lorg/apache/ldap/common/schema/AttributeType;

    .line 581
    const-string v6, "1.2.6.1.4.1.18060.1.1.1.3.7"

    invoke-interface {v2, v6}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v6

    aput-object v6, v4, v5

    .line 583
    const-string v5, "1.2.6.1.4.1.18060.1.1.1.3.3"

    invoke-interface {v2, v5}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 585
    const-string v5, "1.2.6.1.4.1.18060.1.1.1.3.4"

    invoke-interface {v2, v5}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 587
    const-string v5, "1.2.6.1.4.1.18060.1.1.1.3.1"

    invoke-interface {v2, v5}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 589
    const-string v5, "1.2.6.1.4.1.18060.1.1.1.3.5"

    invoke-interface {v2, v5}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 591
    const-string v5, "1.2.6.1.4.1.18060.1.1.1.3.6"

    invoke-interface {v2, v5}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 593
    const-string v5, "1.2.6.1.4.1.18060.1.1.1.3.2"

    invoke-interface {v2, v5}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v2

    const/4 v5, 0x6

    .line 580
    aput-object v2, v4, v5

    .line 596
    new-instance v2, Lorg/apache/ldap/server/SystemPartition;

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/ldap/server/SystemPartition;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/SearchEngine;[Lorg/apache/ldap/common/schema/AttributeType;)V

    iput-object v2, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->system:Lorg/apache/ldap/server/SystemPartition;

    .line 598
    new-instance v2, Lorg/apache/ldap/server/schema/GlobalRegistries;

    iget-object v3, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->system:Lorg/apache/ldap/server/SystemPartition;

    invoke-direct {v2, v3, v0}, Lorg/apache/ldap/server/schema/GlobalRegistries;-><init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    iput-object v2, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    .line 600
    new-instance v0, Lorg/apache/ldap/server/RootNexus;

    iget-object v2, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->system:Lorg/apache/ldap/server/SystemPartition;

    new-instance v3, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v3}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    invoke-direct {v0, v2, v3}, Lorg/apache/ldap/server/RootNexus;-><init>(Lorg/apache/ldap/server/SystemPartition;Ljavax/naming/directory/Attributes;)V

    iput-object v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->nexus:Lorg/apache/ldap/server/RootNexus;

    .line 602
    new-instance v0, Lorg/apache/ldap/server/jndi/JndiProvider;

    iget-object v2, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->nexus:Lorg/apache/ldap/server/RootNexus;

    invoke-direct {v0, v2}, Lorg/apache/ldap/server/jndi/JndiProvider;-><init>(Lorg/apache/ldap/server/RootNexus;)V

    iput-object v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    .line 607
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->initialEnv:Ljava/util/Hashtable;

    const-string v2, "server.interceptor"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/server/interceptor/InterceptorChain;

    if-nez v0, :cond_5

    .line 613
    invoke-static {}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->newDefaultChain()Lorg/apache/ldap/server/interceptor/InterceptorChain;

    move-result-object v0

    .line 616
    :cond_5
    new-instance v9, Lorg/apache/ldap/server/interceptor/InterceptorContext;

    iget-object v4, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->initialEnv:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->system:Lorg/apache/ldap/server/SystemPartition;

    iget-object v6, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    iget-object v7, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->nexus:Lorg/apache/ldap/server/RootNexus;

    .line 617
    invoke-static {v4, v2}, Lorg/apache/ldap/server/interceptor/InterceptorConfigBuilder;->build(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    move-object v3, v9

    .line 616
    invoke-direct/range {v3 .. v8}, Lorg/apache/ldap/server/interceptor/InterceptorContext;-><init>(Ljava/util/Map;Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/GlobalRegistries;Lorg/apache/ldap/server/RootNexus;Ljava/util/Map;)V

    invoke-virtual {v0, v9}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->init(Lorg/apache/ldap/server/interceptor/InterceptorContext;)V

    .line 619
    iget-object v2, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    invoke-virtual {v2, v0}, Lorg/apache/ldap/server/jndi/JndiProvider;->setInterceptor(Lorg/apache/ldap/server/interceptor/Interceptor;)V

    .line 622
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->initialEnv:Ljava/util/Hashtable;

    const-string v2, "server.db.partitions"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 624
    invoke-virtual {p0, v1}, Lorg/apache/ldap/server/jndi/CoreContextFactory;->startUpAppPartitions(Ljava/lang/String;)V

    :cond_6
    return-void

    .line 521
    :cond_7
    new-instance v0, Ljavax/naming/NamingException;

    invoke-direct {v0}, Ljavax/naming/NamingException;-><init>()V

    .line 523
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 525
    throw v0
.end method

.method protected isAnonymous(Ljava/util/Hashtable;)Z
    .locals 4

    .line 325
    const-string v0, "java.naming.security.authentication"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 335
    :cond_1
    const-string v0, "java.naming.security.credentials"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method protected mkdirs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 778
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 780
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 784
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 p1, 0x0

    .line 787
    :goto_0
    array-length v1, p2

    if-lt p1, v1, :cond_1

    .line 797
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1

    .line 789
    :cond_1
    new-instance v1, Ljava/io/File;

    aget-object v2, p2, p1

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 791
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 793
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    move-object v0, v1

    goto :goto_0
.end method

.method setProvider(Lorg/apache/ldap/server/jndi/JndiProvider;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/CoreContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    return-void
.end method

.method protected startUpAppPartitions(Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 638
    iget-object v0, v1, Lorg/apache/ldap/server/jndi/CoreContextFactory;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getOidRegistry()Lorg/apache/ldap/server/schema/OidRegistry;

    move-result-object v2

    .line 642
    iget-object v0, v1, Lorg/apache/ldap/server/jndi/CoreContextFactory;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    move-result-object v3

    .line 644
    iget-object v0, v1, Lorg/apache/ldap/server/jndi/CoreContextFactory;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getMatchingRuleRegistry()Lorg/apache/ldap/server/schema/MatchingRuleRegistry;

    move-result-object v4

    const/4 v5, 0x0

    .line 647
    move-object v0, v5

    check-cast v0, [Lorg/apache/ldap/server/ContextPartitionConfig;

    .line 649
    iget-object v0, v1, Lorg/apache/ldap/server/jndi/CoreContextFactory;->initialEnv:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/apache/ldap/server/jndi/PartitionConfigBuilder;->getContextPartitionConfigs(Ljava/util/Hashtable;)[Lorg/apache/ldap/server/ContextPartitionConfig;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    .line 651
    :goto_0
    array-length v0, v6

    if-lt v8, v0, :cond_0

    return-void

    .line 657
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    aget-object v9, v6, v8

    invoke-virtual {v9}, Lorg/apache/ldap/server/ContextPartitionConfig;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    aget-object v9, v6, v8

    invoke-virtual {v9}, Lorg/apache/ldap/server/ContextPartitionConfig;->getId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-virtual {v1, v10, v9}, Lorg/apache/ldap/server/jndi/CoreContextFactory;->mkdirs(Ljava/lang/String;Ljava/lang/String;)Z

    .line 665
    new-instance v12, Lorg/apache/ldap/common/name/LdapName;

    aget-object v9, v6, v8

    invoke-virtual {v9}, Lorg/apache/ldap/server/ContextPartitionConfig;->getSuffix()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v9}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 667
    const-string v9, "distinguishedNameMatch"

    invoke-interface {v4, v9}, Lorg/apache/ldap/server/schema/MatchingRuleRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ldap/common/schema/MatchingRule;->getNormalizer()Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object v9

    .line 669
    new-instance v15, Lorg/apache/ldap/common/name/LdapName;

    aget-object v11, v6, v8

    invoke-virtual {v11}, Lorg/apache/ldap/server/ContextPartitionConfig;->getSuffix()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v15, v9}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 671
    new-instance v14, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;

    invoke-direct {v14, v12, v15, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;-><init>(Ljavax/naming/Name;Ljavax/naming/Name;Ljava/lang/String;)V

    .line 679
    new-instance v0, Lorg/apache/ldap/server/db/ExpressionEvaluator;

    invoke-direct {v0, v14, v2, v3}, Lorg/apache/ldap/server/db/ExpressionEvaluator;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/schema/OidRegistry;Lorg/apache/ldap/server/schema/AttributeTypeRegistry;)V

    .line 683
    new-instance v9, Lorg/apache/ldap/server/db/ExpressionEnumerator;

    invoke-direct {v9, v14, v3, v0}, Lorg/apache/ldap/server/db/ExpressionEnumerator;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/schema/AttributeTypeRegistry;Lorg/apache/ldap/server/db/ExpressionEvaluator;)V

    .line 685
    new-instance v13, Lorg/apache/ldap/server/db/DefaultSearchEngine;

    invoke-direct {v13, v14, v0, v9}, Lorg/apache/ldap/server/db/DefaultSearchEngine;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/ExpressionEvaluator;Lorg/apache/ldap/server/db/ExpressionEnumerator;)V

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 693
    const-string v9, "1.2.6.1.4.1.18060.1.1.1.3.7"

    invoke-interface {v3, v9}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    const-string v9, "1.2.6.1.4.1.18060.1.1.1.3.3"

    invoke-interface {v3, v9}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    const-string v9, "1.2.6.1.4.1.18060.1.1.1.3.4"

    invoke-interface {v3, v9}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    const-string v9, "1.2.6.1.4.1.18060.1.1.1.3.1"

    invoke-interface {v3, v9}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    const-string v9, "1.2.6.1.4.1.18060.1.1.1.3.5"

    invoke-interface {v3, v9}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    const-string v9, "1.2.6.1.4.1.18060.1.1.1.3.6"

    invoke-interface {v3, v9}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    const-string v9, "1.2.6.1.4.1.18060.1.1.1.3.2"

    invoke-interface {v3, v9}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v7

    .line 711
    :goto_1
    aget-object v11, v6, v8

    invoke-virtual {v11}, Lorg/apache/ldap/server/ContextPartitionConfig;->getIndices()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-lt v9, v11, :cond_9

    .line 722
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lorg/apache/ldap/common/schema/AttributeType;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 721
    move-object/from16 v16, v0

    check-cast v16, [Lorg/apache/ldap/common/schema/AttributeType;

    .line 724
    aget-object v0, v6, v8

    invoke-virtual {v0}, Lorg/apache/ldap/server/ContextPartitionConfig;->getPartitionClass()Ljava/lang/String;

    move-result-object v0

    .line 726
    aget-object v9, v6, v8

    invoke-virtual {v9}, Lorg/apache/ldap/server/ContextPartitionConfig;->getProperties()Ljava/lang/String;

    move-result-object v9

    if-nez v0, :cond_1

    .line 733
    new-instance v0, Lorg/apache/ldap/server/ApplicationPartition;

    move-object v11, v0

    move-object/from16 v17, v13

    move-object v13, v15

    move-object v9, v15

    move-object/from16 v15, v17

    invoke-direct/range {v11 .. v16}, Lorg/apache/ldap/server/ApplicationPartition;-><init>(Ljavax/naming/Name;Ljavax/naming/Name;Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/SearchEngine;[Lorg/apache/ldap/common/schema/AttributeType;)V

    move-object v11, v9

    :goto_2
    move-object v9, v0

    goto/16 :goto_6

    :cond_1
    move-object v11, v15

    .line 741
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v13, 0x3

    .line 744
    new-array v13, v13, [Ljava/lang/Class;

    sget-object v14, Lorg/apache/ldap/server/jndi/CoreContextFactory;->class$0:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v15, "javax.naming.Name"

    if-nez v14, :cond_2

    :try_start_1
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    sput-object v14, Lorg/apache/ldap/server/jndi/CoreContextFactory;->class$0:Ljava/lang/Class;

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v9, v0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_3
    aput-object v14, v13, v7

    sget-object v14, Lorg/apache/ldap/server/jndi/CoreContextFactory;->class$0:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v14, :cond_3

    :try_start_3
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    sput-object v14, Lorg/apache/ldap/server/jndi/CoreContextFactory;->class$0:Ljava/lang/Class;

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v9, v0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_4
    const/4 v15, 0x1

    aput-object v14, v13, v15

    sget-object v14, Lorg/apache/ldap/server/jndi/CoreContextFactory;->class$1:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v14, :cond_4

    :try_start_5
    const-string v14, "java.lang.String"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    sput-object v14, Lorg/apache/ldap/server/jndi/CoreContextFactory;->class$1:Ljava/lang/Class;

    goto :goto_5

    :catch_2
    move-exception v0

    new-instance v9, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_4
    :goto_5
    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 743
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 747
    filled-new-array {v12, v11, v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 746
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/server/ContextPartition;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 751
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v5

    :goto_6
    if-eqz v9, :cond_5

    .line 757
    iget-object v0, v1, Lorg/apache/ldap/server/jndi/CoreContextFactory;->nexus:Lorg/apache/ldap/server/RootNexus;

    invoke-virtual {v0, v9}, Lorg/apache/ldap/server/RootNexus;->register(Lorg/apache/ldap/server/ContextPartition;)V

    .line 764
    :cond_5
    aget-object v0, v6, v8

    invoke-virtual {v0}, Lorg/apache/ldap/server/ContextPartitionConfig;->getSuffix()Ljava/lang/String;

    move-result-object v0

    aget-object v12, v6, v8

    invoke-virtual {v12}, Lorg/apache/ldap/server/ContextPartitionConfig;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v12

    :try_start_7
    instance-of v13, v1, Ljavax/naming/Context;

    if-eqz v13, :cond_6

    instance-of v13, v1, Lorg/apache/ldap/server/ContextPartition;

    if-nez v13, :cond_6

    instance-of v13, v9, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz v13, :cond_6

    instance-of v13, v9, Lorg/apache/ldap/server/db/Database;

    if-nez v13, :cond_6

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v13

    move-object v14, v1

    check-cast v14, Ljavax/naming/Context;

    invoke-virtual {v13, v14}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_6
    invoke-interface {v9, v0, v11, v12}, Lorg/apache/ldap/server/ContextPartition;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    instance-of v0, v1, Ljavax/naming/Context;

    if-eqz v0, :cond_7

    instance-of v0, v1, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_7

    instance-of v0, v9, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz v0, :cond_7

    instance-of v0, v9, Lorg/apache/ldap/server/db/Database;

    if-nez v0, :cond_7

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v0

    move-object v9, v1

    check-cast v9, Ljavax/naming/Context;

    invoke-virtual {v0, v9}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    instance-of v2, v1, Ljavax/naming/Context;

    if-eqz v2, :cond_8

    instance-of v2, v1, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_8

    instance-of v2, v9, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz v2, :cond_8

    instance-of v2, v9, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_8

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_8
    throw v0

    :cond_9
    move-object/from16 v17, v13

    move-object v11, v15

    .line 714
    aget-object v13, v6, v8

    invoke-virtual {v13}, Lorg/apache/ldap/server/ContextPartitionConfig;->getIndices()[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v9

    invoke-interface {v3, v13}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v13

    .line 713
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v13, v17

    goto/16 :goto_1
.end method
