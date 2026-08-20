.class public final Lcom/facebook/ads/redexgen/X/Tn;
.super Lcom/facebook/ads/redexgen/X/Jo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ah;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ah;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/JA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ah;Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 0

    .line 54913
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/Ah;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/JA;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 3

    .line 54914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/Ah;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ah;->A01:Lcom/facebook/ads/NativeAdListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/Ah;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/NativeAdBase;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/JA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KW;->A00(Lcom/facebook/ads/redexgen/X/JA;)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/NativeAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 54915
    return-void
.end method
