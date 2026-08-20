.class public final Lcom/facebook/ads/redexgen/X/5N;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/InitApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 1
    .param p2    # Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/AudienceNetworkAds$InitListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14141
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5M;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    .line 14142
    invoke-static {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/8G;->A0G(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 14143
    return-void
.end method

.method public final isInitialized()Z
    .locals 1

    .line 14144
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8G;->A0H()Z

    move-result v0

    return v0
.end method

.method public final onAdLoadInvoked(Landroid/content/Context;)V
    .locals 1

    .line 14145
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5M;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8G;->A08(Lcom/facebook/ads/redexgen/X/Xb;)V

    .line 14146
    return-void
.end method

.method public final onContentProviderCreated(Landroid/content/Context;)V
    .locals 1

    .line 14147
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5M;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8G;->A09(Lcom/facebook/ads/redexgen/X/Xb;)V

    .line 14148
    return-void
.end method
