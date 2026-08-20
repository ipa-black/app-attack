.class public Lorg/apache/ldap/server/invocation/ListSuffixes;
.super Lorg/apache/ldap/server/invocation/Invocation;
.source "ListSuffixes.java"


# static fields
.field private static final serialVersionUID:J = 0x2d38363537343437L


# instance fields
.field private final normalized:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/ldap/server/invocation/Invocation;-><init>()V

    .line 41
    iput-boolean p1, p0, Lorg/apache/ldap/server/invocation/ListSuffixes;->normalized:Z

    return-void
.end method


# virtual methods
.method protected doExecute(Lorg/apache/ldap/server/BackingStore;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 53
    check-cast p1, Lorg/apache/ldap/server/PartitionNexus;

    iget-boolean v0, p0, Lorg/apache/ldap/server/invocation/ListSuffixes;->normalized:Z

    :try_start_0
    instance-of v1, p0, Ljavax/naming/Context;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-interface {p1, v0}, Lorg/apache/ldap/server/PartitionNexus;->listSuffixes(Z)Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v1, p0, Ljavax/naming/Context;

    if-eqz v1, :cond_1

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_1

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

.method public isNormalized()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lorg/apache/ldap/server/invocation/ListSuffixes;->normalized:Z

    return v0
.end method
