.class public Lorg/apache/ldap/server/jndi/ServerContextFactory;
.super Lorg/apache/ldap/server/jndi/CoreContextFactory;
.source "ServerContextFactory.java"


# static fields
.field private static final DEFAULT_MINA_REGISTRY:Lorg/apache/mina/registry/ServiceRegistry;

.field private static final LDAP_PORT:I = 0x185

.field private static kerberosService:Lorg/apache/mina/registry/Service;

.field private static ldapService:Lorg/apache/mina/registry/Service;

.field private static minaRegistry:Lorg/apache/mina/registry/ServiceRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    :try_start_0
    new-instance v0, Lorg/apache/mina/registry/SimpleServiceRegistry;

    invoke-direct {v0}, Lorg/apache/mina/registry/SimpleServiceRegistry;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    .line 80
    :goto_0
    sput-object v0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->DEFAULT_MINA_REGISTRY:Lorg/apache/mina/registry/ServiceRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/apache/ldap/server/jndi/CoreContextFactory;-><init>()V

    return-void
.end method

.method private setupRegistry()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    const-string v1, "server.net.passthru"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/registry/ServiceRegistry;

    if-eqz v0, :cond_1

    .line 188
    iget-object v2, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    const-string v3, "Handoff Succeeded!"

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 192
    :cond_1
    :goto_0
    sget-object v1, Lorg/apache/ldap/server/jndi/ServerContextFactory;->DEFAULT_MINA_REGISTRY:Lorg/apache/mina/registry/ServiceRegistry;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    move-object v0, v1

    .line 202
    :cond_2
    sput-object v0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->minaRegistry:Lorg/apache/mina/registry/ServiceRegistry;

    return-void

    .line 194
    :cond_3
    new-instance v0, Ljavax/naming/NamingException;

    const-string v1, "Default MINA service registry is not available."

    invoke-direct {v0, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startKerberosProtocol()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 220
    iget-object v1, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 222
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 226
    iget-object v3, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 232
    :cond_1
    new-instance v1, Lorg/apache/kerberos/service/KdcConfiguration;

    invoke-direct {v1, v0}, Lorg/apache/kerberos/service/KdcConfiguration;-><init>(Ljava/util/Properties;)V

    .line 234
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    const-string v2, "kdc.default.port"

    const/16 v3, 0x58

    invoke-static {v0, v2, v3}, Lorg/apache/ldap/common/util/PropertiesUtils;->get(Ljava/util/Hashtable;Ljava/lang/Object;I)I

    move-result v0

    .line 236
    new-instance v2, Lorg/apache/mina/registry/Service;

    sget-object v3, Lorg/apache/mina/common/TransportType;->DATAGRAM:Lorg/apache/mina/common/TransportType;

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v0}, Ljava/net/InetSocketAddress;-><init>(I)V

    const-string v0, "kerberos"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/mina/registry/Service;-><init>(Ljava/lang/String;Lorg/apache/mina/common/TransportType;Ljava/net/SocketAddress;)V

    .line 238
    new-instance v0, Ljavax/naming/ldap/InitialLdapContext;

    iget-object v3, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    const/4 v4, 0x0

    new-array v4, v4, [Ljavax/naming/ldap/Control;

    invoke-direct {v0, v3, v4}, Ljavax/naming/ldap/InitialLdapContext;-><init>(Ljava/util/Hashtable;[Ljavax/naming/ldap/Control;)V

    .line 240
    iget-object v3, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    const-string v4, "kdc.store.searchbase"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 247
    new-instance v4, Lorg/apache/ldap/common/name/LdapName;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 249
    new-instance v3, Lorg/apache/kerberos/store/JndiPrincipalStoreImpl;

    invoke-direct {v3, v0, v4}, Lorg/apache/kerberos/store/JndiPrincipalStoreImpl;-><init>(Ljavax/naming/ldap/LdapContext;Ljavax/naming/Name;)V

    .line 253
    :try_start_0
    sget-object v0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->minaRegistry:Lorg/apache/mina/registry/ServiceRegistry;

    new-instance v4, Lorg/apache/kerberos/protocol/KerberosProtocolProvider;

    invoke-direct {v4, v1, v3}, Lorg/apache/kerberos/protocol/KerberosProtocolProvider;-><init>(Lorg/apache/kerberos/service/KdcConfiguration;Lorg/apache/kerberos/store/PrincipalStore;)V

    invoke-interface {v0, v2, v4}, Lorg/apache/mina/registry/ServiceRegistry;->bind(Lorg/apache/mina/registry/Service;Lorg/apache/mina/protocol/ProtocolProvider;)V

    .line 255
    sput-object v2, Lorg/apache/ldap/server/jndi/ServerContextFactory;->kerberosService:Lorg/apache/mina/registry/Service;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void

    .line 244
    :cond_2
    new-instance v0, Lorg/apache/ldap/common/exception/LdapConfigurationException;

    const-string v1, "Trying to start kerberos service without setting kdc.store.searchbase"

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/exception/LdapConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startLdapProtocol()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    const-string v1, "server.net.ldap.port"

    const/16 v2, 0x185

    invoke-static {v0, v1, v2}, Lorg/apache/ldap/common/util/PropertiesUtils;->get(Ljava/util/Hashtable;Ljava/lang/Object;I)I

    move-result v0

    .line 273
    new-instance v1, Lorg/apache/mina/registry/Service;

    sget-object v2, Lorg/apache/mina/common/TransportType;->SOCKET:Lorg/apache/mina/common/TransportType;

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v0}, Ljava/net/InetSocketAddress;-><init>(I)V

    const-string v0, "ldap"

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/mina/registry/Service;-><init>(Ljava/lang/String;Lorg/apache/mina/common/TransportType;Ljava/net/SocketAddress;)V

    .line 277
    :try_start_0
    sget-object v0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->minaRegistry:Lorg/apache/mina/registry/ServiceRegistry;

    new-instance v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;

    iget-object v3, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    invoke-direct {v2, v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;-><init>(Ljava/util/Hashtable;)V

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/registry/ServiceRegistry;->bind(Lorg/apache/mina/registry/Service;Lorg/apache/mina/protocol/ProtocolProvider;)V

    .line 279
    sput-object v1, Lorg/apache/ldap/server/jndi/ServerContextFactory;->ldapService:Lorg/apache/mina/registry/Service;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 283
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Failed to bind the LDAP protocol service to the service registry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    new-instance v2, Lorg/apache/ldap/common/exception/LdapConfigurationException;

    invoke-direct {v2, v1}, Lorg/apache/ldap/common/exception/LdapConfigurationException;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2, v0}, Lorg/apache/ldap/common/exception/LdapConfigurationException;->setRootCause(Ljava/lang/Throwable;)V

    .line 289
    throw v2
.end method


# virtual methods
.method public getInitialContext(Ljava/util/Hashtable;)Ljavax/naming/Context;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 101
    const-string v0, "server.operation.shutdown"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    iget-object p1, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    if-nez p1, :cond_0

    .line 105
    new-instance p1, Lorg/apache/ldap/server/jndi/DeadContext;

    invoke-direct {p1}, Lorg/apache/ldap/server/jndi/DeadContext;-><init>()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    invoke-virtual {v0}, Lorg/apache/ldap/server/jndi/JndiProvider;->shutdown()V

    .line 112
    sget-object v0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->minaRegistry:Lorg/apache/mina/registry/ServiceRegistry;

    if-eqz v0, :cond_2

    .line 114
    sget-object v1, Lorg/apache/ldap/server/jndi/ServerContextFactory;->ldapService:Lorg/apache/mina/registry/Service;

    if-eqz v1, :cond_1

    .line 116
    invoke-interface {v0, v1}, Lorg/apache/mina/registry/ServiceRegistry;->unbind(Lorg/apache/mina/registry/Service;)V

    .line 118
    sput-object p1, Lorg/apache/ldap/server/jndi/ServerContextFactory;->ldapService:Lorg/apache/mina/registry/Service;

    .line 121
    :cond_1
    sget-object v0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->kerberosService:Lorg/apache/mina/registry/Service;

    if-eqz v0, :cond_2

    .line 123
    sget-object v1, Lorg/apache/ldap/server/jndi/ServerContextFactory;->minaRegistry:Lorg/apache/mina/registry/ServiceRegistry;

    invoke-interface {v1, v0}, Lorg/apache/mina/registry/ServiceRegistry;->unbind(Lorg/apache/mina/registry/Service;)V

    .line 125
    sput-object p1, Lorg/apache/ldap/server/jndi/ServerContextFactory;->kerberosService:Lorg/apache/mina/registry/Service;
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_2
    new-instance v0, Lorg/apache/ldap/server/jndi/DeadContext;

    invoke-direct {v0}, Lorg/apache/ldap/server/jndi/DeadContext;-><init>()V

    .line 145
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    .line 147
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    return-object v0

    :catchall_0
    move-exception v0

    .line 135
    :try_start_1
    new-instance v1, Ljavax/naming/NamingException;

    const-string v2, "Failed to shutdown."

    invoke-direct {v1, v2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1, v0}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 139
    throw v1

    :catch_0
    move-exception v0

    .line 131
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 147
    new-instance v1, Lorg/apache/ldap/server/jndi/DeadContext;

    invoke-direct {v1}, Lorg/apache/ldap/server/jndi/DeadContext;-><init>()V

    .line 145
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->provider:Lorg/apache/ldap/server/jndi/JndiProvider;

    .line 147
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    .line 143
    throw v0

    .line 153
    :cond_3
    invoke-super {p0, p1}, Lorg/apache/ldap/server/jndi/CoreContextFactory;->getInitialContext(Ljava/util/Hashtable;)Ljavax/naming/Context;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    const-string v1, "server.net.disable.protocol"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 159
    invoke-direct {p0}, Lorg/apache/ldap/server/jndi/ServerContextFactory;->setupRegistry()V

    .line 161
    invoke-direct {p0}, Lorg/apache/ldap/server/jndi/ServerContextFactory;->startLdapProtocol()V

    .line 163
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerContextFactory;->initialEnv:Ljava/util/Hashtable;

    const-string v1, "server.enable.kerberos"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    invoke-direct {p0}, Lorg/apache/ldap/server/jndi/ServerContextFactory;->startKerberosProtocol()V

    :cond_4
    return-object p1
.end method
