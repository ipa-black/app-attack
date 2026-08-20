.class public final Lcom/appodeal/ads/j2$a;
.super Lcom/appodeal/ads/unified/UnifiedMrecCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/j2;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/j2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/j2$a;->a:Lcom/appodeal/ads/j2;

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedMrecCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 4

    invoke-static {}, Lcom/appodeal/ads/h2;->b()Lcom/appodeal/ads/h2$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/j2$a;->a:Lcom/appodeal/ads/j2;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/k2;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V

    return-void
.end method

.method public final onAdClicked(Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V
    .locals 4

    invoke-static {}, Lcom/appodeal/ads/h2;->b()Lcom/appodeal/ads/h2$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/j2$a;->a:Lcom/appodeal/ads/j2;

    .line 3
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 4
    check-cast v2, Lcom/appodeal/ads/k2;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V

    return-void
.end method

.method public final onAdExpired()V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/h2;->b()Lcom/appodeal/ads/h2$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/j2$a;->a:Lcom/appodeal/ads/j2;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/k2;

    invoke-virtual {v0, v2, v1}, Lcom/appodeal/ads/b0;->m(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    return-void
.end method

.method public final onAdInfoRequested(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/j2$a;->a:Lcom/appodeal/ads/j2;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/l;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/h2;->b()Lcom/appodeal/ads/h2$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/j2$a;->a:Lcom/appodeal/ads/j2;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/k2;

    invoke-virtual {v0, v2, v1, p1}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onAdLoaded(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/j2$a;->a:Lcom/appodeal/ads/j2;

    .line 1
    iput-object p1, v0, Lcom/appodeal/ads/r5;->s:Landroid/view/View;

    .line 2
    invoke-static {}, Lcom/appodeal/ads/h2;->b()Lcom/appodeal/ads/h2$c;

    move-result-object p1

    iget-object v0, p0, Lcom/appodeal/ads/j2$a;->a:Lcom/appodeal/ads/j2;

    .line 3
    iget-object v1, v0, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 4
    check-cast v1, Lcom/appodeal/ads/k2;

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/b0;->n(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    return-void
.end method

.method public final onAdShowFailed()V
    .locals 5

    invoke-static {}, Lcom/appodeal/ads/h2;->b()Lcom/appodeal/ads/h2$c;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/j2$a;->a:Lcom/appodeal/ads/j2;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v2, Lcom/appodeal/ads/k2;

    sget-object v3, Lcom/appodeal/ads/networking/LoadingError;->ShowFailed:Lcom/appodeal/ads/networking/LoadingError;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final printError(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/j2$a;->a:Lcom/appodeal/ads/j2;

    .line 1
    iget-object v1, v0, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 2
    check-cast v1, Lcom/appodeal/ads/k2;

    invoke-virtual {v1, v0, p1, p2}, Lcom/appodeal/ads/r;->a(Lcom/appodeal/ads/l;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
