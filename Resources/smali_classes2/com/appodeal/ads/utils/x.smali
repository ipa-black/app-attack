.class public final Lcom/appodeal/ads/utils/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/utils/x$d;,
        Lcom/appodeal/ads/utils/x$c;,
        Lcom/appodeal/ads/utils/x$b;,
        Lcom/appodeal/ads/utils/x$a;
    }
.end annotation


# static fields
.field public static final l:Ljava/util/HashMap;

.field public static volatile m:Lcom/appodeal/ads/utils/x;

.field public static final n:J

.field public static final o:J

.field public static final p:J


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:J

.field public e:Lcom/appodeal/ads/utils/w;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Long;

.field public final h:Landroid/os/Handler;

.field public i:Lcom/appodeal/ads/utils/x$c;

.field public j:Lcom/appodeal/ads/utils/x$b;

.field public final k:Lcom/appodeal/ads/storage/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appodeal/ads/utils/x;->l:Ljava/util/HashMap;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/appodeal/ads/utils/x;->n:J

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/appodeal/ads/utils/x;->o:J

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/appodeal/ads/utils/x;->p:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/appodeal/ads/utils/x;->a:I

    sget-wide v0, Lcom/appodeal/ads/utils/x;->n:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/x;->b:J

    sget-wide v0, Lcom/appodeal/ads/utils/x;->o:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/x;->c:J

    sget-wide v0, Lcom/appodeal/ads/utils/x;->p:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/x;->d:J

    sget-object v0, Lcom/appodeal/ads/storage/o;->b:Lcom/appodeal/ads/storage/o;

    iput-object v0, p0, Lcom/appodeal/ads/utils/x;->k:Lcom/appodeal/ads/storage/o;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppodealSessionHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/appodeal/ads/utils/x;->h:Landroid/os/Handler;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/utils/x;)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->g:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/appodeal/ads/utils/x;->b:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/appodeal/ads/utils/x;->b:J

    cmp-long p0, v2, v0

    if-ltz p0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public static final synthetic a()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/x;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic a(Lcom/appodeal/ads/utils/x;Landroid/content/Context;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/utils/x;->a(Landroid/content/Context;J)V

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/utils/x;Lorg/json/JSONArray;Lcom/appodeal/ads/utils/x$d$a;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int/lit8 v1, v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "session_uuid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lcom/appodeal/ads/utils/x;)Lcom/appodeal/ads/storage/o;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/utils/x;->k:Lcom/appodeal/ads/storage/o;

    return-object p0
.end method

.method public static final synthetic c(Lcom/appodeal/ads/utils/x;)J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/utils/x;->b:J

    return-wide v0
.end method

.method public static final d(Lcom/appodeal/ads/utils/x;)Lorg/json/JSONArray;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object p0, p0, Lcom/appodeal/ads/utils/x;->k:Lcom/appodeal/ads/storage/o;

    invoke-virtual {p0}, Lcom/appodeal/ads/storage/o;->f()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "sessions.toString()"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static final e(Lcom/appodeal/ads/utils/x;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/utils/x;->m()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/utils/x;->g:Ljava/lang/Long;

    iget-wide v0, p0, Lcom/appodeal/ads/utils/x;->b:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/appodeal/ads/utils/x;->a(Landroid/content/Context;J)V

    .line 5
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/appodeal/ads/utils/x;->k:Lcom/appodeal/ads/storage/o;

    invoke-virtual {v1}, Lcom/appodeal/ads/storage/o;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sessions.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    sget-object v0, Lcom/appodeal/ads/utils/x;->l:Ljava/util/HashMap;

    monitor-enter v0

    .line 7
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    add-int/lit8 v3, v2, 0x1

    :try_start_2
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "session_uuid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_3
    invoke-static {v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_2
    move v2, v3

    goto :goto_1

    .line 8
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v0

    return-object p1

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/content/Context;J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->i:Lcom/appodeal/ads/utils/x$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/utils/x;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/utils/x;->i:Lcom/appodeal/ads/utils/x$c;

    :cond_0
    iget-wide v0, p0, Lcom/appodeal/ads/utils/x;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    cmp-long v0, v2, p2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/appodeal/ads/utils/x$c;

    invoke-direct {v1, p0, p1, v0}, Lcom/appodeal/ads/utils/x$c;-><init>(Lcom/appodeal/ads/utils/x;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/appodeal/ads/utils/x;->i:Lcom/appodeal/ads/utils/x$c;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/appodeal/ads/utils/x;->h:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/appodeal/ads/utils/x;->h:Landroid/os/Handler;

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session_store_size"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "session_store_size"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/utils/x;->a:I

    :cond_0
    const-string v0, "session_report_interval"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "session_report_interval"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appodeal/ads/utils/x;->b:J

    :cond_1
    const-string v0, "session_update_interval"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "session_update_interval"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appodeal/ads/utils/x;->c:J

    :cond_2
    const-string v0, "session_timeout_duration"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "session_timeout_duration"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appodeal/ads/utils/x;->d:J

    :cond_3
    iget-wide v0, p0, Lcom/appodeal/ads/utils/x;->b:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/appodeal/ads/utils/x;->a(Landroid/content/Context;J)V

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/appodeal/ads/utils/x;->j:Lcom/appodeal/ads/utils/x$b;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/appodeal/ads/utils/x;->h:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/appodeal/ads/utils/x;->j:Lcom/appodeal/ads/utils/x$b;

    :cond_4
    iget-wide p1, p0, Lcom/appodeal/ads/utils/x;->c:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_5

    new-instance p1, Lcom/appodeal/ads/utils/x$b;

    invoke-direct {p1, p0}, Lcom/appodeal/ads/utils/x$b;-><init>(Lcom/appodeal/ads/utils/x;)V

    iput-object p1, p0, Lcom/appodeal/ads/utils/x;->j:Lcom/appodeal/ads/utils/x$b;

    iget-object p2, p0, Lcom/appodeal/ads/utils/x;->h:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/appodeal/ads/utils/x;->c:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->h:Landroid/os/Handler;

    iget v1, p0, Lcom/appodeal/ads/utils/x;->a:I

    new-instance v2, Lcom/appodeal/ads/utils/x$e;

    invoke-direct {v2, p0, v1}, Lcom/appodeal/ads/utils/x$e;-><init>(Lcom/appodeal/ads/utils/x;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()J
    .locals 5

    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    .line 1
    :try_start_0
    iget-wide v3, v0, Lcom/appodeal/ads/utils/w;->b:J

    cmp-long v3, v3, v1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v0}, Lcom/appodeal/ads/utils/w;->e()V

    sget-object v3, Lcom/appodeal/ads/utils/w;->l:Lcom/appodeal/ads/storage/o;

    .line 3
    iget-object v3, v3, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 4
    sget-object v4, Lcom/appodeal/ads/storage/b$a;->b:Lcom/appodeal/ads/storage/b$a;

    .line 5
    invoke-virtual {v3, v4}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/storage/b$a;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 6
    const-string v4, "app_uptime"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 7
    iget-wide v3, v0, Lcom/appodeal/ads/utils/w;->e:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    .line 8
    iget-wide v3, v0, Lcom/appodeal/ads/utils/w;->b:J

    div-long/2addr v1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit v0

    :goto_1
    return-wide v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d()J
    .locals 5

    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v3, v0, Lcom/appodeal/ads/utils/w;->b:J

    cmp-long v3, v3, v1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v0}, Lcom/appodeal/ads/utils/w;->e()V

    sget-object v3, Lcom/appodeal/ads/utils/w;->l:Lcom/appodeal/ads/storage/o;

    .line 4
    iget-object v3, v3, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 5
    sget-object v4, Lcom/appodeal/ads/storage/b$a;->b:Lcom/appodeal/ads/storage/b$a;

    .line 6
    invoke-virtual {v3, v4}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/storage/b$a;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 7
    const-string v4, "app_uptime_m"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 8
    iget-wide v3, v0, Lcom/appodeal/ads/utils/w;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v1, v3

    :try_start_2
    monitor-exit v0

    .line 9
    iget-wide v3, v0, Lcom/appodeal/ads/utils/w;->b:J

    div-long/2addr v1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit v0

    :goto_1
    return-wide v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final e()J
    .locals 5

    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {v0}, Lcom/appodeal/ads/utils/w;->e()V

    sget-object v3, Lcom/appodeal/ads/utils/w;->l:Lcom/appodeal/ads/storage/o;

    .line 2
    iget-object v3, v3, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 3
    sget-object v4, Lcom/appodeal/ads/storage/b$a;->b:Lcom/appodeal/ads/storage/b$a;

    .line 4
    invoke-virtual {v3, v4}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/storage/b$a;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 5
    const-string v4, "app_uptime"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 6
    iget-wide v3, v0, Lcom/appodeal/ads/utils/w;->e:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final f()J
    .locals 5

    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {v0}, Lcom/appodeal/ads/utils/w;->e()V

    sget-object v3, Lcom/appodeal/ads/utils/w;->l:Lcom/appodeal/ads/storage/o;

    .line 2
    iget-object v3, v3, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 3
    sget-object v4, Lcom/appodeal/ads/storage/b$a;->b:Lcom/appodeal/ads/storage/b$a;

    .line 4
    invoke-virtual {v3, v4}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/storage/b$a;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 5
    const-string v4, "app_uptime_m"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 6
    iget-wide v3, v0, Lcom/appodeal/ads/utils/w;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v1, v3

    monitor-exit v0

    :goto_0
    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final g()J
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    monitor-enter v0

    .line 1
    :try_start_0
    iget-wide v1, v0, Lcom/appodeal/ads/utils/w;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    move-wide v0, v1

    :goto_0
    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final h()J
    .locals 5

    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {v0}, Lcom/appodeal/ads/utils/w;->e()V

    iget-wide v1, v0, Lcom/appodeal/ads/utils/w;->e:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    move-wide v0, v1

    :goto_0
    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final i()J
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {v0}, Lcom/appodeal/ads/utils/w;->e()V

    iget-wide v1, v0, Lcom/appodeal/ads/utils/w;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    move-wide v0, v1

    :goto_0
    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    monitor-enter v0

    .line 1
    :try_start_0
    iget-object v1, v0, Lcom/appodeal/ads/utils/w;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    move-object v0, v1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    iput-wide v1, v0, Lcom/appodeal/ads/utils/w;->i:J

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4
    iput-wide v1, v0, Lcom/appodeal/ads/utils/w;->j:J

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/w;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 5
    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->h:Landroid/os/Handler;

    new-instance v1, Lcom/appodeal/ads/utils/x$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/utils/x$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/utils/x;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->i:Lcom/appodeal/ads/utils/x$c;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/appodeal/ads/utils/x;->h:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/appodeal/ads/utils/x;->i:Lcom/appodeal/ads/utils/x$c;

    :goto_1
    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->j:Lcom/appodeal/ads/utils/x$b;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/appodeal/ads/utils/x;->h:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/appodeal/ads/utils/x;->j:Lcom/appodeal/ads/utils/x$b;

    :goto_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final l()V
    .locals 8

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    monitor-enter v1

    .line 4
    :try_start_0
    iget-wide v4, v1, Lcom/appodeal/ads/utils/w;->i:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 6
    iput-wide v4, v1, Lcom/appodeal/ads/utils/w;->g:J

    :cond_1
    iget-wide v4, v1, Lcom/appodeal/ads/utils/w;->j:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 8
    iput-wide v4, v1, Lcom/appodeal/ads/utils/w;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_2
    monitor-exit v1

    .line 9
    monitor-enter v1

    .line 10
    :try_start_1
    iget-wide v4, v1, Lcom/appodeal/ads/utils/w;->j:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_3

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 12
    iget-wide v6, v1, Lcom/appodeal/ads/utils/w;->j:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sub-long/2addr v4, v6

    goto :goto_0

    :cond_3
    move-wide v4, v2

    :goto_0
    monitor-exit v1

    .line 13
    iget-wide v6, p0, Lcom/appodeal/ads/utils/x;->d:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_7

    .line 14
    iget-object v1, p0, Lcom/appodeal/ads/utils/x;->k:Lcom/appodeal/ads/storage/o;

    .line 15
    iget-object v1, v1, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 16
    sget-object v4, Lcom/appodeal/ads/storage/b$a;->b:Lcom/appodeal/ads/storage/b$a;

    .line 17
    invoke-virtual {v1, v4}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/storage/b$a;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 18
    const-string v4, "sessions_size"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 19
    iget v1, p0, Lcom/appodeal/ads/utils/x;->a:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    invoke-virtual {p0, v0, v2, v3}, Lcom/appodeal/ads/utils/x;->a(Landroid/content/Context;J)V

    goto :goto_2

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/appodeal/ads/utils/x;->g:Ljava/lang/Long;

    if-nez v1, :cond_5

    iget-wide v4, p0, Lcom/appodeal/ads/utils/x;->b:J

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    iget-wide v4, p0, Lcom/appodeal/ads/utils/x;->b:J

    cmp-long v1, v6, v4

    if-ltz v1, :cond_6

    move-wide v4, v2

    goto :goto_1

    :cond_6
    sub-long/2addr v4, v6

    .line 21
    :goto_1
    invoke-virtual {p0, v0, v4, v5}, Lcom/appodeal/ads/utils/x;->a(Landroid/content/Context;J)V

    :goto_2
    invoke-virtual {p0}, Lcom/appodeal/ads/utils/x;->n()V

    goto :goto_4

    .line 22
    :cond_7
    iget-object v1, p0, Lcom/appodeal/ads/utils/x;->g:Ljava/lang/Long;

    if-nez v1, :cond_8

    iget-wide v4, p0, Lcom/appodeal/ads/utils/x;->b:J

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    iget-wide v4, p0, Lcom/appodeal/ads/utils/x;->b:J

    cmp-long v1, v6, v4

    if-ltz v1, :cond_9

    move-wide v4, v2

    goto :goto_3

    :cond_9
    sub-long/2addr v4, v6

    .line 23
    :goto_3
    invoke-virtual {p0, v0, v4, v5}, Lcom/appodeal/ads/utils/x;->a(Landroid/content/Context;J)V

    :goto_4
    monitor-enter p0

    .line 24
    :try_start_2
    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->j:Lcom/appodeal/ads/utils/x$b;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/appodeal/ads/utils/x;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/utils/x;->j:Lcom/appodeal/ads/utils/x$b;

    :cond_a
    iget-wide v0, p0, Lcom/appodeal/ads/utils/x;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    new-instance v0, Lcom/appodeal/ads/utils/x$b;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/utils/x$b;-><init>(Lcom/appodeal/ads/utils/x;)V

    iput-object v0, p0, Lcom/appodeal/ads/utils/x;->j:Lcom/appodeal/ads/utils/x$b;

    iget-object v1, p0, Lcom/appodeal/ads/utils/x;->h:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/appodeal/ads/utils/x;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    .line 25
    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized m()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/appodeal/ads/utils/w;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()V
    .locals 15

    iget-object v0, p0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1
    sget-object v0, Lcom/appodeal/ads/utils/w;->l:Lcom/appodeal/ads/storage/o;

    .line 2
    iget-object v2, v0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 3
    invoke-virtual {v2}, Lcom/appodeal/ads/storage/b;->m()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/appodeal/ads/utils/w;

    .line 5
    iget-object v3, v0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 6
    invoke-virtual {v3}, Lcom/appodeal/ads/storage/b;->h()J

    move-result-wide v5

    .line 7
    iget-object v3, v0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 8
    invoke-virtual {v3}, Lcom/appodeal/ads/storage/b;->j()J

    move-result-wide v7

    .line 9
    iget-object v3, v0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 10
    invoke-virtual {v3}, Lcom/appodeal/ads/storage/b;->i()J

    move-result-wide v9

    .line 11
    iget-object v3, v0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 12
    invoke-virtual {v3}, Lcom/appodeal/ads/storage/b;->l()J

    move-result-wide v11

    .line 13
    iget-object v0, v0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 14
    invoke-virtual {v0}, Lcom/appodeal/ads/storage/b;->k()J

    move-result-wide v13

    move-object v3, v2

    .line 15
    invoke-direct/range {v3 .. v14}, Lcom/appodeal/ads/utils/w;-><init>(Ljava/lang/String;JJJJJ)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Lcom/appodeal/ads/utils/w;->c()V

    :goto_0
    if-nez v0, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    monitor-enter v0

    .line 17
    :try_start_0
    iget-wide v2, v0, Lcom/appodeal/ads/utils/w;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/appodeal/ads/utils/x;->k:Lcom/appodeal/ads/storage/o;

    .line 19
    iget-object v2, v2, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 20
    invoke-virtual {v2}, Lcom/appodeal/ads/storage/b;->h()J

    move-result-wide v2

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_2
    iget-object v4, p0, Lcom/appodeal/ads/utils/x;->f:Ljava/lang/Long;

    if-nez v4, :cond_8

    .line 22
    iget-object v4, p0, Lcom/appodeal/ads/utils/x;->k:Lcom/appodeal/ads/storage/o;

    invoke-virtual {v4}, Lcom/appodeal/ads/storage/o;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/appodeal/ads/utils/x;->k:Lcom/appodeal/ads/storage/o;

    invoke-virtual {v5}, Lcom/appodeal/ads/storage/o;->d()Ljava/lang/Long;

    move-result-object v5

    if-eqz v4, :cond_6

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_7

    move-object v1, v5

    goto :goto_4

    :cond_6
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v4, p0, Lcom/appodeal/ads/utils/x;->k:Lcom/appodeal/ads/storage/o;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/appodeal/ads/storage/o;->a(J)V

    .line 23
    :cond_7
    :goto_4
    iput-object v1, p0, Lcom/appodeal/ads/utils/x;->f:Ljava/lang/Long;

    :cond_8
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/appodeal/ads/utils/x;->h:Landroid/os/Handler;

    iget v4, p0, Lcom/appodeal/ads/utils/x;->a:I

    new-instance v5, Lcom/appodeal/ads/utils/x$f;

    invoke-direct {v5, p0, v0, v4}, Lcom/appodeal/ads/utils/x$f;-><init>(Lcom/appodeal/ads/utils/x;Lcom/appodeal/ads/utils/w;I)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    new-instance v0, Lcom/appodeal/ads/utils/w;

    invoke-direct {v0, v2, v3}, Lcom/appodeal/ads/utils/w;-><init>(J)V

    iput-object v0, p0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/w;->b()V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
