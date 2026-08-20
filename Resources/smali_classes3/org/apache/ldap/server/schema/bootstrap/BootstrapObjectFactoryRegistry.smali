.class public Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;
.super Ljava/lang/Object;
.source "BootstrapObjectFactoryRegistry.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/ObjectFactoryRegistry;


# instance fields
.field private final byOid:Ljava/util/HashMap;

.field private final oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/schema/OidRegistry;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;->byOid:Ljava/util/HashMap;

    .line 57
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    return-void
.end method


# virtual methods
.method public getObjectFactories(Ljavax/naming/ldap/LdapContext;)Lorg/apache/ldap/server/jndi/ServerDirObjectFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 63
    const-string v0, ""

    invoke-interface {p1, v0}, Ljavax/naming/ldap/LdapContext;->getAttributes(Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object v0

    const-string v1, "objectClass"

    invoke-interface {v0, v1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 70
    :cond_0
    invoke-interface {p1}, Ljavax/naming/ldap/LdapContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v2

    const-string v3, "factory.hint"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-interface {p1}, Ljavax/naming/ldap/LdapContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 74
    iget-object v2, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v2, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v2, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;->byOid:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;->byOid:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/jndi/ServerDirObjectFactory;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 84
    :goto_0
    invoke-interface {v0}, Ljavax/naming/directory/Attribute;->size()I

    move-result v2

    if-lt p1, v2, :cond_2

    return-object v1

    .line 86
    :cond_2
    iget-object v2, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Ljavax/naming/directory/Attribute;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    iget-object v3, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;->byOid:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    iget-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;->byOid:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/jndi/ServerDirObjectFactory;

    return-object p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public register(Lorg/apache/ldap/server/jndi/ServerDirObjectFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;->byOid:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {p1}, Lorg/apache/ldap/server/jndi/ServerDirObjectFactory;->getObjectClassId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
