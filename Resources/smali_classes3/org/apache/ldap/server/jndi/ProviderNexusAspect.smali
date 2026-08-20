.class public Lorg/apache/ldap/server/jndi/ProviderNexusAspect;
.super Ljava/lang/Object;
.source "ProviderNexusAspect.aj"


# static fields
.field private static ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final ajc$perSingletonInstance:Lorg/apache/ldap/server/jndi/ProviderNexusAspect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    :try_start_0
    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$postClinit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-object v0, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajc$interFieldGetDispatch$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$s_contextStacks()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lorg/apache/ldap/server/jndi/JndiProvider;->ajc$interField$org_apache_ldap_server_jndi_ProviderNexusAspect$s_contextStacks:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static ajc$interFieldInit$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$s_contextStacks()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/ldap/server/jndi/JndiProvider;->ajc$interField$org_apache_ldap_server_jndi_ProviderNexusAspect$s_contextStacks:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static ajc$interFieldSetDispatch$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$s_contextStacks(Ljava/lang/ThreadLocal;)V
    .locals 0

    sput-object p0, Lorg/apache/ldap/server/jndi/JndiProvider;->ajc$interField$org_apache_ldap_server_jndi_ProviderNexusAspect$s_contextStacks:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static ajc$interMethod$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$peek()Ljavax/naming/ldap/LdapContext;
    .locals 1

    .line 98
    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$interFieldGetDispatch$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$s_contextStacks()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/ldap/LdapContext;

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public static ajc$interMethod$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$pop()Ljavax/naming/ldap/LdapContext;
    .locals 1

    .line 80
    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$interFieldGetDispatch$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$s_contextStacks()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/ldap/LdapContext;

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public static ajc$interMethod$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$push(Ljavax/naming/ldap/LdapContext;)V
    .locals 2

    .line 60
    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$interFieldGetDispatch$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$s_contextStacks()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 65
    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$interFieldGetDispatch$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$s_contextStacks()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 68
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static ajc$interMethodDispatch1$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$peek()Ljavax/naming/ldap/LdapContext;
    .locals 1

    invoke-static {}, Lorg/apache/ldap/server/jndi/JndiProvider;->ajc$interMethodDispatch2$org_apache_ldap_server_jndi$peek()Ljavax/naming/ldap/LdapContext;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethodDispatch1$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$pop()Ljavax/naming/ldap/LdapContext;
    .locals 1

    invoke-static {}, Lorg/apache/ldap/server/jndi/JndiProvider;->ajc$interMethodDispatch2$org_apache_ldap_server_jndi_ProviderNexusAspect$pop()Ljavax/naming/ldap/LdapContext;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethodDispatch1$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$push(Ljavax/naming/ldap/LdapContext;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/ldap/server/jndi/JndiProvider;->ajc$interMethodDispatch2$org_apache_ldap_server_jndi_ProviderNexusAspect$push(Ljavax/naming/ldap/LdapContext;)V

    return-void
.end method

.method private static ajc$postClinit()V
    .locals 1

    new-instance v0, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    invoke-direct {v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;-><init>()V

    sput-object v0, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$perSingletonInstance:Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    return-void
.end method

.method public static aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;
    .locals 3

    sget-object v0, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$perSingletonInstance:Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "org_apache_ldap_server_jndi_ProviderNexusAspect"

    sget-object v2, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getContextStack()Ljava/util/Stack;
    .locals 1

    .line 121
    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$interFieldGetDispatch$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$s_contextStacks()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method public static hasAspect()Z
    .locals 1

    sget-object v0, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$perSingletonInstance:Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V
    .locals 0

    .line 204
    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$interMethodDispatch1$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$pop()Ljavax/naming/ldap/LdapContext;

    return-void
.end method

.method public ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$3$3f85eec1(Lorg/apache/ldap/server/invocation/Invocation;)V
    .locals 1

    .line 213
    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->getContextStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ldap/server/invocation/Invocation;->setContextStack(Ljava/util/Stack;)V

    return-void
.end method

.method public ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V
    .locals 0

    .line 195
    check-cast p1, Ljavax/naming/ldap/LdapContext;

    invoke-static {p1}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$interMethodDispatch1$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$push(Ljavax/naming/ldap/LdapContext;)V

    return-void
.end method
