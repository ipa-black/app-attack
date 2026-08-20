.class public Lio/bidmachine/richmedia/SimpleRichMediaListener;
.super Ljava/lang/Object;
.source "SimpleRichMediaListener.java"

# interfaces
.implements Lio/bidmachine/richmedia/RichMediaListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/richmedia/RichMediaView;

    invoke-virtual {p0, p1}, Lio/bidmachine/richmedia/SimpleRichMediaListener;->onAdClicked(Lio/bidmachine/richmedia/RichMediaView;)V

    return-void
.end method

.method public onAdClicked(Lio/bidmachine/richmedia/RichMediaView;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/richmedia/RichMediaView;

    invoke-virtual {p0, p1}, Lio/bidmachine/richmedia/SimpleRichMediaListener;->onAdExpired(Lio/bidmachine/richmedia/RichMediaView;)V

    return-void
.end method

.method public onAdExpired(Lio/bidmachine/richmedia/RichMediaView;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/richmedia/RichMediaView;

    invoke-virtual {p0, p1}, Lio/bidmachine/richmedia/SimpleRichMediaListener;->onAdImpression(Lio/bidmachine/richmedia/RichMediaView;)V

    return-void
.end method

.method public onAdImpression(Lio/bidmachine/richmedia/RichMediaView;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/richmedia/RichMediaView;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/richmedia/SimpleRichMediaListener;->onAdLoadFailed(Lio/bidmachine/richmedia/RichMediaView;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/richmedia/RichMediaView;Lio/bidmachine/utils/BMError;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/richmedia/RichMediaView;

    invoke-virtual {p0, p1}, Lio/bidmachine/richmedia/SimpleRichMediaListener;->onAdLoaded(Lio/bidmachine/richmedia/RichMediaView;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/richmedia/RichMediaView;)V
    .locals 0

    return-void
.end method
