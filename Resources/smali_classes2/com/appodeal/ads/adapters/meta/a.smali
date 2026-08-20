.class public final Lcom/appodeal/ads/adapters/meta/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/meta/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Z

.field public c:Z


# direct methods
.method public static synthetic $r8$lambda$Z8AYEZdBBRFYZiC94DVBmI5N3ao(Lcom/appodeal/ads/adapters/meta/a;Ljava/util/List;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/adapters/meta/a;->a(Ljava/util/List;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zf2nBuXX1FguRQHfcSUe0Vdq7vU(Lcom/appodeal/ads/adapters/meta/a;Landroid/content/Context;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/adapters/meta/a;->a(Landroid/content/Context;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/adapters/meta/a;->b:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/adapters/meta/a;->c:Z

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/adapters/meta/a;->b(Landroid/content/Context;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/adapters/meta/a$a;

    invoke-interface {p2}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/appodeal/ads/adapters/meta/a$a;->b()V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/appodeal/ads/adapters/meta/a$a;->a()V

    goto :goto_0

    :cond_1
    const-class p2, Lcom/appodeal/ads/adapters/meta/a;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/adapters/meta/MetaNetwork$a;)V
    .locals 2

    const-class v0, Lcom/appodeal/ads/adapters/meta/a;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/appodeal/ads/adapters/meta/a;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/appodeal/ads/adapters/meta/MetaNetwork$a;->b()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/adapters/meta/a;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appodeal/ads/adapters/meta/a;->a:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Lcom/appodeal/ads/adapters/meta/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p3, p0, Lcom/appodeal/ads/adapters/meta/a;->b:Z

    if-eqz p3, :cond_2

    return-void

    :cond_2
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/appodeal/ads/adapters/meta/a;->b:Z

    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->buildInitSettings(Landroid/content/Context;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p3, p2}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withMediationService(Ljava/lang/String;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    :cond_3
    new-instance p2, Lcom/appodeal/ads/adapters/meta/a$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/appodeal/ads/adapters/meta/a$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/adapters/meta/a;Landroid/content/Context;)V

    invoke-interface {p3, p2}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withInitListener(Lcom/facebook/ads/AudienceNetworkAds$InitListener;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->initialize()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/adapters/meta/a;->c:Z

    return v0
.end method

.method public final b(Landroid/content/Context;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 3

    invoke-interface {p2}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Meta %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network"

    const-string v2, "Log"

    invoke-static {v1, v2, v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appodeal/ads/adapters/meta/a;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/adapters/meta/a;->b:Z

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-class v0, Lcom/appodeal/ads/adapters/meta/a;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/appodeal/ads/adapters/meta/a;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/appodeal/ads/adapters/meta/a$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v1, p2}, Lcom/appodeal/ads/adapters/meta/a$$ExternalSyntheticLambda1;-><init>(Lcom/appodeal/ads/adapters/meta/a;Ljava/util/List;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
