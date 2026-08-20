.class public final Lcom/facebook/ads/redexgen/X/av;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewProperties"
.end annotation


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/az;

.field public final A02:Landroid/graphics/Rect;

.field public final A03:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A03:Ljava/util/List;

    .line 73147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Landroid/graphics/Rect;

    .line 73148
    sget-object v0, Lcom/facebook/ads/redexgen/X/az;->A02:Lcom/facebook/ads/redexgen/X/az;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A01:Lcom/facebook/ads/redexgen/X/az;

    .line 73149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/av;->A00:J

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/av;)Landroid/graphics/Rect;
    .locals 0

    .line 73150
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/av;)Lcom/facebook/ads/redexgen/X/az;
    .locals 0

    .line 73151
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/av;->A01:Lcom/facebook/ads/redexgen/X/az;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/av;Lcom/facebook/ads/redexgen/X/az;)Lcom/facebook/ads/redexgen/X/az;
    .locals 0

    .line 73152
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/av;->A01:Lcom/facebook/ads/redexgen/X/az;

    return-object p1
.end method

.method public static A03(J)Lcom/facebook/ads/redexgen/X/av;
    .locals 1

    .line 73153
    new-instance v0, Lcom/facebook/ads/redexgen/X/av;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/av;-><init>()V

    .line 73154
    .local v0, "viewProperties":Lcom/facebook/ads/redexgen/X/av;
    iput-wide p0, v0, Lcom/facebook/ads/redexgen/X/av;->A00:J

    .line 73155
    return-object v0
.end method

.method public static synthetic A04(J)Lcom/facebook/ads/redexgen/X/av;
    .locals 0

    .line 73156
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/av;->A03(J)Lcom/facebook/ads/redexgen/X/av;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/av;)Ljava/util/List;
    .locals 0

    .line 73157
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/av;->A03:Ljava/util/List;

    return-object p0
.end method
