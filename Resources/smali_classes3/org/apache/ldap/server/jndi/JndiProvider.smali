.class public Lorg/apache/ldap/server/jndi/JndiProvider;
.super Ljava/lang/Object;
.source "JndiProvider.java"

# interfaces
.implements Lorg/apache/ldap/server/BackendSubsystem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;
    }
.end annotation


# static fields
.field public static ajc$interField$org_apache_ldap_server_jndi_ProviderNexusAspect$s_contextStacks:Ljava/lang/ThreadLocal;

.field private static s_singleton:Lorg/apache/ldap/server/jndi/JndiProvider;


# instance fields
.field private interceptor:Lorg/apache/ldap/server/interceptor/Interceptor;

.field private isShutdown:Z

.field private nexus:Lorg/apache/ldap/server/RootNexus;

.field private proxy:Lorg/apache/ldap/server/PartitionNexus;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$interFieldInit$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$s_contextStacks()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/server/RootNexus;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->isShutdown:Z

    .line 77
    sget-object v0, Lorg/apache/ldap/server/jndi/JndiProvider;->s_singleton:Lorg/apache/ldap/server/jndi/JndiProvider;

    if-nez v0, :cond_0

    .line 83
    sput-object p0, Lorg/apache/ldap/server/jndi/JndiProvider;->s_singleton:Lorg/apache/ldap/server/jndi/JndiProvider;

    .line 84
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->nexus:Lorg/apache/ldap/server/RootNexus;

    .line 85
    new-instance p1, Lorg/apache/ldap/server/interceptor/InterceptorChain;

    invoke-direct {p1}, Lorg/apache/ldap/server/interceptor/InterceptorChain;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->interceptor:Lorg/apache/ldap/server/interceptor/Interceptor;

    .line 86
    new-instance p1, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;

    invoke-direct {p1, p0}, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;-><init>(Lorg/apache/ldap/server/jndi/JndiProvider;)V

    iput-object p1, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->proxy:Lorg/apache/ldap/server/PartitionNexus;

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 80
    const-string v0, "Cannot instantiate more than one JndiProvider!"

    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/jndi/JndiProvider;)Lorg/apache/ldap/server/RootNexus;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->nexus:Lorg/apache/ldap/server/RootNexus;

    return-object p0
.end method

.method public static ajc$interMethodDispatch2$org_apache_ldap_server_jndi$peek()Ljavax/naming/ldap/LdapContext;
    .locals 1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$interMethod$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$peek()Ljavax/naming/ldap/LdapContext;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethodDispatch2$org_apache_ldap_server_jndi_ProviderNexusAspect$pop()Ljavax/naming/ldap/LdapContext;
    .locals 1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$interMethod$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$pop()Ljavax/naming/ldap/LdapContext;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethodDispatch2$org_apache_ldap_server_jndi_ProviderNexusAspect$push(Ljavax/naming/ldap/LdapContext;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$interMethod$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$push(Ljavax/naming/ldap/LdapContext;)V

    return-void
.end method

.method static setProviderOn(Lorg/apache/ldap/server/jndi/CoreContextFactory;)V
    .locals 1

    .line 103
    sget-object v0, Lorg/apache/ldap/server/jndi/JndiProvider;->s_singleton:Lorg/apache/ldap/server/jndi/JndiProvider;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/jndi/CoreContextFactory;->setProvider(Lorg/apache/ldap/server/jndi/JndiProvider;)V

    return-void
.end method


# virtual methods
.method public getDeadContext()Ljavax/naming/Context;
    .locals 1

    .line 184
    new-instance v0, Lorg/apache/ldap/server/jndi/DeadContext;

    invoke-direct {v0}, Lorg/apache/ldap/server/jndi/DeadContext;-><init>()V

    return-object v0
.end method

.method public getInterceptor()Lorg/apache/ldap/server/interceptor/Interceptor;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->interceptor:Lorg/apache/ldap/server/interceptor/Interceptor;

    return-object v0
.end method

.method public getLdapContext(Ljava/util/Hashtable;)Ljavax/naming/ldap/LdapContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 117
    iget-boolean v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->isShutdown:Z

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lorg/apache/ldap/server/jndi/ServerLdapContext;

    iget-object v1, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->proxy:Lorg/apache/ldap/server/PartitionNexus;

    invoke-direct {v0, v1, p1}, Lorg/apache/ldap/server/jndi/ServerLdapContext;-><init>(Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;)V

    return-object v0

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Eve has been shutdown!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->interceptor:Lorg/apache/ldap/server/interceptor/Interceptor;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/apache/ldap/server/interceptor/Interceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 172
    invoke-virtual {p1}, Lorg/apache/ldap/server/invocation/Invocation;->getReturnValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setInterceptor(Lorg/apache/ldap/server/interceptor/Interceptor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 165
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->interceptor:Lorg/apache/ldap/server/interceptor/Interceptor;

    return-void

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "interceptor"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 139
    iget-boolean v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->isShutdown:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->nexus:Lorg/apache/ldap/server/RootNexus;

    invoke-virtual {v0}, Lorg/apache/ldap/server/RootNexus;->sync()V

    .line 145
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->nexus:Lorg/apache/ldap/server/RootNexus;

    invoke-virtual {v0}, Lorg/apache/ldap/server/RootNexus;->close()V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->nexus:Lorg/apache/ldap/server/RootNexus;

    .line 147
    iput-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->proxy:Lorg/apache/ldap/server/PartitionNexus;

    .line 148
    iget-object v1, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->interceptor:Lorg/apache/ldap/server/interceptor/Interceptor;

    invoke-interface {v1}, Lorg/apache/ldap/server/interceptor/Interceptor;->destroy()V

    .line 149
    iput-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->interceptor:Lorg/apache/ldap/server/interceptor/Interceptor;

    const/4 v1, 0x1

    .line 150
    iput-boolean v1, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->isShutdown:Z

    .line 151
    sput-object v0, Lorg/apache/ldap/server/jndi/JndiProvider;->s_singleton:Lorg/apache/ldap/server/jndi/JndiProvider;

    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Eve has been shutdown!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->isShutdown:Z

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider;->nexus:Lorg/apache/ldap/server/RootNexus;

    invoke-virtual {v0}, Lorg/apache/ldap/server/RootNexus;->sync()V

    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Eve has been shutdown!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
