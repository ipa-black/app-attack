.class public Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;
.super Ljava/lang/Object;
.source "BootstrapComparatorRegistry.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/ComparatorRegistry;


# instance fields
.field private final comparators:Ljava/util/Map;

.field private monitor:Lorg/apache/ldap/server/schema/ComparatorRegistryMonitor;

.field private final oidToSchema:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->oidToSchema:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->comparators:Ljava/util/Map;

    .line 60
    new-instance v0, Lorg/apache/ldap/server/schema/ComparatorRegistryMonitorAdapter;

    invoke-direct {v0}, Lorg/apache/ldap/server/schema/ComparatorRegistryMonitorAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->monitor:Lorg/apache/ldap/server/schema/ComparatorRegistryMonitor;

    .line 62
    invoke-static {p0}, Lorg/apache/ldap/server/schema/SerializableComparator;->setRegistry(Lorg/apache/ldap/server/schema/ComparatorRegistry;)V

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

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    const-string v1, "OID "

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 132
    :cond_0
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " not found in oid to schema name map!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " is not a numeric OID"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasComparator(Ljava/lang/String;)Z
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->comparators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lookup(Ljava/lang/String;)Ljava/util/Comparator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->comparators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->comparators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 103
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->monitor:Lorg/apache/ldap/server/schema/ComparatorRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/ComparatorRegistryMonitor;->lookedUp(Ljava/lang/String;Ljava/util/Comparator;)V

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Comparator not found for OID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->monitor:Lorg/apache/ldap/server/schema/ComparatorRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/ComparatorRegistryMonitor;->lookupFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V

    .line 110
    throw v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->comparators:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->comparators:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->monitor:Lorg/apache/ldap/server/schema/ComparatorRegistryMonitor;

    invoke-interface {p1, p2, p3}, Lorg/apache/ldap/server/schema/ComparatorRegistryMonitor;->registered(Ljava/lang/String;Ljava/util/Comparator;)V

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Comparator with OID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " already registered!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->monitor:Lorg/apache/ldap/server/schema/ComparatorRegistryMonitor;

    invoke-interface {v0, p2, p3, p1}, Lorg/apache/ldap/server/schema/ComparatorRegistryMonitor;->registerFailed(Ljava/lang/String;Ljava/util/Comparator;Ljavax/naming/NamingException;)V

    .line 89
    throw p1
.end method

.method public setMonitor(Lorg/apache/ldap/server/schema/ComparatorRegistryMonitor;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;->monitor:Lorg/apache/ldap/server/schema/ComparatorRegistryMonitor;

    return-void
.end method
