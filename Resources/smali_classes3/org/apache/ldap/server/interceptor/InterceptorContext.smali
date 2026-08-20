.class public Lorg/apache/ldap/server/interceptor/InterceptorContext;
.super Ljava/lang/Object;
.source "InterceptorContext.java"


# instance fields
.field private final config:Ljava/util/Map;

.field private final environment:Ljava/util/Map;

.field private final globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

.field private final rootNexus:Lorg/apache/ldap/server/RootNexus;

.field private final systemPartition:Lorg/apache/ldap/server/SystemPartition;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/GlobalRegistries;Lorg/apache/ldap/server/RootNexus;Ljava/util/Map;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorContext;->environment:Ljava/util/Map;

    .line 53
    iput-object p2, p0, Lorg/apache/ldap/server/interceptor/InterceptorContext;->systemPartition:Lorg/apache/ldap/server/SystemPartition;

    .line 55
    iput-object p3, p0, Lorg/apache/ldap/server/interceptor/InterceptorContext;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    .line 57
    iput-object p4, p0, Lorg/apache/ldap/server/interceptor/InterceptorContext;->rootNexus:Lorg/apache/ldap/server/RootNexus;

    .line 59
    iput-object p5, p0, Lorg/apache/ldap/server/interceptor/InterceptorContext;->config:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getConfig()Ljava/util/Map;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorContext;->config:Ljava/util/Map;

    return-object v0
.end method

.method public getEnvironment()Ljava/util/Map;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorContext;->environment:Ljava/util/Map;

    return-object v0
.end method

.method public getGlobalRegistries()Lorg/apache/ldap/server/schema/GlobalRegistries;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorContext;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    return-object v0
.end method

.method public getRootNexus()Lorg/apache/ldap/server/RootNexus;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorContext;->rootNexus:Lorg/apache/ldap/server/RootNexus;

    return-object v0
.end method

.method public getSystemPartition()Lorg/apache/ldap/server/SystemPartition;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorContext;->systemPartition:Lorg/apache/ldap/server/SystemPartition;

    return-object v0
.end method
