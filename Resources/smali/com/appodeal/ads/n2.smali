.class public final Lcom/appodeal/ads/n2;
.super Lcom/appodeal/ads/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/g<",
        "Lcom/appodeal/ads/t2;",
        "Lcom/appodeal/ads/s2;",
        "Lcom/appodeal/ads/l2;",
        ">;"
    }
.end annotation


# static fields
.field public static e:Lcom/appodeal/ads/NativeCallbacks;


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appodeal/ads/g;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/appodeal/ads/n2;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/n2;->b:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/n2;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/appodeal/ads/NativeAd;Lcom/appodeal/ads/NativeAd;)I
    .locals 2

    invoke-interface {p1}, Lcom/appodeal/ads/NativeAd;->getPredictedEcpm()D

    move-result-wide v0

    invoke-interface {p0}, Lcom/appodeal/ads/NativeAd;->getPredictedEcpm()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(I)Ljava/util/ArrayList;
    .locals 7

    iget-object v0, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    iget-object v4, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appodeal/ads/NativeAd;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/NativeAd;

    check-cast v3, Lcom/appodeal/ads/l2;

    .line 9
    iget-object v3, v3, Lcom/appodeal/ads/l2;->a:Lcom/appodeal/ads/s2;

    .line 10
    invoke-static {v3}, Lcom/appodeal/ads/utils/o;->b(Lcom/appodeal/ads/l;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v2, p0, Lcom/appodeal/ads/n2;->b:Z

    iput-boolean v2, p0, Lcom/appodeal/ads/n2;->c:Z

    :cond_3
    const-string v1, "NativeAdBox"

    const-string v3, "Get Ads"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "available count of Native Ads: %d"

    iget-object v6, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/appodeal/ads/n2;->a(Z)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a()Ljava/util/HashSet;
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/NativeAd;

    check-cast v3, Lcom/appodeal/ads/l2;

    .line 7
    iget-object v3, v3, Lcom/appodeal/ads/l2;->a:Lcom/appodeal/ads/s2;

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    check-cast p3, Lcom/appodeal/ads/l2;

    .line 18
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_CLICKED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v0, "Native"

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sget-object p1, Lcom/appodeal/ads/n2;->e:Lcom/appodeal/ads/NativeCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Lcom/appodeal/ads/NativeCallbacks;->onNativeClicked(Lcom/appodeal/ads/NativeAd;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/appodeal/ads/t2;Lcom/appodeal/ads/s2;)V
    .locals 3

    invoke-virtual {p2}, Lcom/appodeal/ads/s2;->o()Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/appodeal/ads/n2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/appodeal/ads/n2$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p2, p0, Lcom/appodeal/ads/n2;->b:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/appodeal/ads/n2;->b:Z

    sget-object p2, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_LOADED:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "available count of Native Ads: %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeAdBox"

    invoke-static {v1, p2, v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/appodeal/ads/n2;->e:Lcom/appodeal/ads/NativeCallbacks;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/appodeal/ads/NativeCallbacks;->onNativeLoaded()V

    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/r;->q()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/n2;->a(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 7

    iget-object v0, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-virtual {v1}, Lcom/appodeal/ads/u;->k()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1
    :cond_0
    sget p1, Lcom/appodeal/ads/i0;->e:I

    if-lez p1, :cond_1

    iget v2, p0, Lcom/appodeal/ads/n2;->a:I

    if-eq p1, v2, :cond_1

    iput p1, p0, Lcom/appodeal/ads/n2;->a:I

    :cond_1
    iget p1, p0, Lcom/appodeal/ads/n2;->a:I

    .line 2
    iget-object v2, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appodeal/ads/NativeAd;

    invoke-interface {v6}, Lcom/appodeal/ads/NativeAd;->isPrecache()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v5

    sub-int/2addr p1, v2

    if-lez p1, :cond_5

    .line 4
    :try_start_2
    sput p1, Lcom/appodeal/ads/Native;->a:I

    invoke-virtual {v1}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/t2;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/appodeal/ads/r;->u()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object p1

    sget-object v1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    invoke-virtual {v1}, Lcom/appodeal/ads/context/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/u;->c(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lcom/appodeal/ads/n2;->b:Z

    if-nez p1, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appodeal/ads/n2;->b:Z

    sget-object p1, Lcom/appodeal/ads/n2;->e:Lcom/appodeal/ads/NativeCallbacks;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/appodeal/ads/NativeCallbacks;->onNativeLoaded()V

    :cond_6
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final a(ZZZ)V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/appodeal/ads/n2;->b:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/n2;->c:Z

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object p1

    sget-object v2, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 11
    iget-object v2, v2, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 12
    invoke-virtual {v2}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 13
    new-instance v3, Lcom/appodeal/ads/Native$c;

    invoke-direct {v3}, Lcom/appodeal/ads/Native$c;-><init>()V

    .line 14
    iput-boolean v1, v3, Lcom/appodeal/ads/s;->a:Z

    .line 15
    iput-boolean p2, v3, Lcom/appodeal/ads/s;->b:Z

    .line 16
    iput-boolean p3, v3, Lcom/appodeal/ads/s;->c:Z

    .line 17
    invoke-virtual {p1, v2, v3}, Lcom/appodeal/ads/u;->b(Landroid/content/Context;Lcom/appodeal/ads/s;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/appodeal/ads/n2;->a(Z)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(I)V
    .locals 1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lcom/appodeal/ads/n2;->a:I

    return-void
.end method

.method public final b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 1

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    .line 1
    iget-object p1, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_EXPIRED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v0, "Native"

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sget-object p1, Lcom/appodeal/ads/n2;->e:Lcom/appodeal/ads/NativeCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/NativeCallbacks;->onNativeExpired()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    check-cast p3, Lcom/appodeal/ads/l2;

    .line 2
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_SHOW_FAILED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v0, "Native"

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sget-object p1, Lcom/appodeal/ads/n2;->e:Lcom/appodeal/ads/NativeCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Lcom/appodeal/ads/NativeCallbacks;->onNativeShowFailed(Lcom/appodeal/ads/NativeAd;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/appodeal/ads/n2;->a(ZZZ)V

    return-void
.end method

.method public final c(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    check-cast p3, Lcom/appodeal/ads/l2;

    .line 1
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_SHOWN:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v0, "Native"

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sget-object p1, Lcom/appodeal/ads/n2;->e:Lcom/appodeal/ads/NativeCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Lcom/appodeal/ads/NativeCallbacks;->onNativeShown(Lcom/appodeal/ads/NativeAd;)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 1

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    .line 1
    iget-boolean p1, p0, Lcom/appodeal/ads/n2;->b:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/appodeal/ads/n2;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appodeal/ads/n2;->c:Z

    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_LOAD_FAILED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v0, "Native"

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sget-object p1, Lcom/appodeal/ads/n2;->e:Lcom/appodeal/ads/NativeCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/NativeCallbacks;->onNativeFailedToLoad()V

    :cond_0
    return-void
.end method

.method public final bridge synthetic e(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/n2;->a(Lcom/appodeal/ads/t2;Lcom/appodeal/ads/s2;)V

    return-void
.end method
