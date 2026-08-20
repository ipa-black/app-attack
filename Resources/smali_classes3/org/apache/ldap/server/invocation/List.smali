.class public Lorg/apache/ldap/server/invocation/List;
.super Lorg/apache/ldap/server/invocation/Invocation;
.source "List.java"


# static fields
.field private static final serialVersionUID:J = 0x3435353733393033L


# instance fields
.field private baseName:Ljavax/naming/Name;


# direct methods
.method public constructor <init>(Ljavax/naming/Name;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/apache/ldap/server/invocation/Invocation;-><init>()V

    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/List;->baseName:Ljavax/naming/Name;

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "baseName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected doExecute(Lorg/apache/ldap/server/BackingStore;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/List;->baseName:Ljavax/naming/Name;

    :try_start_0
    instance-of v1, p0, Ljavax/naming/Context;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-interface {p1, v0}, Lorg/apache/ldap/server/BackingStore;->list(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v1, p0, Ljavax/naming/Context;

    if-eqz v1, :cond_1

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_1

    instance-of v1, p1, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz v1, :cond_1

    instance-of p1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Ljavax/naming/Context;

    invoke-virtual {p1, v1}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    return-object v0

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

.method public getBaseName()Ljavax/naming/Name;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/List;->baseName:Ljavax/naming/Name;

    return-object v0
.end method

.method public setBaseName(Ljavax/naming/Name;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/List;->baseName:Ljavax/naming/Name;

    return-void
.end method
