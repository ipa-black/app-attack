.class public final Lcom/appodeal/ads/s2;
.super Lcom/appodeal/ads/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/s2$b;,
        Lcom/appodeal/ads/s2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/l<",
        "Lcom/appodeal/ads/t2;",
        "Lcom/appodeal/ads/unified/UnifiedNative;",
        "Lcom/appodeal/ads/unified/UnifiedNativeParams;",
        "Lcom/appodeal/ads/unified/UnifiedNativeCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public s:Ljava/util/ArrayList;

.field public t:I

.field public u:Z


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/t2;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)V
    .locals 1

    const/16 v0, 0x1388

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/appodeal/ads/l;-><init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/appodeal/ads/s2;->t:I

    iput-boolean p1, p0, Lcom/appodeal/ads/s2;->u:Z

    return-void
.end method

.method public static a(Lcom/appodeal/ads/l2;)Z
    .locals 3

    sget-object v0, Lcom/appodeal/ads/Native;->c:Lcom/appodeal/ads/Native$MediaAssetType;

    sget-object v1, Lcom/appodeal/ads/Native$MediaAssetType;->ICON:Lcom/appodeal/ads/Native$MediaAssetType;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/appodeal/ads/Native;->b:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v1, Lcom/appodeal/ads/Native$NativeAdType;->Video:Lcom/appodeal/ads/Native$NativeAdType;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    .line 4
    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/appodeal/ads/l2;->q:Landroid/net/Uri;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/AdNetwork;)Lcom/appodeal/ads/unified/UnifiedAd;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/appodeal/ads/AdNetwork;->createNativeAd()Lcom/appodeal/ads/unified/UnifiedNative;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Lcom/appodeal/ads/unified/UnifiedAdParams;
    .locals 1

    .line 2
    new-instance v0, Lcom/appodeal/ads/s2$b;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/s2$b;-><init>(I)V

    return-object v0
.end method

.method public final a(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/UnifiedAd;)V
    .locals 2

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedNativeParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    check-cast p5, Lcom/appodeal/ads/unified/UnifiedNative;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/appodeal/ads/unified/UnifiedNativeParams;->getAdCountToLoad()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/appodeal/ads/s2;->s:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/UnifiedAd;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V

    return-void
.end method

.method public final c()Lcom/appodeal/ads/unified/UnifiedAdCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/appodeal/ads/s2$a;

    .line 2
    invoke-direct {v0, p0}, Lcom/appodeal/ads/s2$a;-><init>(Lcom/appodeal/ads/s2;)V

    return-object v0
.end method

