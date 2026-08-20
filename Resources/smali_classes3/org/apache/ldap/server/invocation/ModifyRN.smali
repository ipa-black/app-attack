.class public Lorg/apache/ldap/server/invocation/ModifyRN;
.super Lorg/apache/ldap/server/invocation/Invocation;
.source "ModifyRN.java"


# static fields
.field private static final serialVersionUID:J = 0x2d36353530353838L


# instance fields
.field private final deleteOldName:Z

.field private name:Ljavax/naming/Name;

.field private final newRelativeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/naming/Name;Ljava/lang/String;Z)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/ldap/server/invocation/Invocation;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 56
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/ModifyRN;->name:Ljavax/naming/Name;

    .line 58
    iput-object p2, p0, Lorg/apache/ldap/server/invocation/ModifyRN;->newRelativeName:Ljava/lang/String;

    .line 60
    iput-boolean p3, p0, Lorg/apache/ldap/server/invocation/ModifyRN;->deleteOldName:Z

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "newRelativeName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
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

    .line 84
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/ModifyRN;->name:Ljavax/naming/Name;

    iget-object v1, p0, Lorg/apache/ldap/server/invocation/ModifyRN;->newRelativeName:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/ldap/server/invocation/ModifyRN;->deleteOldName:Z

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
    invoke-interface {p1, v0, v1, v2}, Lorg/apache/ldap/server/BackingStore;->modifyRn(Ljavax/naming/Name;Ljava/lang/String;Z)V
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

.method public getName()Ljavax/naming/Name;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/ModifyRN;->name:Ljavax/naming/Name;

    return-object v0
.end method

.method public getNewRelativeName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/ModifyRN;->newRelativeName:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleteOldName()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lorg/apache/ldap/server/invocation/ModifyRN;->deleteOldName:Z

    return v0
.end method

.method public setName(Ljavax/naming/Name;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/ModifyRN;->name:Ljavax/naming/Name;

    return-void
.end method
