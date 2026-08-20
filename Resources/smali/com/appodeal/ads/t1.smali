.class public final Lcom/appodeal/ads/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/t1;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "placements"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "session_drop_store"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/appodeal/ads/q4;->m()Lcom/appodeal/ads/utils/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/utils/x;->b()V

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/appodeal/ads/t1$a;

    const/4 v1, 0x0

    invoke-direct {v5, p1, v1}, Lcom/appodeal/ads/t1$a;-><init>(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    iget-object v1, p0, Lcom/appodeal/ads/t1;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/appodeal/ads/i0;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string v1, "user_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/appodeal/ads/l5;->a(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/appodeal/ads/segments/j;->b()Lcom/appodeal/ads/segments/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/appodeal/ads/segments/j;->b(Lorg/json/JSONObject;)Z

    const-string v1, "active_segment"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/appodeal/ads/t1;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/appodeal/ads/segments/n;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    const-string v1, "segments"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/appodeal/ads/t1;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/appodeal/ads/segments/n;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/appodeal/ads/segments/h;->a:Ljava/util/TreeMap;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/appodeal/ads/segments/h;->a(Lorg/json/JSONArray;)V

    invoke-static {}, Lcom/appodeal/ads/segments/h;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method
