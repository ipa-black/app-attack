.class public Lcom/appodeal/ads/NativeAdView;
.super Lcom/appodeal/ads/native_ad/views/NativeAdViewContainer;
.source "SourceFile"


# instance fields
.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Lcom/appodeal/ads/NativeIconView;

.field public i:Lcom/appodeal/ads/NativeMediaView;

.field public j:Lcom/appodeal/ads/l2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/native_ad/views/NativeAdViewContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/native_ad/views/NativeAdViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/native_ad/views/NativeAdViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/native_ad/views/NativeAdViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/h1;->j:Lcom/appodeal/ads/i1;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->j:Lcom/appodeal/ads/l2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/l2;->destroy()V

    :cond_0
    return-void
.end method

.method public getCallToActionView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    return-object v0
.end method

.method public getClickableViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/appodeal/ads/NativeAdView;->i:Lcom/appodeal/ads/NativeMediaView;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public getDescriptionView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    return-object v0
.end method

.method public getNativeIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    return-object v0
.end method

.method public getNativeMediaView()Lcom/appodeal/ads/NativeMediaView;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->i:Lcom/appodeal/ads/NativeMediaView;

    return-object v0
.end method

.method public getProviderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->g:Landroid/view/View;

    return-object v0
.end method

.method public getRatingView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    return-object v0
.end method

.method public registerView(Lcom/appodeal/ads/NativeAd;)V
    .locals 1

    const-string v0, "default"

    invoke-virtual {p0, p1, v0}, Lcom/appodeal/ads/NativeAdView;->registerView(Lcom/appodeal/ads/NativeAd;Ljava/lang/String;)V

    return-void
.end method

.method public registerView(Lcom/appodeal/ads/NativeAd;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/appodeal/ads/h1;->h:Lcom/appodeal/ads/i1;

    invoke-virtual {v0}, Lcom/appodeal/ads/i1;->a()V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->i:Lcom/appodeal/ads/NativeMediaView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/appodeal/ads/NativeMediaView;->removeAllViews()V

    .line 1
    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->j:Lcom/appodeal/ads/l2;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2
    iget-object v2, v0, Lcom/appodeal/ads/l2;->n:Lcom/appodeal/ads/NativeAdView;

    if-nez v2, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Lcom/appodeal/ads/NativeAdView;->getClickableViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v4, v3, Lcom/appodeal/ads/g2;

    if-nez v4, :cond_3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 4
    :cond_4
    :goto_1
    sget-object v2, Lcom/appodeal/ads/utils/d0;->a:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/utils/d0$a;

    if-eqz v3, :cond_5

    .line 5
    invoke-virtual {v3}, Lcom/appodeal/ads/utils/d0$a;->b()V

    .line 6
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v2, v0, Lcom/appodeal/ads/l2;->o:Lcom/appodeal/ads/g2;

    if-eqz v2, :cond_6

    .line 8
    iget-object v3, v2, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    iput-object v1, v2, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    .line 9
    :cond_6
    iget-object v0, v0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onUnregisterForInteraction()V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 11
    :cond_7
    :goto_2
    check-cast p1, Lcom/appodeal/ads/l2;

    iput-object p1, p0, Lcom/appodeal/ads/NativeAdView;->j:Lcom/appodeal/ads/l2;

    if-eqz p1, :cond_d

    .line 12
    iget-object v0, p1, Lcom/appodeal/ads/l2;->n:Lcom/appodeal/ads/NativeAdView;

    if-nez v0, :cond_8

    goto :goto_4

    .line 13
    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/NativeAdView;->getClickableViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Lcom/appodeal/ads/g2;

    if-nez v3, :cond_9

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 14
    :cond_a
    :goto_4
    sget-object v0, Lcom/appodeal/ads/utils/d0;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/utils/d0$a;

    if-eqz v2, :cond_b

    .line 15
    invoke-virtual {v2}, Lcom/appodeal/ads/utils/d0$a;->b()V

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    iget-object v0, p1, Lcom/appodeal/ads/l2;->o:Lcom/appodeal/ads/g2;

    if-eqz v0, :cond_c

    .line 18
    iget-object v2, v0, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    iput-object v1, v0, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    .line 19
    :cond_c
    iget-object p1, p1, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onUnregisterForInteraction()V

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 20
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 21
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->j:Lcom/appodeal/ads/l2;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/l2;->a(Lcom/appodeal/ads/NativeIconView;)V

    :cond_e
    iget-object p1, p0, Lcom/appodeal/ads/NativeAdView;->i:Lcom/appodeal/ads/NativeMediaView;

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->j:Lcom/appodeal/ads/l2;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/l2;->a(Lcom/appodeal/ads/NativeMediaView;)V

    :cond_f
    iget-object p1, p0, Lcom/appodeal/ads/NativeAdView;->j:Lcom/appodeal/ads/l2;

    invoke-virtual {p1, p0, p2}, Lcom/appodeal/ads/l2;->a(Lcom/appodeal/ads/NativeAdView;Ljava/lang/String;)V

    return-void
.end method

.method public setCallToActionView(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/h1;->b:Lcom/appodeal/ads/i1;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    return-void
.end method

.method public setDescriptionView(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/h1;->d:Lcom/appodeal/ads/i1;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    return-void
.end method

.method public setNativeIconView(Lcom/appodeal/ads/NativeIconView;)V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/h1;->f:Lcom/appodeal/ads/i1;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    return-void
.end method

.method public setNativeMediaView(Lcom/appodeal/ads/NativeMediaView;)V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/h1;->g:Lcom/appodeal/ads/i1;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/appodeal/ads/NativeAdView;->i:Lcom/appodeal/ads/NativeMediaView;

    return-void
.end method

.method public setProviderView(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/h1;->e:Lcom/appodeal/ads/i1;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/appodeal/ads/NativeAdView;->g:Landroid/view/View;

    return-void
.end method

.method public setRatingView(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/h1;->c:Lcom/appodeal/ads/i1;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/h1;->a:Lcom/appodeal/ads/i1;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    return-void
.end method

.method public unregisterViewForInteraction()V
    .locals 5

    sget-object v0, Lcom/appodeal/ads/h1;->i:Lcom/appodeal/ads/i1;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->j:Lcom/appodeal/ads/l2;

    if-eqz v0, :cond_5

    .line 3
    iget-object v2, v0, Lcom/appodeal/ads/l2;->n:Lcom/appodeal/ads/NativeAdView;

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Lcom/appodeal/ads/NativeAdView;->getClickableViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v4, v3, Lcom/appodeal/ads/g2;

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 5
    :cond_2
    :goto_1
    sget-object v2, Lcom/appodeal/ads/utils/d0;->a:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/utils/d0$a;

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {v3}, Lcom/appodeal/ads/utils/d0$a;->b()V

    .line 7
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v2, v0, Lcom/appodeal/ads/l2;->o:Lcom/appodeal/ads/g2;

    if-eqz v2, :cond_4

    .line 9
    iget-object v3, v2, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    iput-object v1, v2, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    .line 10
    :cond_4
    iget-object v0, v0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onUnregisterForInteraction()V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_2
    return-void
.end method
