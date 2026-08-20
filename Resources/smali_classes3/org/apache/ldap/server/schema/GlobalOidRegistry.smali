.class public Lorg/apache/ldap/server/schema/GlobalOidRegistry;
.super Ljava/lang/Object;
.source "GlobalOidRegistry.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/OidRegistry;


# instance fields
.field private bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;

.field private byName:Ljava/util/Hashtable;

.field private byOid:Ljava/util/Hashtable;

.field private monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

.field private systemPartition:Lorg/apache/ldap/server/SystemPartition;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byOid:Ljava/util/Hashtable;

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byName:Ljava/util/Hashtable;

    .line 43
    new-instance v0, Lorg/apache/ldap/server/schema/OidRegistryMonitorAdapter;

    invoke-direct {v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitorAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    .line 63
    iput-object p2, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;

    if-eqz p2, :cond_1

    .line 70
    iput-object p1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->systemPartition:Lorg/apache/ldap/server/SystemPartition;

    if-eqz p1, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "the system partition cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "the bootstrap registry cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getMonitor()Lorg/apache/ldap/server/schema/OidRegistryMonitor;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    return-object v0
.end method

.method public getNameSet(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byOid:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 266
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->namesResolved(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 273
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->namesResolved(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "OID \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\' was not found within the OID registry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Ljavax/naming/NamingException;

    invoke-direct {v1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v0, p1, v1}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->oidDoesNotExist(Ljava/lang/String;Ljavax/naming/NamingException;)V

    .line 261
    throw v1
.end method

.method public getOid(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->getOidWithOid(Ljava/lang/String;)V

    return-object p1

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->oidResolved(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 140
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->hasOid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->oidResolved(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 156
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 160
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v2, p1, v0, v1}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->oidResolved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 179
    :cond_3
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;

    invoke-virtual {v1, v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->hasOid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->oidResolved(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 193
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "OID for name \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\' was not found within the OID registry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljavax/naming/NamingException;

    invoke-direct {v1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v0, p1, v1}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->oidResolutionFailed(Ljava/lang/String;Ljavax/naming/NamingException;)V

    .line 199
    throw v1

    .line 115
    :cond_5
    new-instance p1, Ljavax/naming/NamingException;

    const-string v0, "name should not be null"

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrimaryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byOid:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->nameResolved(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 238
    :cond_0
    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->nameResolved(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "OID \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\' was not found within the OID registry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Ljavax/naming/NamingException;

    invoke-direct {v1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v0, p1, v1}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->oidDoesNotExist(Ljava/lang/String;Ljavax/naming/NamingException;)V

    .line 228
    throw v1
.end method

.method public hasOid(Ljava/lang/String;)Z
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byOid:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->bootstrap:Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;->hasOid(Ljava/lang/String;)Z

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

    .line 284
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byOid:Ljava/util/Hashtable;

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

    .line 293
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 303
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byName:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byOid:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p1

    goto :goto_1

    .line 335
    :cond_1
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byOid:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 337
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 339
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 342
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 347
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_1

    .line 353
    :cond_3
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 355
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    .line 357
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 366
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 360
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

    .line 370
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->byOid:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/schema/OidRegistryMonitor;->registered(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 295
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Swap the parameter order: the oid does not start with a digit!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setMonitor(Lorg/apache/ldap/server/schema/OidRegistryMonitor;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;->monitor:Lorg/apache/ldap/server/schema/OidRegistryMonitor;

    return-void
.end method
