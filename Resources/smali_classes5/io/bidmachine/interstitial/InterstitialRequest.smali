.class public final Lio/bidmachine/interstitial/InterstitialRequest;
.super Lio/bidmachine/FullScreenAdRequest;
.source "InterstitialRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/interstitial/InterstitialRequest$AdRequestListener;,
        Lio/bidmachine/interstitial/InterstitialRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/FullScreenAdRequest<",
        "Lio/bidmachine/interstitial/InterstitialRequest;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/FullScreenAdRequest;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/interstitial/InterstitialRequest$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lio/bidmachine/interstitial/InterstitialRequest;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;)V

    return-void
.end method
