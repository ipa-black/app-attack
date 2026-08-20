.class public final Lcom/appodeal/ads/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/NativeAd;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lcom/appodeal/ads/s2;

.field public final b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

.field public final c:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Landroid/graphics/Bitmap;

.field public l:Ljava/lang/String;

.field public m:Landroid/graphics/Bitmap;

.field public n:Lcom/appodeal/ads/NativeAdView;

.field public o:Lcom/appodeal/ads/g2;

.field public p:Landroid/app/ProgressDialog;

.field public q:Landroid/net/Uri;

.field public r:Lcom/explorestack/iab/vast/VastRequest;

.field public s:Landroid/os/Handler;

.field public t:Ljava/lang/Runnable;

.field public u:Lcom/appodeal/ads/segments/g;

.field public final v:D

.field public w:Z

.field public final x:Lcom/appodeal/ads/utils/q;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/s2;Lcom/appodeal/ads/unified/UnifiedNativeAd;Lcom/appodeal/ads/unified/UnifiedNativeCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appodeal/ads/utils/q;

    invoke-direct {v0}, Lcom/appodeal/ads/utils/q;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/l2;->x:Lcom/appodeal/ads/utils/q;

    iput-object p1, p0, Lcom/appodeal/ads/l2;->a:Lcom/appodeal/ads/s2;

    iput-object p2, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    iput-object p3, p0, Lcom/appodeal/ads/l2;->c:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getTitle()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x19

    invoke-static {v0, p3}, Lcom/appodeal/ads/l2;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/appodeal/ads/l2;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getDescription()Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x64

    invoke-static {v1, p3}, Lcom/appodeal/ads/l2;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/appodeal/ads/l2;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/appodeal/ads/l2;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/appodeal/ads/l2;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getImageUrl()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/appodeal/ads/l2;->l:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getIconUrl()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/appodeal/ads/l2;->j:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getClickUrl()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/appodeal/ads/l2;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getVideoUrl()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/appodeal/ads/l2;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getVastVideoTag()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/l2;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/appodeal/ads/l2;->v:D

    return-void
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x20

    if-eq p0, p1, :cond_1

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u2026"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static a(Landroid/graphics/Rect;Landroid/view/View;Ljava/util/HashMap;)Ljava/util/Map;
    .locals 2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/appodeal/ads/n5;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {p1}, Lcom/appodeal/ads/n5;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/appodeal/ads/l2;->a(Landroid/graphics/Rect;Landroid/view/View;Ljava/util/HashMap;)Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2
.end method

