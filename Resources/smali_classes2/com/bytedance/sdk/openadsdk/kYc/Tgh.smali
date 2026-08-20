.class public Lcom/bytedance/sdk/openadsdk/kYc/Tgh;
.super Ljava/lang/Object;
.source "StrategyDependWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/kYc/fl;


# instance fields
.field Qhi:Landroid/os/Handler;

.field private cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/kYc/fl;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->Qhi:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    return-void
.end method

.method private Sf()Landroid/content/Context;
    .locals 6

    const/4 v0, 0x0

    .line 106
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 108
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getApplication"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    check-cast v1, Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    return-object v0
.end method


# virtual methods
.method public CJ()Landroid/os/Handler;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->ROR()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->CJ()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 62
    :cond_1
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "pag_strategy"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->Qhi:Landroid/os/Handler;

    return-object v1
.end method

.method public Qhi()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->Qhi()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->Qhi()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    .line 38
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public ROR()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->ROR()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->ROR()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 89
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public Tgh()Lorg/json/JSONObject;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->Tgh()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->ac()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_1
    :goto_0
    const-string v0, "null"

    return-object v0
.end method

.method public cJ()Landroid/content/Context;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->cJ()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->cJ()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 46
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->Sf()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public fl()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->fl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
