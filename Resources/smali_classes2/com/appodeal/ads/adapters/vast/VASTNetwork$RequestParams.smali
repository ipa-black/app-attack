.class public Lcom/appodeal/ads/adapters/vast/VASTNetwork$RequestParams;
.super Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/vast/VASTNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestParams"
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/RestrictedData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;-><init>(Lcom/appodeal/ads/RestrictedData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)V

    return-void
.end method
