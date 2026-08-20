.class public Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;
.super Ljava/lang/Object;
.source "GlobalMatchingRuleRegistry.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/MatchingRuleRegistry;


# instance fields
.field private bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

.field private final byOid:Ljava/util/Map;

.field private monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

.field private final oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

.field private final oidToSchema:Ljava/util/Map;

.field private systemPartition:Lorg/apache/ldap/server/SystemPartition;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;Lorg/apache/ldap/server/schema/OidRegistry;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->byOid:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->oidToSchema:Ljava/util/Map;

    .line 66
    iput-object p3, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    .line 67
    new-instance p3, Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitorAdapter;

    invoke-direct {p3}, Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitorAdapter;-><init>()V

    iput-object p3, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    .line 69
    iput-object p2, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    if-eqz p2, :cond_1

    .line 75
    iput-object p1, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->systemPartition:Lorg/apache/ldap/server/SystemPartition;

    if-eqz p1, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "the system partition cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "the bootstrap registry cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getSchemaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->hasMatchingRule(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->getSchemaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 175
    :cond_1
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

    .line 144
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->hasOid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 148
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->byOid:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v2, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->hasMatchingRule(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    return v1
.end method

.method public list()Ljava/util/Iterator;
    .locals 4

    .line 182
    new-instance v0, Lorg/apache/ldap/common/util/JoinIterator;

    const/4 v1, 0x2

    .line 183
    new-array v1, v1, [Ljava/util/Iterator;

    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    invoke-virtual {v2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->list()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 182
    invoke-direct {v0, v1}, Lorg/apache/ldap/common/util/JoinIterator;-><init>([Ljava/util/Iterator;)V

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/MatchingRule;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/schema/MatchingRule;

    .line 124
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;->lookedUp(Lorg/apache/ldap/common/schema/MatchingRule;)V

    return-object p1

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->hasMatchingRule(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;->lookedUp(Lorg/apache/ldap/common/schema/MatchingRule;)V

    return-object p1

    .line 135
    :cond_1
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "dITContentRule w/ OID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not registered!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;->lookupFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V

    .line 138
    throw v0
.end method

.method public register(Ljava/lang/String;Lorg/apache/ldap/common/schema/MatchingRule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->hasMatchingRule(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ldap/server/schema/OidRegistry;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->byOid:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p1, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    invoke-interface {p1, p2}, Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;->registered(Lorg/apache/ldap/common/schema/MatchingRule;)V

    return-void

    .line 104
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "dITContentRule w/ OID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " has already been registered!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    invoke-interface {v0, p2, p1}, Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;->registerFailed(Lorg/apache/ldap/common/schema/MatchingRule;Ljavax/naming/NamingException;)V

    .line 107
    throw p1
.end method

.method public setMonitor(Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleRegistryMonitor;

    return-void
.end method
