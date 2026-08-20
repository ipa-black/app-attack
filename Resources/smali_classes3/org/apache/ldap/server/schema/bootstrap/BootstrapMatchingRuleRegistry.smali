.class public Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;
.super Ljava/lang/Object;
.source "BootstrapMatchingRuleRegistry.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/MatchingRuleRegistry;


# instance fields
.field private final byOid:Ljava/util/Map;

.field private monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

.field private final oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

.field private final oidToSchema:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/schema/OidRegistry;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->oidToSchema:Ljava/util/Map;

    .line 63
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->byOid:Ljava/util/Map;

    .line 65
    new-instance p1, Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitorAdapter;

    invoke-direct {p1}, Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitorAdapter;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    return-void
.end method


# virtual methods
.method getMonitor()Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    return-object v0
.end method

.method public getSchemaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 149
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

.method public hasMatchingRule(Ljava/lang/String;)Z
    .locals 3

    .line 125
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->hasOid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 129
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->byOid:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

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

    .line 183
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/MatchingRule;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/schema/MatchingRule;

    .line 84
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;->lookedUp(Lorg/apache/ldap/common/schema/MatchingRule;)V

    return-object p1

    .line 88
    :cond_0
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unknown MatchingRule OID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;->lookupFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V

    .line 90
    throw v0
.end method

.method public register(Ljava/lang/String;Lorg/apache/ldap/common/schema/MatchingRule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRule;->getNames()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 110
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 115
    iget-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    invoke-interface {p1, p2}, Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;->registered(Lorg/apache/ldap/common/schema/MatchingRule;)V

    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    aget-object v2, p1, v0

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/ldap/server/schema/OidRegistry;->register(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    new-instance p1, Ljavax/naming/NamingException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "matchingRule w/ OID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " has already been registered!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    invoke-interface {v0, p2, p1}, Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;->registerFailed(Lorg/apache/ldap/common/schema/MatchingRule;Ljavax/naming/NamingException;)V

    .line 104
    throw p1
.end method

.method setMonitor(Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    return-void
.end method
