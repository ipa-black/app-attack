.class public final Lcom/appodeal/ads/s2$a;
.super Lcom/appodeal/ads/unified/UnifiedNativeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/s2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/s2;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/s2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/appodeal/ads/l2;
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    iget-object v0, v0, Lcom/appodeal/ads/s2;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    iget-object v0, v0, Lcom/appodeal/ads/s2;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/NativeAd;

    instance-of v2, v1, Lcom/appodeal/ads/l2;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/appodeal/ads/l2;

    invoke-virtual {v1}, Lcom/appodeal/ads/l2;->a()I

    move-result v2

    if-ne p1, v2, :cond_1

    return-object v1

    :cond_2
    iget-object p1, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    iget-object p1, p1, Lcom/appodeal/ads/s2;->s:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/l2;

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onAdClicked()V
    .locals 5

    invoke-static {}, Lcom/appodeal/ads/Native;->b()Lcom/appodeal/ads/Native$b;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/t2;

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/appodeal/ads/s2$a;->a(I)Lcom/appodeal/ads/l2;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V

    return-void
.end method

.method public final onAdClicked(ILcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/Native;->b()Lcom/appodeal/ads/Native$b;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    .line 3
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 4
    check-cast v2, Lcom/appodeal/ads/t2;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/s2$a;->a(I)Lcom/appodeal/ads/l2;

    move-result-object p1

    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V

    return-void
.end method

.method public final onAdClicked(Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/appodeal/ads/s2$a;->onAdClicked(ILcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V

    return-void
.end method

.method public final onAdExpired()V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/Native;->b()Lcom/appodeal/ads/Native$b;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/t2;

    invoke-virtual {v0, v2, v1}, Lcom/appodeal/ads/b0;->m(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    return-void
.end method

.method public final onAdFinished(I)V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/Native;->b()Lcom/appodeal/ads/Native$b;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/t2;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/s2$a;->a(I)Lcom/appodeal/ads/l2;

    move-result-object p1

    invoke-virtual {v0, v2, v1, p1}, Lcom/appodeal/ads/b0;->i(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    return-void
.end method

.method public final onAdInfoRequested(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/l;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/Native;->b()Lcom/appodeal/ads/Native$b;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/t2;

    invoke-virtual {v0, v2, v1, p1}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/appodeal/ads/unified/UnifiedNativeAd;)V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    .line 1
    iget-object v1, v0, Lcom/appodeal/ads/l;->h:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    .line 2
    check-cast v1, Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    iget-object v2, v0, Lcom/appodeal/ads/s2;->s:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/appodeal/ads/l2;

    invoke-direct {v3, v0, p1, v1}, Lcom/appodeal/ads/l2;-><init>(Lcom/appodeal/ads/s2;Lcom/appodeal/ads/unified/UnifiedNativeAd;Lcom/appodeal/ads/unified/UnifiedNativeCallback;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    invoke-virtual {p1}, Lcom/appodeal/ads/s2;->n()V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/s2$a;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onAdShowFailed()V
    .locals 5

    invoke-static {}, Lcom/appodeal/ads/Native;->b()Lcom/appodeal/ads/Native$b;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/t2;

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/appodeal/ads/s2$a;->a(I)Lcom/appodeal/ads/l2;

    move-result-object v3

    sget-object v4, Lcom/appodeal/ads/networking/LoadingError;->ShowFailed:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onAdShown(I)V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/Native;->b()Lcom/appodeal/ads/Native$b;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/t2;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/s2$a;->a(I)Lcom/appodeal/ads/l2;

    move-result-object p1

    invoke-virtual {v0, v2, v1, p1}, Lcom/appodeal/ads/b0;->j(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    return-void
.end method

.method public final printError(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/s2$a;->a:Lcom/appodeal/ads/s2;

    .line 1
    iget-object v1, v0, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v1, Lcom/appodeal/ads/t2;

    invoke-virtual {v1, v0, p1, p2}, Lcom/appodeal/ads/r;->a(Lcom/appodeal/ads/l;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
