.class interface abstract Lio/bidmachine/ads/networks/notsy/InternalNotsyAdLoadListener;
.super Ljava/lang/Object;
.source "InternalNotsyAdLoadListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NotsyAdType:",
        "Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onAdLoadFailed(Lio/bidmachine/utils/BMError;)V
.end method

.method public abstract onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TNotsyAdType;)V"
        }
    .end annotation
.end method
