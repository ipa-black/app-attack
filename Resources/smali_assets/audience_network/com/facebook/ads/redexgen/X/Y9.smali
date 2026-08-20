.class public final Lcom/facebook/ads/redexgen/X/Y9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/N9;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Y6;->A0L(Lcom/facebook/ads/NativeAd;)V
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

    .line 67718
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y9;->A00:Lcom/facebook/ads/redexgen/X/Y6;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABA(Z)V
    .locals 2

    .line 67719
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1c(ZZ)V

    .line 67720
    return-void
.end method
