.class public Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;
.super Ljava/lang/Object;
.source "BootstrapDitContentRuleRegistry.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/DITContentRuleRegistry;


# instance fields
.field private final byOid:Ljava/util/Map;

.field private monitor:Lorg/apache/ldap/server/schema/DITContentRuleRegistryMonitor;

.field private final oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

.field private final oidToSchema:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/schema/OidRegistry;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->byOid:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->oidToSchema:Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    .line 63
    new-instance p1, Lorg/apache/ldap/server/schema/DITContentRuleRegistryMonitorAdapter;

    invoke-direct {p1}, Lorg/apache/ldap/server/schema/DITContentRuleRegistryMonitorAdapter;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/DITContentRuleRegistryMonitor;

    return-void
.end method


# virtual methods
.method public getSchemaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 144
    :cond_0
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "OID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " not found in oid to schema name map!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasDITContentRule(Ljava/lang/String;)Z
    .locals 3

    .line 120
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->hasOid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->byOid:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v2, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return v1
.end method

.method public list()Ljava/util/Iterator;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/DITContentRule;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/schema/DITContentRule;

    .line 113
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/DITContentRuleRegistryMonitor;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/DITContentRuleRegistryMonitor;->lookedUp(Lorg/apache/ldap/common/schema/DITContentRule;)V

    return-object p1

    .line 106
    :cond_0
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "dITContentRule w/ OID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not registered!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/DITContentRuleRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/DITContentRuleRegistryMonitor;->lookupFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    throw v0
.end method

.method public register(Ljava/lang/String;Lorg/apache/ldap/common/schema/DITContentRule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/DITContentRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/DITContentRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/DITContentRule;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ldap/server/schema/OidRegistry;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/DITContentRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/DITContentRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/DITContentRuleRegistryMonitor;

    invoke-interface {p1, p2}, Lorg/apache/ldap/server/schema/DITContentRuleRegistryMonitor;->registered(Lorg/apache/ldap/common/schema/DITContentRule;)V

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "dITContentRule w/ OID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-interface {p2}, Lorg/apache/ldap/common/schema/DITContentRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " has already been registered!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/DITContentRuleRegistryMonitor;

    invoke-interface {v0, p2, p1}, Lorg/apache/ldap/server/schema/DITContentRuleRegistryMonitor;->registerFailed(Lorg/apache/ldap/common/schema/DITContentRule;Ljava/lang/Throwable;)V

    .line 90
    throw p1
.end method

.method public setMonitor(Lorg/apache/ldap/server/schema/DITContentRuleRegistryMonitor;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/DITContentRuleRegistryMonitor;

    return-void
.end method
