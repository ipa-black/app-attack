.class abstract Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedCallbackType:",
        "Lcom/appodeal/ads/unified/UnifiedAdCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final callback:Lcom/appodeal/ads/unified/UnifiedAdCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedCallbackType;"
        }
    .end annotation
.end field

.field public clickHandler:Lcom/appodeal/ads/utils/q;

.field public final mraidParams:Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnifiedCallbackType;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appodeal/ads/utils/q;

    invoke-direct {v0}, Lcom/appodeal/ads/utils/q;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;->clickHandler:Lcom/appodeal/ads/utils/q;

    iput-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;->callback:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    iput-object p2, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;->mraidParams:Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;

    return-void
.end method


# virtual methods
.method public handleBrowserOpen(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/utils/IabClickCallback;)V
    .locals 7

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;->clickHandler:Lcom/appodeal/ads/utils/q;

    iget-object v1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;->mraidParams:Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;

    iget-object v3, v1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->packageName:Ljava/lang/String;

    iget-wide v4, v1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->expiryTime:J

    new-instance v6, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener$1;

    invoke-direct {v6, p0, p3}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener$1;-><init>(Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;Lcom/explorestack/iab/utils/IabClickCallback;)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/appodeal/ads/utils/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/appodeal/ads/utils/q$b;)V

    return-void
.end method
