.class public final Lcom/appodeal/ads/v5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/u;

.field public final synthetic b:Lcom/appodeal/ads/x5;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/x5;Lcom/appodeal/ads/a6;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/v5;->b:Lcom/appodeal/ads/x5;

    iput-object p2, p0, Lcom/appodeal/ads/v5;->a:Lcom/appodeal/ads/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/v5;->b:Lcom/appodeal/ads/x5;

    .line 1
    iget-object v1, v0, Lcom/appodeal/ads/x5;->c:Landroid/view/View;

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    .line 3
    const-string v1, "UnRender"

    const-string v2, "skip: no current ad view"

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    if-eqz v0, :cond_1

    .line 5
    sget-object v2, Lcom/appodeal/ads/x5;->m:Landroid/os/Handler;

    .line 6
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/appodeal/ads/v5;->b:Lcom/appodeal/ads/x5;

    const/4 v2, 0x0

    .line 7
    iput-object v2, v0, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/v5;->a:Lcom/appodeal/ads/u;

    .line 9
    iget-object v0, v0, Lcom/appodeal/ads/u;->y:Lcom/appodeal/ads/r;

    .line 10
    check-cast v0, Lcom/appodeal/ads/z5;

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, v0, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    if-eqz v0, :cond_2

    .line 12
    check-cast v0, Lcom/appodeal/ads/r5;

    .line 13
    iget-object v0, v0, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onHide()V

    :cond_2
    const/16 v0, 0x8

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/v5;->b:Lcom/appodeal/ads/x5;

    .line 15
    iget-object v0, v0, Lcom/appodeal/ads/x5;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/appodeal/ads/v5;->b:Lcom/appodeal/ads/x5;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v1, v0, v0}, Lcom/appodeal/ads/x5;->a(Landroid/view/View;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
