.class public final Lcom/facebook/ads/redexgen/X/Y2;
.super Lcom/facebook/ads/redexgen/X/Jo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xz;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xz;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/JA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xz;Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 0

    .line 67224
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xz;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Y2;->A01:Lcom/facebook/ads/redexgen/X/JA;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 67225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xz;->A00(Lcom/facebook/ads/redexgen/X/Xz;)Lcom/facebook/ads/redexgen/X/5W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5W;->A00()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xz;->A00(Lcom/facebook/ads/redexgen/X/Xz;)Lcom/facebook/ads/redexgen/X/5W;

    move-result-object v0

    .line 67227
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5W;->A00()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y2;->A01:Lcom/facebook/ads/redexgen/X/JA;

    .line 67228
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KW;->A00(Lcom/facebook/ads/redexgen/X/JA;)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdsManager$Listener;->onAdError(Lcom/facebook/ads/AdError;)V

    .line 67229
    :cond_0
    return-void
.end method
