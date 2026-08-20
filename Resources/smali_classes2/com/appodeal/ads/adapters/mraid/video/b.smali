.class public final Lcom/appodeal/ads/adapters/mraid/video/b;
.super Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo<",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Ljava/lang/String;)V
    .locals 1

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedVideoParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    .line 1
    new-instance v0, Lcom/appodeal/ads/adapters/mraid/video/a;

    invoke-direct {v0, p0, p2, p4}, Lcom/appodeal/ads/adapters/mraid/video/a;-><init>(Lcom/appodeal/ads/adapters/mraid/video/b;Lcom/appodeal/ads/unified/UnifiedVideoParams;Lcom/appodeal/ads/unified/UnifiedVideoCallback;)V

    invoke-static {p1, p5, p3, p4, v0}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->requestMraid(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;)V

    return-void
.end method
