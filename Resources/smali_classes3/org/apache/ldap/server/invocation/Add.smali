.class public Lorg/apache/ldap/server/invocation/Add;
.super Lorg/apache/ldap/server/invocation/Invocation;
.source "Add.java"


# static fields
.field private static final serialVersionUID:J = 0x2d37353639383237L


# instance fields
.field private final attributes:Ljavax/naming/directory/Attributes;

.field private normalizedName:Ljavax/naming/Name;

.field private final userProvidedName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/ldap/server/invocation/Invocation;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 61
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/Add;->userProvidedName:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lorg/apache/ldap/server/invocation/Add;->normalizedName:Ljavax/naming/Name;

    .line 65
    iput-object p3, p0, Lorg/apache/ldap/server/invocation/Add;->attributes:Ljavax/naming/directory/Attributes;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attributes"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "normalizedName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "userProvidedName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected doExecute(Lorg/apache/ldap/server/BackingStore;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/Add;->userProvidedName:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/ldap/server/invocation/Add;->normalizedName:Ljavax/naming/Name;

    iget-object v2, p0, Lorg/apache/ldap/server/invocation/Add;->attributes:Ljavax/naming/directory/Attributes;

    :try_start_0
    instance-of v3, p0, Ljavax/naming/Context;

    if-eqz v3, :cond_0

    instance-of v3, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v3, :cond_0

    instance-of v3, p1, Lorg/apache/ldap/server/PartitionNexus;

    if-eqz v3, :cond_0

    instance-of v3, p1, Lorg/apache/ldap/server/db/Database;

    if-nez v3, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Ljavax/naming/Context;

    invoke-virtual {v3, v4}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    invoke-interface {p1, v0, v1, v2}, Lorg/apache/ldap/server/BackingStore;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
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

.method public getAttributes()Ljavax/naming/directory/Attributes;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/Add;->attributes:Ljavax/naming/directory/Attributes;

    return-object v0
.end method

.method public getNormalizedName()Ljavax/naming/Name;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/Add;->normalizedName:Ljavax/naming/Name;

    return-object v0
.end method

.method public getUserProvidedName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/Add;->userProvidedName:Ljava/lang/String;

    return-object v0
.end method

.method public setNormalizedName(Ljavax/naming/Name;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/Add;->normalizedName:Ljavax/naming/Name;

    return-void
.end method
