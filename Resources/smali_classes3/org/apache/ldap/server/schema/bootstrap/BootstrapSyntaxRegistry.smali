.class public Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;
.super Ljava/lang/Object;
.source "BootstrapSyntaxRegistry.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/SyntaxRegistry;


# instance fields
.field private final byOid:Ljava/util/Map;

.field private monitor:Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;

.field private final oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

.field private final oidToSchema:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/schema/OidRegistry;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->monitor:Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;

    .line 61
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    .line 62
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->byOid:Ljava/util/Map;

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->oidToSchema:Ljava/util/Map;

    .line 64
    new-instance p1, Lorg/apache/ldap/server/schema/SyntaxRegistryMonitorAdapter;

    invoke-direct {p1}, Lorg/apache/ldap/server/schema/SyntaxRegistryMonitorAdapter;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->monitor:Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;

    return-void
.end method


# virtual methods
.method getMonitor()Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->monitor:Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;

    return-object v0
.end method

.method public getSchemaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 142
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

.method public hasSyntax(Ljava/lang/String;)Z
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->hasOid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->byOid:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

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

    .line 176
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/Syntax;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->byOid:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/schema/Syntax;

    .line 83
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->monitor:Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;->lookedUp(Lorg/apache/ldap/common/schema/Syntax;)V

    return-object p1

    .line 87
    :cond_0
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unknown syntax OID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->monitor:Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;->lookupFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V

    .line 89
    throw v0
.end method

.method public register(Ljava/lang/String;Lorg/apache/ldap/common/schema/Syntax;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->byOid:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/Syntax;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/Syntax;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/Syntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ldap/server/schema/OidRegistry;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->byOid:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/Syntax;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->oidToSchema:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ldap/common/schema/Syntax;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->monitor:Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;

    invoke-interface {p1, p2}, Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;->registered(Lorg/apache/ldap/common/schema/Syntax;)V

    return-void

    .line 100
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "syntax w/ OID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-interface {p2}, Lorg/apache/ldap/common/schema/Syntax;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " has already been registered!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->monitor:Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;

    invoke-interface {v0, p2, p1}, Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;->registerFailed(Lorg/apache/ldap/common/schema/Syntax;Ljavax/naming/NamingException;)V

    .line 103
    throw p1
.end method

.method setMonitor(Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->monitor:Lorg/apache/ldap/server/schema/SyntaxRegistryMonitor;

    return-void
.end method
