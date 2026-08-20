.class public final Lcom/appodeal/ads/m4$a;
.super Lcom/appodeal/ads/unified/UnifiedRewardedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/m4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/m4;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/m4;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/m4$a;->a:Lcom/appodeal/ads/m4;

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 4

    invoke-static {}, Lcom/appodeal/ads/o4;->b()Lcom/appodeal/ads/o4$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/m4$a;->a:Lcom/appodeal/ads/m4;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/n4;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V

    return-void
.end method

.method public final onAdClicked(Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V
    .locals 4

    invoke-static {}, Lcom/appodeal/ads/o4;->b()Lcom/appodeal/ads/o4$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/m4$a;->a:Lcom/appodeal/ads/m4;

    .line 3
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 4
    check-cast v2, Lcom/appodeal/ads/n4;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V

    return-void
.end method

.method public final onAdClosed()V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/o4;->b()Lcom/appodeal/ads/o4$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/m4$a;->a:Lcom/appodeal/ads/m4;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/n4;

    invoke-virtual {v0, v2, v1}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/j1;)V

    return-void
.end method

.method public final onAdExpired()V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/o4;->b()Lcom/appodeal/ads/o4$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/m4$a;->a:Lcom/appodeal/ads/m4;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/n4;

    invoke-virtual {v0, v2, v1}, Lcom/appodeal/ads/b0;->m(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    return-void
.end method

.method public final onAdFinished()V
    .locals 4

    invoke-static {}, Lcom/appodeal/ads/o4;->b()Lcom/appodeal/ads/o4$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/m4$a;->a:Lcom/appodeal/ads/m4;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/n4;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v2, v1, v3}, Lcom/appodeal/ads/b0;->i(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    return-void
.end method

.method public final onAdInfoRequested(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/m4$a;->a:Lcom/appodeal/ads/m4;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/l;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/o4;->b()Lcom/appodeal/ads/o4$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/m4$a;->a:Lcom/appodeal/ads/m4;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/n4;

    invoke-virtual {v0, v2, v1, p1}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/o4;->b()Lcom/appodeal/ads/o4$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/m4$a;->a:Lcom/appodeal/ads/m4;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/n4;

    invoke-virtual {v0, v2, v1}, Lcom/appodeal/ads/b0;->n(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    return-void
.end method

.method public final onAdShowFailed()V
    .locals 5

    invoke-static {}, Lcom/appodeal/ads/o4;->b()Lcom/appodeal/ads/o4$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/m4$a;->a:Lcom/appodeal/ads/m4;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/n4;

    sget-object v3, Lcom/appodeal/ads/networking/LoadingError;->ShowFailed:Lcom/appodeal/ads/networking/LoadingError;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onAdShown()V
    .locals 4

    invoke-static {}, Lcom/appodeal/ads/o4;->b()Lcom/appodeal/ads/o4$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/m4$a;->a:Lcom/appodeal/ads/m4;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/n4;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v2, v1, v3}, Lcom/appodeal/ads/b0;->j(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    return-void
.end method

.method public final printError(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/m4$a;->a:Lcom/appodeal/ads/m4;

    .line 1
    iget-object v1, v0, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v1, Lcom/appodeal/ads/n4;

    invoke-virtual {v1, v0, p1, p2}, Lcom/appodeal/ads/r;->a(Lcom/appodeal/ads/l;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
