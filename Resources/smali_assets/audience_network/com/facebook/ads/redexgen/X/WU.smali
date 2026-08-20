.class public final Lcom/facebook/ads/redexgen/X/WU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Be;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unseekable"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/Bd;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 63642
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/WU;-><init>(JJ)V

    .line 63643
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3

    .line 63644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63645
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/WU;->A00:J

    .line 63646
    const-wide/16 v1, 0x0

    cmp-long v0, p3, v1

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Bf;->A03:Lcom/facebook/ads/redexgen/X/Bf;

    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Bd;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Bd;-><init>(Lcom/facebook/ads/redexgen/X/Bf;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/WU;->A01:Lcom/facebook/ads/redexgen/X/Bd;

    .line 63647
    return-void

    .line 63648
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bf;

    invoke-direct {v0, v1, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/Bf;-><init>(JJ)V

    goto :goto_0
.end method


# virtual methods
.method public final A6Y()J
    .locals 2

    .line 63649
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WU;->A00:J

    return-wide v0
.end method

.method public final A7a(J)Lcom/facebook/ads/redexgen/X/Bd;
    .locals 1

    .line 63650
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WU;->A01:Lcom/facebook/ads/redexgen/X/Bd;

    return-object v0
.end method

.method public final A8v()Z
    .locals 1

    .line 63651
    const/4 v0, 0x0

    return v0
.end method
