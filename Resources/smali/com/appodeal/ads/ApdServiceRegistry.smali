.class public Lcom/appodeal/ads/ApdServiceRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static instance:Lcom/appodeal/ads/ApdServiceRegistry;


# instance fields
.field private final services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appodeal/ads/ApdService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/ApdServiceRegistry;->services:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/appodeal/ads/ApdServiceRegistry;
    .locals 2

    const-class v0, Lcom/appodeal/ads/ApdServiceRegistry;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appodeal/ads/ApdServiceRegistry;->instance:Lcom/appodeal/ads/ApdServiceRegistry;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appodeal/ads/ApdServiceRegistry;

    invoke-direct {v1}, Lcom/appodeal/ads/ApdServiceRegistry;-><init>()V

    sput-object v1, Lcom/appodeal/ads/ApdServiceRegistry;->instance:Lcom/appodeal/ads/ApdServiceRegistry;

    :cond_0
    sget-object v1, Lcom/appodeal/ads/ApdServiceRegistry;->instance:Lcom/appodeal/ads/ApdServiceRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static register(Lcom/appodeal/ads/ApdService;)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/ApdServiceRegistry;->getInstance()Lcom/appodeal/ads/ApdServiceRegistry;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/appodeal/ads/ApdServiceRegistry;->registerService(Lcom/appodeal/ads/ApdService;)V

    return-void
.end method

.method private registerService(Lcom/appodeal/ads/ApdService;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/ApdServiceRegistry;->services:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/appodeal/ads/ApdService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/appodeal/ads/ApdService;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Service"

    const-string v1, "Register"

    invoke-static {v0, v1, p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/ApdServiceRegistry;->initializeServiceConfiguration(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initializeServiceConfiguration(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appodeal/ads/ApdServiceRegistry;->services:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appodeal/ads/ApdService;

    if-eqz v4, :cond_1

    :try_start_0
    new-instance v5, Lcom/appodeal/ads/g0;

    invoke-direct {v5, v2}, Lcom/appodeal/ads/g0;-><init>(Lorg/json/JSONObject;)V

    sget-object v2, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    .line 1
    sget-object v2, Lcom/appodeal/ads/r0;->d:Lcom/appodeal/ads/utils/Log$LogLevel;

    .line 2
    sget-object v6, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    if-ne v2, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    invoke-virtual {v4, v2}, Lcom/appodeal/ads/ApdService;->setLogging(Z)V

    new-instance v2, Lcom/appodeal/ads/ApdServiceRegistry$a;

    invoke-direct {v2, v3}, Lcom/appodeal/ads/ApdServiceRegistry$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v5, v2}, Lcom/appodeal/ads/ApdService;->dispatchInitialize(Landroid/content/Context;Lcom/appodeal/ads/ApdServiceInitParams;Lcom/appodeal/ads/ApdServiceInitializationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    const-string v2, "not found"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "[%s]: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Service"

    const-string v4, "Initialize Failed"

    invoke-static {v3, v4, v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
