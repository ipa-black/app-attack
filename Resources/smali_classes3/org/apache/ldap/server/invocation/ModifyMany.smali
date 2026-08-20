.class public Lorg/apache/ldap/server/invocation/ModifyMany;
.super Lorg/apache/ldap/server/invocation/Invocation;
.source "ModifyMany.java"


# static fields
.field private static final serialVersionUID:J = 0x2d39363033383039L


# instance fields
.field private final modificationItems:[Ljavax/naming/directory/ModificationItem;

.field private name:Ljavax/naming/Name;


# direct methods
.method public constructor <init>(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/ldap/server/invocation/Invocation;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 53
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/ModifyMany;->name:Ljavax/naming/Name;

    .line 55
    iput-object p2, p0, Lorg/apache/ldap/server/invocation/ModifyMany;->modificationItems:[Ljavax/naming/directory/ModificationItem;

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "modificationItems"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected doExecute(Lorg/apache/ldap/server/BackingStore;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/ModifyMany;->name:Ljavax/naming/Name;

    iget-object v1, p0, Lorg/apache/ldap/server/invocation/ModifyMany;->modificationItems:[Ljavax/naming/directory/ModificationItem;

    :try_start_0
    instance-of v2, p0, Ljavax/naming/Context;

    if-eqz v2, :cond_0

    instance-of v2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v2, :cond_0

    instance-of v2, p1, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz v2, :cond_0

    instance-of v2, p1, Lorg/apache/ldap/server/db/Database;

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Ljavax/naming/Context;

    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/apache/ldap/server/BackingStore;->modify(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v0, p0, Ljavax/naming/Context;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz v0, :cond_1

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Ljavax/naming/Context;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    instance-of v1, p0, Ljavax/naming/Context;

    if-eqz v1, :cond_2

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_2

    instance-of v1, p1, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz v1, :cond_2

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Ljavax/naming/Context;

    invoke-virtual {p1, v1}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw v0
.end method

.method public getModificationItems()[Ljavax/naming/directory/ModificationItem;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/ModifyMany;->modificationItems:[Ljavax/naming/directory/ModificationItem;

    return-object v0
.end method

.method public getName()Ljavax/naming/Name;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/ModifyMany;->name:Ljavax/naming/Name;

    return-object v0
.end method

.method public setName(Ljavax/naming/Name;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/ModifyMany;->name:Ljavax/naming/Name;

    return-void
.end method