.method public final m()V
    .locals 6

    iget v0, p0, Lcom/appodeal/ads/s2;->t:I

    if-nez v0, :cond_8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/s2;->s:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/Native;->b()Lcom/appodeal/ads/Native$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appodeal/ads/l;->d()Lcom/appodeal/ads/r;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/t2;

    invoke-virtual {v0, v1, p0}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/t2;Lcom/appodeal/ads/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto/16 :goto_2

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/appodeal/ads/s2;->u:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/s2;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/NativeAd;

    move-object v3, v2

    check-cast v3, Lcom/appodeal/ads/l2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 2
    :try_start_2
    iget-object v4, v3, Lcom/appodeal/ads/l2;->d:Ljava/lang/String;

    .line 3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4
    iget-object v4, v3, Lcom/appodeal/ads/l2;->e:Ljava/lang/String;

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6
    sget-object v4, Lcom/appodeal/ads/Native;->c:Lcom/appodeal/ads/Native$MediaAssetType;

    sget-object v5, Lcom/appodeal/ads/Native$MediaAssetType;->IMAGE:Lcom/appodeal/ads/Native$MediaAssetType;

    if-eq v4, v5, :cond_1

    .line 7
    iget-object v4, v3, Lcom/appodeal/ads/l2;->j:Ljava/lang/String;

    .line 8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    iget-object v4, v3, Lcom/appodeal/ads/l2;->k:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 10
    :cond_1
    sget-object v4, Lcom/appodeal/ads/Native;->c:Lcom/appodeal/ads/Native$MediaAssetType;

    sget-object v5, Lcom/appodeal/ads/Native$MediaAssetType;->ICON:Lcom/appodeal/ads/Native$MediaAssetType;

    if-eq v4, v5, :cond_2

    .line 11
    iget-object v4, v3, Lcom/appodeal/ads/l2;->l:Ljava/lang/String;

    .line 12
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    iget-object v4, v3, Lcom/appodeal/ads/l2;->m:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 14
    :cond_2
    invoke-static {v3}, Lcom/appodeal/ads/s2;->a(Lcom/appodeal/ads/l2;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    invoke-static {v3}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :cond_3
    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-interface {v2}, Lcom/appodeal/ads/NativeAd;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_5
    invoke-static {v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/appodeal/ads/s2;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/appodeal/ads/Native;->b()Lcom/appodeal/ads/Native$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appodeal/ads/l;->d()Lcom/appodeal/ads/r;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/t2;

    invoke-virtual {v0, v1, p0}, Lcom/appodeal/ads/b0;->n(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    goto :goto_1

    :cond_5
    if-lez v1, :cond_6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/appodeal/ads/l;->a(Ljava/lang/String;D)V

    invoke-static {}, Lcom/appodeal/ads/Native;->b()Lcom/appodeal/ads/Native$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appodeal/ads/l;->d()Lcom/appodeal/ads/r;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/t2;

    sget-object v2, Lcom/appodeal/ads/networking/LoadingError;->InvalidAssets:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v0, v1, p0, v2}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/appodeal/ads/Native;->b()Lcom/appodeal/ads/Native$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appodeal/ads/l;->d()Lcom/appodeal/ads/r;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/t2;

    invoke-virtual {v0, v1, p0}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/t2;Lcom/appodeal/ads/l;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    :goto_2
    return-void
.end method

.method public final n()V
    .locals 12

    iget-object v0, p0, Lcom/appodeal/ads/s2;->s:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/Native;->b()Lcom/appodeal/ads/Native$b;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v1, Lcom/appodeal/ads/t2;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p0, v2}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/NativeAd;

    check-cast v1, Lcom/appodeal/ads/l2;

    .line 5
    iget-object v3, v1, Lcom/appodeal/ads/l2;->j:Ljava/lang/String;

    .line 6
    iget-object v4, v1, Lcom/appodeal/ads/l2;->l:Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Lcom/appodeal/ads/l2;->containsVideo()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/appodeal/ads/Native;->d:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 8
    iput-object v5, v1, Lcom/appodeal/ads/l2;->l:Ljava/lang/String;

    move-object v4, v5

    .line 9
    :cond_2
    iget-object v5, v1, Lcom/appodeal/ads/l2;->h:Ljava/lang/String;

    .line 10
    iget-object v6, v1, Lcom/appodeal/ads/l2;->i:Ljava/lang/String;

    .line 11
    sget-object v7, Lcom/appodeal/ads/Native;->c:Lcom/appodeal/ads/Native$MediaAssetType;

    sget-object v8, Lcom/appodeal/ads/Native$MediaAssetType;->IMAGE:Lcom/appodeal/ads/Native$MediaAssetType;

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/appodeal/ads/s2;->t:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/appodeal/ads/s2;->t:I

    :cond_3
    sget-object v7, Lcom/appodeal/ads/Native;->c:Lcom/appodeal/ads/Native$MediaAssetType;

    sget-object v9, Lcom/appodeal/ads/Native$MediaAssetType;->ICON:Lcom/appodeal/ads/Native$MediaAssetType;

    if-eq v7, v9, :cond_4

    iget v7, p0, Lcom/appodeal/ads/s2;->t:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/appodeal/ads/s2;->t:I

    :cond_4
    sget-object v7, Lcom/appodeal/ads/Native;->c:Lcom/appodeal/ads/Native$MediaAssetType;

    if-eq v7, v8, :cond_6

    if-eqz v3, :cond_5

    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 13
    iget-object v7, v7, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 14
    invoke-virtual {v7}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 15
    new-instance v8, Lcom/appodeal/ads/o2;

    invoke-direct {v8, p0, v1}, Lcom/appodeal/ads/o2;-><init>(Lcom/appodeal/ads/s2;Lcom/appodeal/ads/l2;)V

    .line 16
    new-instance v10, Lcom/appodeal/ads/utils/l;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v3, v11, v8}, Lcom/appodeal/ads/utils/l;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/appodeal/ads/utils/l$b;)V

    .line 17
    sget-object v3, Lcom/appodeal/ads/utils/s;->e:Lcom/appodeal/ads/utils/s;

    .line 18
    iget-object v3, v3, Lcom/appodeal/ads/utils/s;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 19
    invoke-virtual {v3, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 20
    :cond_5
    iget v3, p0, Lcom/appodeal/ads/s2;->t:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/appodeal/ads/s2;->t:I

    .line 21
    :cond_6
    :goto_1
    sget-object v3, Lcom/appodeal/ads/Native;->c:Lcom/appodeal/ads/Native$MediaAssetType;

    if-eq v3, v9, :cond_1

    if-eqz v4, :cond_7

    .line 22
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 23
    iget-object v3, v3, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 24
    invoke-virtual {v3}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 25
    new-instance v7, Lcom/appodeal/ads/p2;

    invoke-direct {v7, p0, v1}, Lcom/appodeal/ads/p2;-><init>(Lcom/appodeal/ads/s2;Lcom/appodeal/ads/l2;)V

    .line 26
    new-instance v8, Lcom/appodeal/ads/utils/l;

    invoke-direct {v8, v3, v4, v2, v7}, Lcom/appodeal/ads/utils/l;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/appodeal/ads/utils/l$b;)V

    .line 27
    sget-object v3, Lcom/appodeal/ads/utils/s;->e:Lcom/appodeal/ads/utils/s;

    .line 28
    iget-object v3, v3, Lcom/appodeal/ads/utils/s;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 29
    invoke-virtual {v3, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 30
    :cond_7
    iget v3, p0, Lcom/appodeal/ads/s2;->t:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/appodeal/ads/s2;->t:I

    .line 31
    :goto_2
    sget-object v3, Lcom/appodeal/ads/Native;->b:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v4, Lcom/appodeal/ads/Native$NativeAdType;->Video:Lcom/appodeal/ads/Native$NativeAdType;

    if-ne v3, v4, :cond_1

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    iget v3, p0, Lcom/appodeal/ads/s2;->t:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/appodeal/ads/s2;->t:I

    .line 32
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v2, Lcom/appodeal/ads/utils/m;

    sget-object v3, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 33
    iget-object v3, v3, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 34
    invoke-virtual {v3}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 35
    new-instance v4, Lcom/appodeal/ads/q2;

    invoke-direct {v4, p0, v1}, Lcom/appodeal/ads/q2;-><init>(Lcom/appodeal/ads/s2;Lcom/appodeal/ads/l2;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/appodeal/ads/utils/m;-><init>(Landroid/content/Context;Lcom/appodeal/ads/utils/m$b;Ljava/lang/String;)V

    .line 36
    sget-object v1, Lcom/appodeal/ads/utils/s;->e:Lcom/appodeal/ads/utils/s;

    .line 37
    iget-object v1, v1, Lcom/appodeal/ads/utils/s;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 39
    :cond_8
    iget v1, p0, Lcom/appodeal/ads/s2;->t:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/appodeal/ads/s2;->t:I

    goto/16 :goto_0

    :cond_9
    if-eqz v6, :cond_1

    .line 40
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/appodeal/ads/s2;->t:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/appodeal/ads/s2;->t:I

    .line 41
    new-instance v2, Lcom/appodeal/ads/utils/n;

    sget-object v3, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 42
    iget-object v3, v3, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 43
    invoke-virtual {v3}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 44
    new-instance v4, Lcom/appodeal/ads/r2;

    invoke-direct {v4, p0, v1}, Lcom/appodeal/ads/r2;-><init>(Lcom/appodeal/ads/s2;Lcom/appodeal/ads/l2;)V

    invoke-direct {v2, v3, v4, v6}, Lcom/appodeal/ads/utils/n;-><init>(Landroid/content/Context;Lcom/appodeal/ads/utils/n$b;Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/appodeal/ads/utils/s;->e:Lcom/appodeal/ads/utils/s;

    .line 46
    iget-object v1, v1, Lcom/appodeal/ads/utils/s;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 47
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 48
    :cond_a
    iput-boolean v2, p0, Lcom/appodeal/ads/s2;->u:Z

    invoke-virtual {p0}, Lcom/appodeal/ads/s2;->m()V

    return-void
.end method

.method public final o()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/s2;->s:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method
