.class public final Lcom/appodeal/ads/k1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/k1;->a(Landroid/app/Activity;Lcom/appodeal/ads/q;Lcom/appodeal/ads/u;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/appodeal/ads/segments/g;

.field public final synthetic c:Lcom/appodeal/ads/r;

.field public final synthetic d:Lcom/appodeal/ads/j1;

.field public final synthetic e:Lcom/appodeal/ads/k1;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/k1;Landroid/app/Activity;Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/r;Lcom/appodeal/ads/j1;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/k1$a;->e:Lcom/appodeal/ads/k1;

    iput-object p2, p0, Lcom/appodeal/ads/k1$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/appodeal/ads/k1$a;->b:Lcom/appodeal/ads/segments/g;

    iput-object p4, p0, Lcom/appodeal/ads/k1$a;->c:Lcom/appodeal/ads/r;

    iput-object p5, p0, Lcom/appodeal/ads/k1$a;->d:Lcom/appodeal/ads/j1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/appodeal/ads/k1$a;->e:Lcom/appodeal/ads/k1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/appodeal/ads/k1$a;->a:Landroid/app/Activity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/appodeal/ads/r0;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    sput v2, Lcom/appodeal/ads/r0;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/k1$a;->b:Lcom/appodeal/ads/segments/g;

    iget-object v1, p0, Lcom/appodeal/ads/k1$a;->c:Lcom/appodeal/ads/r;

    invoke-virtual {v1}, Lcom/appodeal/ads/r;->n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {v1}, Lcom/appodeal/ads/segments/g;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iget-object v3, v0, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v4, "impression_interval"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    const-string v5, "fullscreen"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit16 v4, v3, 0x3e8

    :cond_1
    if-lez v4, :cond_2

    .line 4
    iput-wide v1, v0, Lcom/appodeal/ads/segments/g;->f:J

    :cond_2
    sput-wide v1, Lcom/appodeal/ads/segments/g;->i:J

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 6
    sget-object v3, Lcom/appodeal/ads/utils/x;->l:Ljava/util/HashMap;

    invoke-static {}, Lcom/appodeal/ads/utils/x$a;->a()Lcom/appodeal/ads/utils/x;

    move-result-object v3

    .line 7
    iget-object v3, v3, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    monitor-enter v3

    .line 8
    :try_start_0
    iget-wide v4, v3, Lcom/appodeal/ads/utils/w;->k:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/appodeal/ads/utils/w;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 9
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/appodeal/ads/segments/g;->e()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    iget-object v1, v0, Lcom/appodeal/ads/segments/g;->g:Lcom/appodeal/ads/storage/o;

    .line 10
    iget v0, v0, Lcom/appodeal/ads/segments/g;->a:I

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/appodeal/ads/storage/o;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    monitor-exit v3

    throw v0

    .line 13
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/appodeal/ads/k1$a;->c:Lcom/appodeal/ads/r;

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/k1$a;->d:Lcom/appodeal/ads/j1;

    .line 14
    iget-object v1, v1, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    .line 15
    invoke-static {v0, v1}, Lcom/appodeal/ads/utils/y;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Lcom/appodeal/ads/AdNetwork;)V

    iget-object v0, p0, Lcom/appodeal/ads/k1$a;->d:Lcom/appodeal/ads/j1;

    iget-object v1, p0, Lcom/appodeal/ads/k1$a;->a:Landroid/app/Activity;

    .line 16
    iget-object v2, v0, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v2, :cond_6

    .line 17
    iget-object v3, v0, Lcom/appodeal/ads/l;->g:Lcom/appodeal/ads/unified/UnifiedAdParams;

    if-eqz v3, :cond_5

    invoke-virtual {v2, v1, v3}, Lcom/appodeal/ads/unified/UnifiedAd;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lcom/appodeal/ads/l;->h:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->onAdShowFailed()V

    .line 18
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/appodeal/ads/k1$a;->d:Lcom/appodeal/ads/j1;

    iget-object v1, p0, Lcom/appodeal/ads/k1$a;->a:Landroid/app/Activity;

    .line 19
    iget-object v2, v0, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    .line 20
    check-cast v2, Lcom/appodeal/ads/unified/UnifiedFullscreenAd;

    .line 21
    iget-object v0, v0, Lcom/appodeal/ads/l;->h:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    .line 22
    check-cast v0, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v2, v1, v0}, Lcom/appodeal/ads/unified/UnifiedFullscreenAd;->show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->onAdShowFailed()V

    :cond_8
    :goto_3
    return-void
.end method
