.class public interface abstract Lio/bidmachine/AdProcessCallback;
.super Ljava/lang/Object;
.source "AdProcessCallback.java"


# virtual methods
.method public abstract processBeforeStartVisibilityTracker()V
.end method

.method public abstract processClicked()V
.end method

.method public abstract processClosed()V
.end method

.method public abstract processDestroy()V
.end method

.method public abstract processExpired()V
.end method

.method public abstract processFillAd()V
.end method

.method public abstract processFinished()V
.end method

.method public abstract processLoadFail(Lio/bidmachine/utils/BMError;)V
.end method

.method public abstract processLoadSuccess()V
.end method

.method public abstract processShowFail(Lio/bidmachine/utils/BMError;)V
.end method

.method public abstract processShown()V
.end method

.method public abstract processVisibilityTrackerImpression()V
.end method

.method public abstract processVisibilityTrackerShown(Lio/bidmachine/unified/UnifiedAd;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/unified/UnifiedAd<",
            "**>;)Z"
        }
    .end annotation
.end method
