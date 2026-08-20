.class public final Lcom/facebook/ads/redexgen/X/8y;
.super Lcom/facebook/ads/redexgen/X/M9;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8x;)V
    .locals 0

    .line 19880
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8y;->A00:Lcom/facebook/ads/redexgen/X/8x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/MK;)V
    .locals 2

    .line 19881
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8y;->A00:Lcom/facebook/ads/redexgen/X/8x;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/8x;->A06(Lcom/facebook/ads/redexgen/X/8x;Z)Z

    .line 19882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8y;->A00:Lcom/facebook/ads/redexgen/X/8x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8x;->A05(Lcom/facebook/ads/redexgen/X/8x;)V

    .line 19883
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 19884
    check-cast p1, Lcom/facebook/ads/redexgen/X/MK;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8y;->A00(Lcom/facebook/ads/redexgen/X/MK;)V

    return-void
.end method
