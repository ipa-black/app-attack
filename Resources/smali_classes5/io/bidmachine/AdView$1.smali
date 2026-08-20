.class Lio/bidmachine/AdView$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lio/bidmachine/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/AdListener<",
        "TAdType;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/AdView;


# direct methods
.method constructor <init>(Lio/bidmachine/AdView;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0

    .line 183
    check-cast p1, Lio/bidmachine/ViewAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdView$1;->onAdClicked(Lio/bidmachine/ViewAd;)V

    return-void
.end method

.method public onAdClicked(Lio/bidmachine/ViewAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)V"
        }
    .end annotation

    .line 205
    iget-object p1, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdClicked(Lio/bidmachine/IAd;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 183
    check-cast p1, Lio/bidmachine/ViewAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdView$1;->onAdExpired(Lio/bidmachine/ViewAd;)V

    return-void
.end method

.method public onAdExpired(Lio/bidmachine/ViewAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)V"
        }
    .end annotation

    .line 221
    iget-object p1, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdExpired(Lio/bidmachine/IAd;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 183
    check-cast p1, Lio/bidmachine/ViewAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdView$1;->onAdImpression(Lio/bidmachine/ViewAd;)V

    return-void
.end method

.method public onAdImpression(Lio/bidmachine/ViewAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)V"
        }
    .end annotation

    .line 213
    iget-object p1, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdImpression(Lio/bidmachine/IAd;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 183
    check-cast p1, Lio/bidmachine/ViewAd;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdView$1;->onAdLoadFailed(Lio/bidmachine/ViewAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/ViewAd;Lio/bidmachine/utils/BMError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;",
            "Lio/bidmachine/utils/BMError;",
            ")V"
        }
    .end annotation

    .line 197
    iget-object p1, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-interface {p1, v0, p2}, Lio/bidmachine/AdListener;->onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0

    .line 183
    check-cast p1, Lio/bidmachine/ViewAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdView$1;->onAdLoaded(Lio/bidmachine/ViewAd;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/ViewAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)V"
        }
    .end annotation

    .line 188
    iget-object p1, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdLoaded(Lio/bidmachine/IAd;)V

    .line 191
    :cond_0
    iget-object p1, p0, Lio/bidmachine/AdView$1;->this$0:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$100(Lio/bidmachine/AdView;)V

    return-void
.end method
