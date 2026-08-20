.class public Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;
.super Ljava/lang/Object;
.source "GlobalAttributeTypeRegistry.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/AttributeTypeRegistry;


# instance fields
.field private bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

.field private final byOid:Ljava/util/Map;

.field private monitor:Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitor;

.field private final oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

.field private final oidToSchema:Ljava/util/Map;

.field private systemPartition:Lorg/apache/ldap/server/SystemPartition;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;Lorg/apache/ldap/server/schema/OidRegistry;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->byOid:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->oidToSchema:Ljava/util/Map;

    .line 71
    new-instance v0, Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitorAdapter;

    invoke-direct {v0}, Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitorAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->monitor:Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitor;

    .line 73
    iput-object p3, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    if-eqz p3, :cond_2

    .line 79
    iput-object p2, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

    if-eqz p2, :cond_1

    .line 85
    iput-object p1, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->systemPartition:Lorg/apache/ldap/server/SystemPartition;

    if-eqz p1, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "the system partition cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "the bootstrap registry cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "the OID registry cannot be null"

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

    .line 178
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;->getSchemaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;->getSchemaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 190
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

.method public hasAttributeType(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 161
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v1, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->hasOid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->byOid:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v2, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

    invoke-virtual {v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;->hasAttributeType(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    return v0
.end method

.method public list()Ljava/util/Iterator;
    .locals 4

    .line 197
    new-instance v0, Lorg/apache/ldap/common/util/JoinIterator;

    const/4 v1, 0x2

    .line 198
    new-array v1, v1, [Ljava/util/Iterator;

    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

    invoke-virtual {v2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;->list()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 197
    invoke-direct {v0, v1}, Lorg/apache/ldap/common/util/JoinIterator;-><init>([Ljava/util/Iterator;)V

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;->hasAttributeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "attributeType w/ OID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not registered!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->monitor:Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitor;->lookupFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    throw v0

    .line 144
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/schema/AttributeType;

    if-nez v0, :cond_2

    .line 148
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v0

    .line 151
    :cond_2
    iget-object p1, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->monitor:Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitor;

    invoke-interface {p1, v0}, Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitor;->lookedUp(Lorg/apache/ldap/common/schema/AttributeType;)V

    return-object v0
.end method

.method public register(Ljava/lang/String;Lorg/apache/ldap/common/schema/AttributeType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->byOid:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;->hasAttributeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-interface {p2}, Lorg/apache/ldap/common/schema/AttributeType;->getNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 126
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->byOid:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object p1, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->monitor:Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitor;

    invoke-interface {p1, p2}, Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitor;->registered(Lorg/apache/ldap/common/schema/AttributeType;)V

    return-void

    .line 123
    :cond_0
    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    aget-object v3, v0, v1

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/ldap/server/schema/OidRegistry;->register(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    new-instance p1, Ljavax/naming/NamingException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "attributeType w/ OID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-interface {p2}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " has already been registered!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->monitor:Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitor;

    invoke-interface {v0, p2, p1}, Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitor;->registerFailed(Lorg/apache/ldap/common/schema/AttributeType;Ljava/lang/Throwable;)V

    .line 117
    throw p1
.end method

.method public setMonitor(Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitor;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->monitor:Lorg/apache/ldap/server/schema/AttributeTypeRegistryMonitor;

    return-void
.end method
