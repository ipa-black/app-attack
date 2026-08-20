.class public final Lcom/facebook/ads/redexgen/X/TS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/L1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/L3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitLineProcessor"
.end annotation


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/L1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/L1;I)V
    .locals 0

    .line 54673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54674
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TS;->A01:Lcom/facebook/ads/redexgen/X/L1;

    .line 54675
    iput p2, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:I

    .line 54676
    return-void
.end method


# virtual methods
.method public final ADc(Ljava/lang/String;)V
    .locals 1

    .line 54677
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:I

    if-lez v0, :cond_0

    .line 54678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A01:Lcom/facebook/ads/redexgen/X/L1;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/L1;->ADc(Ljava/lang/String;)V

    .line 54679
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:I

    .line 54680
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 54681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A01:Lcom/facebook/ads/redexgen/X/L1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/L1;->flush()V

    .line 54682
    return-void
.end method
