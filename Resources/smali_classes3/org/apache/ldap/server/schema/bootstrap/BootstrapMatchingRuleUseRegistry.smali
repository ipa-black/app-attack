.class public Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;
.super Ljava/lang/Object;
.source "BootstrapMatchingRuleUseRegistry.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/MatchingRuleUseRegistry;


# instance fields
.field private final byName:Ljava/util/Map;

.field private monitor:Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitor;

.field private final nameToSchema:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->byName:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->nameToSchema:Ljava/util/Map;

    .line 59
    new-instance v0, Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitorAdapter;

    invoke-direct {v0}, Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitorAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitor;

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

    .line 120
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->nameToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->nameToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 125
    :cond_0
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " not found in name to schema name map!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasMatchingRuleUse(Ljava/lang/String;)Z
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->byName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public list()Ljava/util/Iterator;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->byName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/MatchingRuleUse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->byName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->byName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/schema/MatchingRuleUse;

    .line 107
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitor;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitor;->lookedUp(Lorg/apache/ldap/common/schema/MatchingRuleUse;)V

    return-object p1

    .line 100
    :cond_0
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "matchingRuleUse w/ name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not registered!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitor;->lookupFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    throw v0
.end method

.method public register(Ljava/lang/String;Lorg/apache/ldap/common/schema/MatchingRuleUse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->byName:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRuleUse;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->nameToSchema:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRuleUse;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->byName:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRuleUse;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitor;

    invoke-interface {p1, p2}, Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitor;->registered(Lorg/apache/ldap/common/schema/MatchingRuleUse;)V

    return-void

    .line 84
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "matchingRuleUse w/ name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-interface {p2}, Lorg/apache/ldap/common/schema/MatchingRuleUse;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " has already been registered!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitor;

    invoke-interface {v0, p2, p1}, Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitor;->registerFailed(Lorg/apache/ldap/common/schema/MatchingRuleUse;Ljava/lang/Throwable;)V

    .line 87
    throw p1
.end method

.method public setMonitor(Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitor;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;->monitor:Lorg/apache/ldap/server/schema/MatchingRuleUseRegistryMonitor;

    return-void
.end method
