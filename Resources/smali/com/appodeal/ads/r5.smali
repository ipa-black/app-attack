.class public abstract Lcom/appodeal/ads/r5;
.super Lcom/appodeal/ads/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lcom/appodeal/ads/r;",
        "UnifiedAdType:",
        "Lcom/appodeal/ads/unified/UnifiedViewAd;",
        "UnifiedAdParamsType::",
        "Lcom/appodeal/ads/unified/UnifiedViewAdParams;",
        "UnifiedAdCallbackType:",
        "Lcom/appodeal/ads/unified/UnifiedViewAdCallback;",
        ">",
        "Lcom/appodeal/ads/l<",
        "TAdRequestType;TUnifiedAdType;TUnifiedAdParamsType;TUnifiedAdCallbackType;>;"
    }
.end annotation


# instance fields
.field public s:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)V
    .locals 1

    const/16 v0, 0x1388

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/appodeal/ads/l;-><init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;I)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)I
.end method

.method public abstract b(Landroid/content/Context;)I
.end method

.method public final i()V
    .locals 1

    invoke-super {p0}, Lcom/appodeal/ads/l;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/r5;->s:Landroid/view/View;

    return-void
.end method
