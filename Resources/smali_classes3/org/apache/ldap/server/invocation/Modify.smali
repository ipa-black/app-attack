.class public Lorg/apache/ldap/server/invocation/Modify;
.super Lorg/apache/ldap/server/invocation/Invocation;
.source "Modify.java"


# static fields
.field private static final serialVersionUID:J = 0x2d37383932343235L


# instance fields
.field private final attributes:Ljavax/naming/directory/Attributes;

.field private final modOp:I

.field private name:Ljavax/naming/Name;


# direct methods
.method public constructor <init>(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/ldap/server/invocation/Invocation;-><init>()V

    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/Modify;->name:Ljavax/naming/Name;

    .line 53
    iput p2, p0, Lorg/apache/ldap/server/invocation/Modify;->modOp:I

    .line 55
    iput-object p3, p0, Lorg/apache/ldap/server/invocation/Modify;->attributes:Ljavax/naming/directory/Attributes;

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

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

    .line 79
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/Modify;->name:Ljavax/naming/Name;

    iget v1, p0, Lorg/apache/ldap/server/invocation/Modify;->modOp:I

    iget-object v2, p0, Lorg/apache/ldap/server/invocation/Modify;->attributes:Ljavax/naming/directory/Attributes;

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
    invoke-interface {p1, v0, v1, v2}, Lorg/apache/ldap/server/BackingStore;->modify(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
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

    .line 73
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/Modify;->attributes:Ljavax/naming/directory/Attributes;

    return-object v0
.end method

.method public getModOp()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/apache/ldap/server/invocation/Modify;->modOp:I

    return v0
.end method

.method public getName()Ljavax/naming/Name;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/Modify;->name:Ljavax/naming/Name;

    return-object v0
.end method

.method public setName(Ljavax/naming/Name;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/Modify;->name:Ljavax/naming/Name;

    return-void
.end method
