.class public Lorg/apache/ldap/server/operational/OperationalAttributeService;
.super Lorg/apache/ldap/server/interceptor/BaseInterceptor;
.source "OperationalAttributeService.java"


# instance fields
.field private final SEARCH_FILTER:Lorg/apache/ldap/server/db/SearchResultFilter;

.field private nexus:Lorg/apache/ldap/server/RootNexus;

.field private registry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;-><init>()V

    .line 54
    new-instance v0, Lorg/apache/ldap/server/operational/OperationalAttributeService$1;

    invoke-direct {v0, p0}, Lorg/apache/ldap/server/operational/OperationalAttributeService$1;-><init>(Lorg/apache/ldap/server/operational/OperationalAttributeService;)V

    iput-object v0, p0, Lorg/apache/ldap/server/operational/OperationalAttributeService;->SEARCH_FILTER:Lorg/apache/ldap/server/db/SearchResultFilter;

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/operational/OperationalAttributeService;Ljavax/naming/directory/Attributes;)Z
    .locals 0

    .line 273
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/operational/OperationalAttributeService;->filter(Ljavax/naming/directory/Attributes;)Z

    move-result p0

    return p0
.end method

.method private filter(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 303
    invoke-direct {p0, p2}, Lorg/apache/ldap/server/operational/OperationalAttributeService;->filter(Ljavax/naming/directory/Attributes;)Z

    return-void

    .line 307
    :cond_0
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 309
    new-instance p1, Ljava/util/HashSet;

    array-length v0, p3

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(I)V

    const/4 v0, 0x0

    .line 311
    :goto_0
    array-length v1, p3

    if-lt v0, v1, :cond_3

    .line 316
    invoke-interface {p2}, Ljavax/naming/directory/Attributes;->getIDs()Ljavax/naming/NamingEnumeration;

    move-result-object v1

    .line 318
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 320
    :cond_2
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 322
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    invoke-interface {p2, p3}, Ljavax/naming/directory/Attributes;->remove(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    goto :goto_1

    .line 313
    :cond_3
    aget-object v1, p3, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private filter(Ljavax/naming/directory/Attributes;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 275
    invoke-interface {p1}, Ljavax/naming/directory/Attributes;->getIDs()Ljavax/naming/NamingEnumeration;

    move-result-object v0

    .line 277
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 279
    :cond_1
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 283
    iget-object v2, p0, Lorg/apache/ldap/server/operational/OperationalAttributeService;->registry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    invoke-interface {v2, v1}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->hasAttributeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    iget-object v2, p0, Lorg/apache/ldap/server/operational/OperationalAttributeService;->registry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    invoke-interface {v2, v1}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 288
    invoke-interface {v2}, Lorg/apache/ldap/common/schema/AttributeType;->getUsage()Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v2

    sget-object v3, Lorg/apache/ldap/common/schema/UsageEnum;->USERAPPLICATIONS:Lorg/apache/ldap/common/schema/UsageEnum;

    if-eq v2, v3, :cond_0

    .line 290
    invoke-interface {p1, v1}, Ljavax/naming/directory/Attributes;->remove(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public init(Lorg/apache/ldap/server/interceptor/InterceptorContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getRootNexus()Lorg/apache/ldap/server/RootNexus;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/server/operational/OperationalAttributeService;->nexus:Lorg/apache/ldap/server/RootNexus;

    .line 87
    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getGlobalRegistries()Lorg/apache/ldap/server/schema/GlobalRegistries;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/operational/OperationalAttributeService;->registry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Add;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 101
    invoke-static {p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->getPrincipal(Lorg/apache/ldap/server/invocation/Invocation;)Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ldap/server/authn/LdapPrincipal;->getName()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Add;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v1

    .line 104
    new-instance v2, Ljavax/naming/directory/BasicAttribute;

    const-string v3, "creatorsName"

    invoke-direct {v2, v3}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, v0}, Ljavax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {v1, v2}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 108
    new-instance v0, Ljavax/naming/directory/BasicAttribute;

    const-string v2, "createTimestamp"

    invoke-direct {v0, v2}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lorg/apache/ldap/common/util/DateUtils;->getGeneralizedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {v1, v0}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 112
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 236
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 240
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/List;->getContextStack()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/ldap/LdapContext;

    .line 241
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/List;->getReturnValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/NamingEnumeration;

    .line 242
    new-instance v1, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;

    new-instance v2, Ljavax/naming/directory/SearchControls;

    invoke-direct {v2}, Ljavax/naming/directory/SearchControls;-><init>()V

    iget-object v3, p0, Lorg/apache/ldap/server/operational/OperationalAttributeService;->SEARCH_FILTER:Lorg/apache/ldap/server/db/SearchResultFilter;

    invoke-direct {v1, v0, v2, p1, v3}, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Ljavax/naming/directory/SearchControls;Ljavax/naming/ldap/LdapContext;Lorg/apache/ldap/server/db/SearchResultFilter;)V

    .line 243
    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/List;->setReturnValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Lookup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 209
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 211
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Lookup;->getReturnValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attributes;

    .line 212
    invoke-interface {p1}, Ljavax/naming/directory/Attributes;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attributes;

    .line 213
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/operational/OperationalAttributeService;->filter(Ljavax/naming/directory/Attributes;)Z

    .line 214
    invoke-virtual {p2, p1}, Lorg/apache/ldap/server/invocation/Lookup;->setReturnValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/LookupWithAttrIds;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 220
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 222
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;->getReturnValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attributes;

    if-nez p1, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-interface {p1}, Ljavax/naming/directory/Attributes;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attributes;

    .line 229
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;->getName()Ljavax/naming/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;->getAttributeIds()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/ldap/server/operational/OperationalAttributeService;->filter(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;[Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2, p1}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;->setReturnValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Modify;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 118
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 121
    new-instance p1, Ljavax/naming/directory/BasicAttributes;

    invoke-direct {p1}, Ljavax/naming/directory/BasicAttributes;-><init>()V

    .line 122
    new-instance v0, Ljavax/naming/directory/BasicAttribute;

    const-string v1, "modifiersName"

    invoke-direct {v0, v1}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-static {p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->getPrincipal(Lorg/apache/ldap/server/invocation/Invocation;)Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ldap/server/authn/LdapPrincipal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {p1, v0}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 126
    new-instance v0, Ljavax/naming/directory/BasicAttribute;

    const-string v1, "modifyTimestamp"

    invoke-direct {v0, v1}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lorg/apache/ldap/common/util/DateUtils;->getGeneralizedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {p1, v0}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 130
    iget-object v0, p0, Lorg/apache/ldap/server/operational/OperationalAttributeService;->nexus:Lorg/apache/ldap/server/RootNexus;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Modify;->getName()Ljavax/naming/Name;

    move-result-object p2

    :try_start_0
    instance-of v1, p0, Ljavax/naming/Context;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1, p1}, Lorg/apache/ldap/server/RootNexus;->modify(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p1, p0, Ljavax/naming/Context;

    if-eqz p1, :cond_1

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_1

    instance-of p1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Ljavax/naming/Context;

    invoke-virtual {p1, p2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    instance-of p2, p0, Ljavax/naming/Context;

    if-eqz p2, :cond_2

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_2

    instance-of p2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Ljavax/naming/Context;

    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ModifyMany;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 136
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 139
    new-instance p1, Ljavax/naming/directory/BasicAttributes;

    invoke-direct {p1}, Ljavax/naming/directory/BasicAttributes;-><init>()V

    .line 140
    new-instance v0, Ljavax/naming/directory/BasicAttribute;

    const-string v1, "modifiersName"

    invoke-direct {v0, v1}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-static {p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->getPrincipal(Lorg/apache/ldap/server/invocation/Invocation;)Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ldap/server/authn/LdapPrincipal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {p1, v0}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 144
    new-instance v0, Ljavax/naming/directory/BasicAttribute;

    const-string v1, "modifyTimestamp"

    invoke-direct {v0, v1}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lorg/apache/ldap/common/util/DateUtils;->getGeneralizedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {p1, v0}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 148
    iget-object v0, p0, Lorg/apache/ldap/server/operational/OperationalAttributeService;->nexus:Lorg/apache/ldap/server/RootNexus;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/ModifyMany;->getName()Ljavax/naming/Name;

    move-result-object p2

    :try_start_0
    instance-of v1, p0, Ljavax/naming/Context;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1, p1}, Lorg/apache/ldap/server/RootNexus;->modify(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p1, p0, Ljavax/naming/Context;

    if-eqz p1, :cond_1

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_1

    instance-of p1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Ljavax/naming/Context;

    invoke-virtual {p1, p2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    instance-of p2, p0, Ljavax/naming/Context;

    if-eqz p2, :cond_2

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_2

    instance-of p2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Ljavax/naming/Context;

    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ModifyRN;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 154
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 157
    new-instance p1, Ljavax/naming/directory/BasicAttributes;

    invoke-direct {p1}, Ljavax/naming/directory/BasicAttributes;-><init>()V

    .line 158
    new-instance v0, Ljavax/naming/directory/BasicAttribute;

    const-string v1, "modifiersName"

    invoke-direct {v0, v1}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-static {p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->getPrincipal(Lorg/apache/ldap/server/invocation/Invocation;)Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ldap/server/authn/LdapPrincipal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {p1, v0}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 162
    new-instance v0, Ljavax/naming/directory/BasicAttribute;

    const-string v1, "modifyTimestamp"

    invoke-direct {v0, v1}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lorg/apache/ldap/common/util/DateUtils;->getGeneralizedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface {p1, v0}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 166
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/ModifyRN;->getName()Ljavax/naming/Name;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/ModifyRN;->getNewRelativeName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljavax/naming/Name;->add(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object p2

    .line 167
    iget-object v0, p0, Lorg/apache/ldap/server/operational/OperationalAttributeService;->nexus:Lorg/apache/ldap/server/RootNexus;

    :try_start_0
    instance-of v1, p0, Ljavax/naming/Context;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1, p1}, Lorg/apache/ldap/server/RootNexus;->modify(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p1, p0, Ljavax/naming/Context;

    if-eqz p1, :cond_1

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_1

    instance-of p1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Ljavax/naming/Context;

    invoke-virtual {p1, p2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    instance-of p2, p0, Ljavax/naming/Context;

    if-eqz p2, :cond_2

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_2

    instance-of p2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Ljavax/naming/Context;

    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Move;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 173
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 176
    new-instance p1, Ljavax/naming/directory/BasicAttributes;

    invoke-direct {p1}, Ljavax/naming/directory/BasicAttributes;-><init>()V

    .line 177
    new-instance v0, Ljavax/naming/directory/BasicAttribute;

    const-string v1, "modifiersName"

    invoke-direct {v0, v1}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-static {p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->getPrincipal(Lorg/apache/ldap/server/invocation/Invocation;)Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ldap/server/authn/LdapPrincipal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {p1, v0}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 181
    new-instance v0, Ljavax/naming/directory/BasicAttribute;

    const-string v1, "modifyTimestamp"

    invoke-direct {v0, v1}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lorg/apache/ldap/common/util/DateUtils;->getGeneralizedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {p1, v0}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 185
    iget-object v0, p0, Lorg/apache/ldap/server/operational/OperationalAttributeService;->nexus:Lorg/apache/ldap/server/RootNexus;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Move;->getNewParentName()Ljavax/naming/Name;

    move-result-object p2

    :try_start_0
    instance-of v1, p0, Ljavax/naming/Context;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1, p1}, Lorg/apache/ldap/server/RootNexus;->modify(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p1, p0, Ljavax/naming/Context;

    if-eqz p1, :cond_1

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_1

    instance-of p1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Ljavax/naming/Context;

    invoke-virtual {p1, p2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    instance-of p2, p0, Ljavax/naming/Context;

    if-eqz p2, :cond_2

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_2

    instance-of p2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Ljavax/naming/Context;

    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/MoveAndModifyRN;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 191
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 194
    new-instance p1, Ljavax/naming/directory/BasicAttributes;

    invoke-direct {p1}, Ljavax/naming/directory/BasicAttributes;-><init>()V

    .line 195
    new-instance v0, Ljavax/naming/directory/BasicAttribute;

    const-string v1, "modifiersName"

    invoke-direct {v0, v1}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-static {p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->getPrincipal(Lorg/apache/ldap/server/invocation/Invocation;)Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ldap/server/authn/LdapPrincipal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {p1, v0}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 199
    new-instance v0, Ljavax/naming/directory/BasicAttribute;

    const-string v1, "modifyTimestamp"

    invoke-direct {v0, v1}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lorg/apache/ldap/common/util/DateUtils;->getGeneralizedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {p1, v0}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 203
    iget-object v0, p0, Lorg/apache/ldap/server/operational/OperationalAttributeService;->nexus:Lorg/apache/ldap/server/RootNexus;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/MoveAndModifyRN;->getNewParentName()Ljavax/naming/Name;

    move-result-object p2

    :try_start_0
    instance-of v1, p0, Ljavax/naming/Context;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljavax/naming/Context;

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(Ljavax/naming/Context;)V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1, p1}, Lorg/apache/ldap/server/RootNexus;->modify(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p1, p0, Ljavax/naming/Context;

    if-eqz p1, :cond_1

    instance-of p1, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p1, :cond_1

    instance-of p1, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Ljavax/naming/Context;

    invoke-virtual {p1, p2}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    instance-of p2, p0, Ljavax/naming/Context;

    if-eqz p2, :cond_2

    instance-of p2, p0, Lorg/apache/ldap/server/ContextPartition;

    if-nez p2, :cond_2

    instance-of p2, v0, Lorg/apache/ldap/server/db/Database;

    if-nez p2, :cond_2

    invoke-static {}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->aspectOf()Lorg/apache/ldap/server/jndi/ProviderNexusAspect;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Ljavax/naming/Context;

    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/jndi/ProviderNexusAspect;->ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(Ljavax/naming/Context;)V

    :cond_2
    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Search;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 249
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 251
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getControls()Ljavax/naming/directory/SearchControls;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Ljavax/naming/directory/SearchControls;->getReturningAttributes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getContextStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/ldap/LdapContext;

    .line 260
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getReturnValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/naming/NamingEnumeration;

    .line 261
    new-instance v2, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;

    iget-object v3, p0, Lorg/apache/ldap/server/operational/OperationalAttributeService;->SEARCH_FILTER:Lorg/apache/ldap/server/db/SearchResultFilter;

    invoke-direct {v2, v1, p1, v0, v3}, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Ljavax/naming/directory/SearchControls;Ljavax/naming/ldap/LdapContext;Lorg/apache/ldap/server/db/SearchResultFilter;)V

    .line 262
    invoke-virtual {p2, v2}, Lorg/apache/ldap/server/invocation/Search;->setReturnValue(Ljava/lang/Object;)V

    return-void
.end method
