.class public Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;
.super Ljava/lang/Object;
.source "BootstrapOidRegistry.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/OidRegistry;


# instance fields
.field private byName:Ljava/util/Hashtable;

.field private byOid:Ljava/util/Hashtable;

.field private monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byOid:Ljava/util/Hashtable;

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byName:Ljava/util/Hashtable;

    .line 42
    new-instance v0, Lorg/apache/ldap/server/schema/OidRegistryMonitorAdapter;

    invoke-direct {v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitorAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    return-void
.end method


# virtual methods
.method getMonitor()Lorg/apache/ldap/server/schema/OidRegistryMonitor;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    return-object v0
.end method

.method public getNameSet(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byOid:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 151
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->namesResolved(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 156
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->namesResolved(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 143
    :cond_1
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "OID \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 144
    const-string v2, "\' was not found within the OID registry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->oidDoesNotExist(Ljava/lang/String;Ljavax/naming/NamingException;)V

    .line 146
    throw v0
.end method

.method public getOid(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->getOidWithOid(Ljava/lang/String;)V

    return-object p1

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->oidResolved(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 79
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v2, p1, v0, v1}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->oidResolved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 91
    :cond_2
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "OID for name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' was not found within the OID registry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->oidResolutionFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V

    .line 94
    throw v0

    .line 52
    :cond_3
    new-instance p1, Ljavax/naming/NamingException;

    const-string v0, "name should not be null"

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrimaryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byOid:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->nameResolved(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 128
    :cond_0
    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->nameResolved(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 116
    :cond_1
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "OID \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 117
    const-string v2, "\' was not found within the OID registry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->oidDoesNotExist(Ljava/lang/String;Ljavax/naming/NamingException;)V

    .line 119
    throw v0
.end method

.method public hasOid(Ljava/lang/String;)Z
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byOid:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public list()Ljava/util/Iterator;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byOid:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    iget-object v2, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byOid:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p1

    goto :goto_1

    .line 213
    :cond_1
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byOid:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 215
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 217
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 225
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_1

    .line 229
    :cond_3
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 231
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    .line 233
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 242
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->byOid:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->registered(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Swap the parameter order: the oid does not start with a digit!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setMonitor(Lorg/apache/ldap/server/schema/OidRegistryMonitor;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    return-void
.end method