.method public static a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/appodeal/ads/l2$b;

    invoke-direct {p2}, Lcom/appodeal/ads/l2$b;-><init>()V

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/appodeal/ads/utils/s;->e:Lcom/appodeal/ads/utils/s;

    new-instance v1, Lcom/appodeal/ads/utils/p$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p0, p2}, Lcom/appodeal/ads/utils/p$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/appodeal/ads/l2$b;)V

    .line 2
    iget-object p0, v0, Lcom/appodeal/ads/utils/s;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    const-string p0, "Native"

    const-string p1, "Assets Error"

    const-string p2, "Target ImageView or ImagePath is invalid"

    invoke-static {p0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getAdId()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/l2;->n:Lcom/appodeal/ads/NativeAdView;

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->p:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "Native"

    const-string v1, "Show Progress"

    invoke-static {v0, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/l2;->n:Lcom/appodeal/ads/NativeAdView;

    new-instance v1, Lcom/appodeal/ads/l2$c;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/l2$c;-><init>(Lcom/appodeal/ads/l2;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const-string v0, ""

    const-string v1, "Loading..."

    invoke-static {p1, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/l2;->p:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object p1, p0, Lcom/appodeal/ads/l2;->p:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    new-instance p1, Lcom/appodeal/ads/l2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/appodeal/ads/l2$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/l2;)V

    iput-object p1, p0, Lcom/appodeal/ads/l2;->t:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/appodeal/ads/l2;->s:Landroid/os/Handler;

    iget-object v0, p0, Lcom/appodeal/ads/l2;->t:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/appodeal/ads/g2;

    if-nez v2, :cond_1

    instance-of v2, v1, Landroid/widget/Button;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/appodeal/ads/l2;->a(Landroid/view/ViewGroup;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/appodeal/ads/NativeAdView;Ljava/lang/String;)V
    .locals 7

    .line 13
    invoke-static {p2}, Lcom/appodeal/ads/segments/h;->a(Ljava/lang/String;)Lcom/appodeal/ads/segments/g;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/l2;->u:Lcom/appodeal/ads/segments/g;

    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object p2

    iget-object v0, p0, Lcom/appodeal/ads/l2;->u:Lcom/appodeal/ads/segments/g;

    .line 14
    iput-object v0, p2, Lcom/appodeal/ads/u;->l:Lcom/appodeal/ads/segments/g;

    .line 15
    invoke-virtual {p1}, Lcom/appodeal/ads/native_ad/views/NativeAdViewContainer;->deconfigureContainer()V

    iget-object p2, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {p2, p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onConfigure(Lcom/appodeal/ads/NativeAdView;)V

    .line 16
    iget-object p2, p0, Lcom/appodeal/ads/l2;->n:Lcom/appodeal/ads/NativeAdView;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/appodeal/ads/NativeAdView;->getClickableViews()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/appodeal/ads/g2;

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getClickableViews()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Lcom/appodeal/ads/g2;

    if-nez v1, :cond_3

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/l2;->a(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/appodeal/ads/l2;->n:Lcom/appodeal/ads/NativeAdView;

    iget-boolean p2, p0, Lcom/appodeal/ads/l2;->w:Z

    if-nez p2, :cond_6

    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object p2

    .line 20
    iget p2, p2, Lcom/appodeal/ads/u;->q:I

    int-to-long v0, p2

    .line 21
    new-instance p2, Lcom/appodeal/ads/m2;

    invoke-direct {p2, p0}, Lcom/appodeal/ads/m2;-><init>(Lcom/appodeal/ads/l2;)V

    .line 22
    sget-object v2, Lcom/appodeal/ads/utils/d0;->a:Ljava/util/HashMap;

    monitor-enter v2

    .line 23
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/utils/d0$a;

    if-eqz v3, :cond_5

    .line 24
    invoke-virtual {v3}, Lcom/appodeal/ads/utils/d0$a;->b()V

    .line 25
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    new-instance v3, Lcom/appodeal/ads/utils/d0$a;

    invoke-direct {v3, p1, v0, v1, p2}, Lcom/appodeal/ads/utils/d0$a;-><init>(Landroid/view/View;JLcom/appodeal/ads/utils/d0$b;)V

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/appodeal/ads/utils/d0$a;->c()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 27
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 28
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 29
    :cond_6
    :goto_3
    iget-object p2, p0, Lcom/appodeal/ads/l2;->o:Lcom/appodeal/ads/g2;

    if-eqz p2, :cond_a

    .line 30
    sget-object v0, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    const-string v1, "State"

    const-string v2, "onViewAppearOnScreen"

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/appodeal/ads/g2;->o:Z

    sget-object v0, Lcom/appodeal/ads/Native;->b:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v1, Lcom/appodeal/ads/Native$NativeAdType;->Video:Lcom/appodeal/ads/Native$NativeAdType;

    if-ne v0, v1, :cond_8

    iget-boolean v0, p2, Lcom/appodeal/ads/g2;->p:Z

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/appodeal/ads/g2;->f()V

    goto :goto_4

    :cond_7
    iget v0, p2, Lcom/appodeal/ads/g2;->w:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v0, 0x4

    iput v0, p2, Lcom/appodeal/ads/g2;->w:I

    invoke-virtual {p2}, Lcom/appodeal/ads/g2;->h()V

    .line 31
    :cond_8
    :goto_4
    sget-boolean p2, Lcom/appodeal/ads/Native;->e:Z

    if-eqz p2, :cond_a

    sget-object p2, Lcom/appodeal/ads/Native;->b:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v0, Lcom/appodeal/ads/Native$NativeAdType;->NoVideo:Lcom/appodeal/ads/Native$NativeAdType;

    if-eq p2, v0, :cond_a

    iget-object p2, p0, Lcom/appodeal/ads/l2;->o:Lcom/appodeal/ads/g2;

    .line 32
    iget-boolean v0, p2, Lcom/appodeal/ads/g2;->q:Z

    if-nez v0, :cond_9

    goto :goto_5

    .line 33
    :cond_9
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p2, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    new-instance v2, Lcom/appodeal/ads/f2;

    invoke-direct {v2, p2}, Lcom/appodeal/ads/f2;-><init>(Lcom/appodeal/ads/g2;)V

    const/16 p2, 0x1f4

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 34
    :cond_a
    :goto_5
    iget-object p2, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {p2, p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onRegisterForInteraction(Lcom/appodeal/ads/NativeAdView;)V

    return-void
.end method

.method public final a(Lcom/appodeal/ads/NativeIconView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->obtainIconView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v0, Lcom/appodeal/ads/Native;->c:Lcom/appodeal/ads/Native$MediaAssetType;

    sget-object v2, Lcom/appodeal/ads/Native$MediaAssetType;->IMAGE:Lcom/appodeal/ads/Native$MediaAssetType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/l2;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/appodeal/ads/l2;->k:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v2}, Lcom/appodeal/ads/l2;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 36
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Lcom/appodeal/ads/NativeMediaView;)V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onConfigureMediaView(Lcom/appodeal/ads/NativeMediaView;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Lcom/appodeal/ads/g2;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/appodeal/ads/g2;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appodeal/ads/l2;->o:Lcom/appodeal/ads/g2;

    sget-object v2, Lcom/appodeal/ads/Native;->c:Lcom/appodeal/ads/Native$MediaAssetType;

    sget-object v3, Lcom/appodeal/ads/Native$MediaAssetType;->ICON:Lcom/appodeal/ads/Native$MediaAssetType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, p0}, Lcom/appodeal/ads/g2;->setNativeAd(Lcom/appodeal/ads/l2;)V

    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/NativeMediaView;->removeAllViews()V

    iget-object v1, p0, Lcom/appodeal/ads/l2;->o:Lcom/appodeal/ads/g2;

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/NativeMediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/l2;->a:Lcom/appodeal/ads/s2;

    .line 10
    iget-object v0, v0, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 11
    check-cast v0, Lcom/appodeal/ads/t2;

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->x()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/l2;->u:Lcom/appodeal/ads/segments/g;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/appodeal/ads/segments/g;->a(Lcom/appodeal/ads/segments/g;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "${APPODEALX_SEGMENT_ID}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v1, :cond_3

    const-string v3, "${APPODEALX_PLACEMENT_ID}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 12
    :cond_3
    sget-object v3, Lcom/appodeal/ads/utils/s;->e:Lcom/appodeal/ads/utils/s;

    invoke-static {v2, v3}, Lcom/appodeal/ads/n5;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/s;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->q:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Lcom/explorestack/iab/vast/VastRequest;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->r:Lcom/explorestack/iab/vast/VastRequest;

    return-object v0
.end method

.method public final canShow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    if-nez p2, :cond_0

    new-instance p1, Lcom/appodeal/ads/utils/exception_handler/a;

    const-string p2, "Unable to check: placement = null"

    invoke-direct {p1, p2}, Lcom/appodeal/ads/utils/exception_handler/a;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p2}, Lcom/appodeal/ads/segments/h;->a(Ljava/lang/String;)Lcom/appodeal/ads/segments/g;

    move-result-object p2

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Native:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    iget-wide v1, p0, Lcom/appodeal/ads/l2;->v:D

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/appodeal/ads/segments/g;->a(Landroid/content/Context;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;D)Z

    move-result p1

    return p1
.end method

.method public final containsVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->containsVideo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/l2;->h:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/l2;->i:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    iget-object v0, p0, Lcom/appodeal/ads/l2;->a:Lcom/appodeal/ads/s2;

    invoke-static {v0}, Lcom/appodeal/ads/utils/o;->b(Lcom/appodeal/ads/l;)V

    iget-object v0, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onDestroy()V

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/l2;->n:Lcom/appodeal/ads/NativeAdView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/NativeAdView;->getClickableViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Lcom/appodeal/ads/g2;

    if-nez v3, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 3
    :cond_3
    :goto_1
    sget-object v0, Lcom/appodeal/ads/utils/d0;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/utils/d0$a;

    if-eqz v2, :cond_4

    .line 4
    invoke-virtual {v2}, Lcom/appodeal/ads/utils/d0$a;->b()V

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/appodeal/ads/l2;->o:Lcom/appodeal/ads/g2;

    if-eqz v0, :cond_5

    .line 7
    iget-object v2, v0, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    iput-object v1, v0, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onUnregisterForInteraction()V

    .line 9
    :cond_6
    iget-object v0, p0, Lcom/appodeal/ads/l2;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    goto :goto_2

    .line 10
    :cond_7
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "Native"

    const-string v3, "Assets"

    const-string v4, "bitmap recycling error"

    invoke-static {v2, v3, v4}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 11
    :goto_2
    iput-object v1, p0, Lcom/appodeal/ads/l2;->k:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/appodeal/ads/l2;->m:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    goto :goto_3

    .line 12
    :cond_8
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v2, "Native"

    const-string v3, "Assets"

    const-string v4, "bitmap recycling error"

    invoke-static {v2, v3, v4}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 13
    :goto_3
    iput-object v1, p0, Lcom/appodeal/ads/l2;->m:Landroid/graphics/Bitmap;

    .line 14
    iget-object v0, p0, Lcom/appodeal/ads/l2;->q:Landroid/net/Uri;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/appodeal/ads/l2;->q:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_9
    iput-object v1, p0, Lcom/appodeal/ads/l2;->q:Landroid/net/Uri;

    :cond_a
    return-void

    :catchall_0
    move-exception v1

    .line 15
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/l2;->p:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/l2;->p:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/appodeal/ads/l2;->p:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/l2;->t:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/appodeal/ads/l2;->s:Landroid/os/Handler;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/appodeal/ads/l2;->s:Landroid/os/Handler;

    iput-object v1, p0, Lcom/appodeal/ads/l2;->t:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onAdVideoFinish()V

    :cond_0
    return-void
.end method

.method public final getAdProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->a:Lcom/appodeal/ads/s2;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getAgeRestrictions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getAgeRestriction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/l2;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "Install"

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getPredictedEcpm()D
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/l2;->v:D

    return-wide v0
.end method

.method public final getProviderView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->obtainProviderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getRating()F
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getRating()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final isPrecache()Z
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2;->a:Lcom/appodeal/ads/s2;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 2
    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->isPrecache()Z

    move-result v0

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onAdClick(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getClickNotifyUrls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/l2;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appodeal/ads/l2;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/appodeal/ads/l2;->x:Lcom/appodeal/ads/utils/q;

    iget-object v3, p0, Lcom/appodeal/ads/l2;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getTrackingPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getTrackingPackageExpiry()J

    move-result-wide v5

    new-instance v7, Lcom/appodeal/ads/l2$a;

    invoke-direct {v7, p0}, Lcom/appodeal/ads/l2$a;-><init>(Lcom/appodeal/ads/l2;)V

    invoke-virtual/range {v1 .. v7}, Lcom/appodeal/ads/utils/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/appodeal/ads/utils/q$b;)V

    return-void
.end method
