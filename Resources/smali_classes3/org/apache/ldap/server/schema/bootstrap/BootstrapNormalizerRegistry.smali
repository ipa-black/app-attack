.class public Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;
.super Ljava/lang/Object;
.source "BootstrapNormalizerRegistry.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/NormalizerRegistry;


# instance fields
.field private final byOid:Ljava/util/Map;

.field private monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

.field private final oidToSchema:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->byOid:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->oidToSchema:Ljava/util/Map;

    .line 58
    new-instance v0, Lorg/apache/ldap/server/schema/NormalizerRegistryMonitorAdapter;

    invoke-direct {v0}, Lorg/apache/ldap/server/schema/NormalizerRegistryMonitorAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

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

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 129
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

    .line 121
    :cond_1
    new-instance p1, Ljavax/naming/NamingException;

    const-string v0, "Looks like the arg is not a numeric OID"

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasNormalizer(Ljava/lang/String;)Z
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/Normalizer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/schema/Normalizer;

    .line 106
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;->lookedUp(Ljava/lang/String;Lorg/apache/ldap/common/schema/Normalizer;)V

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Normalizer for OID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " does not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;->lookupFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V

    .line 102
    throw v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ldap/common/schema/Normalizer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->byOid:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

    invoke-interface {p1, p2, p3}, Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;->registered(Ljava/lang/String;Lorg/apache/ldap/common/schema/Normalizer;)V

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Normalizer already registered for OID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

    invoke-interface {v0, p2, p3, p1}, Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;->registerFailed(Ljava/lang/String;Lorg/apache/ldap/common/schema/Normalizer;Ljavax/naming/NamingException;)V

    .line 86
    throw p1
.end method

.method public setMonitor(Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;->monitor:Lorg/apache/ldap/server/schema/NormalizerRegistryMonitor;

    return-void
.end method
