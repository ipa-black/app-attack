.class public Lorg/apache/ldap/server/protocol/SessionRegistry;
.super Ljava/lang/Object;
.source "SessionRegistry.java"


# static fields
.field private static s_singleton:Lorg/apache/ldap/server/protocol/SessionRegistry;


# instance fields
.field private final contexts:Ljava/util/Map;

.field private env:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Ljava/util/Hashtable;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->contexts:Ljava/util/Map;

    .line 78
    sget-object v0, Lorg/apache/ldap/server/protocol/SessionRegistry;->s_singleton:Lorg/apache/ldap/server/protocol/SessionRegistry;

    if-nez v0, :cond_1

    .line 80
    sput-object p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->s_singleton:Lorg/apache/ldap/server/protocol/SessionRegistry;

    .line 88
    const-string v0, ""

    const-string v1, "java.naming.provider.url"

    if-nez p1, :cond_0

    .line 90
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->env:Ljava/util/Hashtable;

    .line 92
    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->env:Ljava/util/Hashtable;

    const-string v0, "java.naming.factory.initial"

    const-string v1, "org.apache.ldap.server.jndi.ServerContextFactory"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->env:Ljava/util/Hashtable;

    .line 100
    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "there can only be one singlton"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getSingleton()Lorg/apache/ldap/server/protocol/SessionRegistry;
    .locals 1

    .line 61
    sget-object v0, Lorg/apache/ldap/server/protocol/SessionRegistry;->s_singleton:Lorg/apache/ldap/server/protocol/SessionRegistry;

    return-object v0
.end method

.method static releaseSingleton()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    sput-object v0, Lorg/apache/ldap/server/protocol/SessionRegistry;->s_singleton:Lorg/apache/ldap/server/protocol/SessionRegistry;

    return-void
.end method


# virtual methods
.method public getEnvironment()Ljava/util/Hashtable;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->env:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    return-object v0
.end method

.method public getLdapContext(Lorg/apache/mina/protocol/ProtocolSession;[Ljavax/naming/ldap/Control;Z)Ljavax/naming/ldap/LdapContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->contexts:Ljava/util/Map;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->contexts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/ldap/LdapContext;

    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    .line 139
    iget-object p1, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->env:Ljava/util/Hashtable;

    const-string p3, "server.disable.anonymous"

    invoke-virtual {p1, p3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 144
    iget-object p1, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->env:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    .line 146
    iget-object p3, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->env:Ljava/util/Hashtable;

    const-string v0, "server.use.factory.instance"

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 148
    iget-object p1, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->env:Ljava/util/Hashtable;

    const-string p2, "server.use.factory.instance"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/spi/InitialContextFactory;

    if-eqz p1, :cond_0

    .line 155
    iget-object p2, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->env:Ljava/util/Hashtable;

    invoke-interface {p1, p2}, Ljavax/naming/spi/InitialContextFactory;->getInitialContext(Ljava/util/Hashtable;)Ljavax/naming/Context;

    move-result-object p1

    check-cast p1, Ljavax/naming/ldap/LdapContext;

    goto :goto_0

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "server.use.factory.instance was set in env but was null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_1
    new-instance p3, Ljavax/naming/ldap/InitialLdapContext;

    invoke-direct {p3, p1, p2}, Ljavax/naming/ldap/InitialLdapContext;-><init>(Ljava/util/Hashtable;[Ljavax/naming/ldap/Control;)V

    move-object p1, p3

    goto :goto_0

    .line 141
    :cond_2
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    const-string p2, "Anonymous binds have been disabled!"

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 135
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public remove(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->contexts:Ljava/util/Map;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->contexts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLdapContext(Lorg/apache/mina/protocol/ProtocolSession;Ljavax/naming/ldap/LdapContext;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->contexts:Ljava/util/Map;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/protocol/SessionRegistry;->contexts:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public terminateSession(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0

    .line 203
    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->close()V

    return-void
.end method
