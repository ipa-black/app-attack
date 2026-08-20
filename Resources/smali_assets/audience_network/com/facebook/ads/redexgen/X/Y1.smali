.class public final Lcom/facebook/ads/redexgen/X/Y1;
.super Lcom/facebook/ads/redexgen/X/Jo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Y0;->A00()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Y0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Y0;)V
    .locals 0

    .line 67220
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y1;->A00:Lcom/facebook/ads/redexgen/X/Y0;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 1

    .line 67221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y1;->A00:Lcom/facebook/ads/redexgen/X/Y0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Y0;->A01:Lcom/facebook/ads/redexgen/X/Xz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xz;->A00(Lcom/facebook/ads/redexgen/X/Xz;)Lcom/facebook/ads/redexgen/X/5W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5W;->A00()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y1;->A00:Lcom/facebook/ads/redexgen/X/Y0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Y0;->A01:Lcom/facebook/ads/redexgen/X/Xz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xz;->A00(Lcom/facebook/ads/redexgen/X/Xz;)Lcom/facebook/ads/redexgen/X/5W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5W;->A00()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdsManager$Listener;->onAdsLoaded()V

    .line 67223
    :cond_0
    return-void
.end method
