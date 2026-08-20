.class public final Lcom/appodeal/ads/utils/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Lcom/appodeal/ads/storage/o;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J

.field public final d:J

.field public volatile e:J

.field public volatile f:J

.field public volatile g:J

.field public volatile h:J

.field public volatile i:J

.field public volatile j:J

.field public k:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/storage/o;->b:Lcom/appodeal/ads/storage/o;

    sput-object v0, Lcom/appodeal/ads/utils/w;->l:Lcom/appodeal/ads/storage/o;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->e:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->f:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->g:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->h:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->i:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->j:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->k:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/appodeal/ads/utils/w;->b:J

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/utils/w;->a:Ljava/lang/String;

    invoke-static {}, Lcom/appodeal/ads/utils/b0;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/appodeal/ads/utils/w;->c:J

    iput-wide p1, p0, Lcom/appodeal/ads/utils/w;->g:J

    invoke-static {}, Lcom/appodeal/ads/utils/b0;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/appodeal/ads/utils/w;->d:J

    iput-wide p1, p0, Lcom/appodeal/ads/utils/w;->h:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->e:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->f:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->g:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->h:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->i:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->j:J

    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->k:J

    iput-object p1, p0, Lcom/appodeal/ads/utils/w;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/appodeal/ads/utils/w;->b:J

    iput-wide p4, p0, Lcom/appodeal/ads/utils/w;->c:J

    iput-wide p6, p0, Lcom/appodeal/ads/utils/w;->d:J

    iput-wide p8, p0, Lcom/appodeal/ads/utils/w;->e:J

    iput-wide p10, p0, Lcom/appodeal/ads/utils/w;->f:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/utils/w;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/appodeal/ads/utils/w;->l:Lcom/appodeal/ads/storage/o;

    .line 1
    iget-object v0, v2, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/storage/b;->l()J

    move-result-wide v3

    .line 3
    iget-object v0, v2, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 4
    invoke-virtual {v0}, Lcom/appodeal/ads/storage/b;->k()J

    move-result-wide v5

    .line 5
    iget-object v0, v2, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 6
    sget-object v7, Lcom/appodeal/ads/storage/b$a;->b:Lcom/appodeal/ads/storage/b$a;

    .line 7
    invoke-virtual {v0, v7}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/storage/b$a;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8
    const-string v8, "app_uptime"

    const-wide/16 v9, 0x0

    invoke-interface {v0, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 9
    iget-object v0, v2, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 10
    invoke-virtual {v0, v7}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/storage/b$a;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 11
    const-string v7, "app_uptime_m"

    invoke-interface {v0, v7, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 12
    iget-object v0, v1, Lcom/appodeal/ads/utils/w;->a:Ljava/lang/String;

    iget-wide v9, v1, Lcom/appodeal/ads/utils/w;->b:J

    iget-wide v13, v1, Lcom/appodeal/ads/utils/w;->c:J

    move-wide v15, v13

    iget-wide v13, v1, Lcom/appodeal/ads/utils/w;->d:J

    add-long/2addr v11, v3

    add-long v17, v7, v5

    move-object v3, v0

    move-wide v4, v9

    move-wide v6, v15

    move-wide v8, v13

    move-wide v10, v11

    move-wide/from16 v12, v17

    invoke-virtual/range {v2 .. v13}, Lcom/appodeal/ads/storage/o;->a(Ljava/lang/String;JJJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/appodeal/ads/utils/w;->e()V

    sget-object v0, Lcom/appodeal/ads/utils/w;->l:Lcom/appodeal/ads/storage/o;

    iget-wide v1, p0, Lcom/appodeal/ads/utils/w;->e:J

    iget-wide v3, p0, Lcom/appodeal/ads/utils/w;->f:J

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 2
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/storage/b;->a(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Lorg/json/JSONObject;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/appodeal/ads/utils/w;->a:Ljava/lang/String;

    const-string v2, "session_uuid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-wide v1, p0, Lcom/appodeal/ads/utils/w;->b:J

    const-string v3, "session_id"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    iget-wide v1, p0, Lcom/appodeal/ads/utils/w;->e:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v5, "session_uptime"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    iget-wide v1, p0, Lcom/appodeal/ads/utils/w;->f:J

    const-string v5, "session_uptime_m"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    iget-wide v1, p0, Lcom/appodeal/ads/utils/w;->c:J

    div-long/2addr v1, v3

    const-string v3, "session_start_ts"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    iget-wide v1, p0, Lcom/appodeal/ads/utils/w;->d:J

    const-string v3, "session_start_ts_m"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/appodeal/ads/utils/w;->e:J

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2
    iget-wide v4, p0, Lcom/appodeal/ads/utils/w;->g:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/appodeal/ads/utils/w;->e:J

    iget-wide v0, p0, Lcom/appodeal/ads/utils/w;->f:J

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4
    iget-wide v4, p0, Lcom/appodeal/ads/utils/w;->h:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/appodeal/ads/utils/w;->f:J

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->g:J

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/appodeal/ads/utils/w;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
