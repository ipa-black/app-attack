.class public final Lcom/facebook/ads/redexgen/X/6u;
.super Lcom/facebook/ads/redexgen/X/M8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jx;)V
    .locals 0

    .line 16118
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6u;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M8;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/6y;)V
    .locals 3

    .line 16119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6u;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A08(Lcom/facebook/ads/redexgen/X/Jx;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6u;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A05:Lcom/facebook/ads/redexgen/X/Pg;

    .line 16120
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A0A(Lcom/facebook/ads/redexgen/X/Jx;Lcom/facebook/ads/redexgen/X/Pg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6u;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A04(Lcom/facebook/ads/redexgen/X/Jx;)V

    .line 16122
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6u;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A05(Lcom/facebook/ads/redexgen/X/Jx;ZZ)V

    .line 16123
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 16124
    check-cast p1, Lcom/facebook/ads/redexgen/X/6y;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6u;->A00(Lcom/facebook/ads/redexgen/X/6y;)V

    return-void
.end method
