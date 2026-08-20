.class public final Lcom/facebook/ads/redexgen/X/VC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/BY;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/GW;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GW;)V
    .locals 1

    .line 58490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58491
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VC;->A06:Lcom/facebook/ads/redexgen/X/GW;

    .line 58492
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VC;->A01:I

    .line 58493
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VC;->A00:I

    .line 58494
    return-void
.end method


# virtual methods
.method public final A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/VC;
    .locals 1

    .line 58495
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VC;->A05:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 58496
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VC;->A04:Ljava/lang/String;

    .line 58497
    return-object p0
.end method

.method public final A01(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/BO;
    .locals 9

    .line 58498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VC;->A05:Z

    .line 58499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VC;->A02:Lcom/facebook/ads/redexgen/X/BY;

    if-nez v0, :cond_0

    .line 58500
    new-instance v0, Lcom/facebook/ads/redexgen/X/WX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WX;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VC;->A02:Lcom/facebook/ads/redexgen/X/BY;

    .line 58501
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/BO;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VC;->A06:Lcom/facebook/ads/redexgen/X/GW;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VC;->A02:Lcom/facebook/ads/redexgen/X/BY;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/VC;->A01:I

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/VC;->A04:Ljava/lang/String;

    iget v6, p0, Lcom/facebook/ads/redexgen/X/VC;->A00:I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/VC;->A03:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/BO;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/BY;ILjava/lang/String;ILjava/lang/Object;Lcom/facebook/ads/redexgen/X/EP;)V

    return-object v0
.end method
