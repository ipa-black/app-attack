.class public final Lcom/facebook/ads/redexgen/X/YE;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Y6;->A0M(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Y6;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Tp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Y6;Lcom/facebook/ads/redexgen/X/Tp;)V
    .locals 0

    .line 67746
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YE;->A00:Lcom/facebook/ads/redexgen/X/Y6;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/YE;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 67747
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YE;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1c(ZZ)V

    .line 67748
    return-void
.end method
