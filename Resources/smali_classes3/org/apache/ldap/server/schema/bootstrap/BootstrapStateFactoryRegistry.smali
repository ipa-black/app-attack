.class public Lorg/apache/ldap/server/schema/bootstrap/BootstrapStateFactoryRegistry;
.super Ljava/lang/Object;
.source "BootstrapStateFactoryRegistry.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/StateFactoryRegistry;


# instance fields
.field private final byClass:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapStateFactoryRegistry;->byClass:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getStateFactories(Ljava/lang/Object;)Lorg/apache/ldap/server/jndi/ServerDirStateFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapStateFactoryRegistry;->byClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapStateFactoryRegistry;->byClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/jndi/ServerDirStateFactory;

    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_3

    .line 60
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    const/4 p1, 0x0

    .line 62
    :goto_0
    array-length v1, v0

    if-lt p1, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 64
    :cond_1
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapStateFactoryRegistry;->byClass:Ljava/util/HashMap;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapStateFactoryRegistry;->byClass:Ljava/util/HashMap;

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/jndi/ServerDirStateFactory;

    return-object p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapStateFactoryRegistry;->byClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapStateFactoryRegistry;->byClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/jndi/ServerDirStateFactory;

    return-object p1
.end method

.method public register(Lorg/apache/ldap/server/jndi/ServerDirStateFactory;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapStateFactoryRegistry;->byClass:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/apache/ldap/server/jndi/ServerDirStateFactory;->getAssociatedClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
