.class public Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;
.super Ljava/lang/Object;
.source "GlobalNormalizerRegistry.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/NormalizerRegistry;


# instance fields
.field private bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;

.field private monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

.field private final normalizers:Ljava/util/Map;

.field private final oidToSchema:Ljava/util/Map;

.field private systemPartition:Lorg/apache/ldap/server/SystemPartition;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->oidToSchema:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->normalizers:Ljava/util/Map;

    .line 63
    new-instance v0, Lorg/apache/ldap/server/schema/NormalizerRegistryMonitorAdapter;

    invoke-direct {v0}, Lorg/apache/ldap/server/schema/NormalizerRegistryMonitorAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

    .line 65
    iput-object p2, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;

    if-eqz p2, :cond_1

    .line 71
    iput-object p1, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->systemPartition:Lorg/apache/ldap/server/SystemPartition;

    if-eqz p1, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "the system partition cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
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

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    const-string v1, "OID "

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->hasNormalizer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->getSchemaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 160
    :cond_1
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

    .line 147
    :cond_2
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

.method public hasNormalizer(Ljava/lang/String;)Z
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->normalizers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->hasNormalizer(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/Normalizer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->normalizers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->normalizers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/schema/Normalizer;

    .line 120
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;->lookedUp(Ljava/lang/String;Lorg/apache/ldap/common/schema/Normalizer;)V

    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->hasNormalizer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;->lookedUp(Ljava/lang/String;Lorg/apache/ldap/common/schema/Normalizer;)V

    return-object v0

    .line 131
    :cond_1
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Normalizer not found for OID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;->lookupFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V

    .line 133
    throw v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ldap/common/schema/Normalizer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->normalizers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;

    invoke-virtual {v0, p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->hasNormalizer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object p1, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->normalizers:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object p1, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

    invoke-interface {p1, p2, p3}, Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;->registered(Ljava/lang/String;Lorg/apache/ldap/common/schema/Normalizer;)V

    return-void

    .line 100
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Normalizer with OID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " already registered!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

    invoke-interface {v0, p2, p3, p1}, Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;->registerFailed(Ljava/lang/String;Lorg/apache/ldap/common/schema/Normalizer;Ljavax/naming/NamingException;)V

    .line 103
    throw p1
.end method

.method public setMonitor(Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;->monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

    return-void
.end method
