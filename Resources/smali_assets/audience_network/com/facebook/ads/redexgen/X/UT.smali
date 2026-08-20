.class public final Lcom/facebook/ads/redexgen/X/UT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GW;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/GU;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/GW;

.field public final A03:Lcom/facebook/ads/redexgen/X/GW;

.field public final A04:Lcom/facebook/ads/redexgen/X/Gx;

.field public final A05:Lcom/facebook/ads/redexgen/X/Gz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/GU;ILcom/facebook/ads/redexgen/X/Gz;)V
    .locals 0

    .line 57091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57092
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UT;->A04:Lcom/facebook/ads/redexgen/X/Gx;

    .line 57093
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/UT;->A03:Lcom/facebook/ads/redexgen/X/GW;

    .line 57094
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Lcom/facebook/ads/redexgen/X/GW;

    .line 57095
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/UT;->A01:Lcom/facebook/ads/redexgen/X/GU;

    .line 57096
    iput p5, p0, Lcom/facebook/ads/redexgen/X/UT;->A00:I

    .line 57097
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/UT;->A05:Lcom/facebook/ads/redexgen/X/Gz;

    .line 57098
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/UU;
    .locals 8

    .line 57099
    new-instance v1, Lcom/facebook/ads/redexgen/X/UU;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UT;->A04:Lcom/facebook/ads/redexgen/X/Gx;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A03:Lcom/facebook/ads/redexgen/X/GW;

    .line 57100
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GW;->A4H()Lcom/facebook/ads/redexgen/X/GX;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Lcom/facebook/ads/redexgen/X/GW;

    .line 57101
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GW;->A4H()Lcom/facebook/ads/redexgen/X/GX;

    move-result-object v4

    .line 57102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A01:Lcom/facebook/ads/redexgen/X/GU;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GU;->createDataSink()Lcom/facebook/ads/redexgen/X/GV;

    move-result-object v5

    :goto_0
    iget v6, p0, Lcom/facebook/ads/redexgen/X/UT;->A00:I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/UT;->A05:Lcom/facebook/ads/redexgen/X/Gz;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/UU;-><init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/GX;Lcom/facebook/ads/redexgen/X/GX;Lcom/facebook/ads/redexgen/X/GV;ILcom/facebook/ads/redexgen/X/Gz;)V

    .line 57103
    return-object v1

    .line 57104
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A4H()Lcom/facebook/ads/redexgen/X/GX;
    .locals 1

    .line 57105
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UT;->A00()Lcom/facebook/ads/redexgen/X/UU;

    move-result-object v0

    return-object v0
.end method
