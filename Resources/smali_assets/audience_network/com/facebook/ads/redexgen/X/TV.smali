.class public final Lcom/facebook/ads/redexgen/X/TV;
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
    name = "BypassLineProcessor"
.end annotation


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/L1;

.field public final A02:Lcom/facebook/ads/redexgen/X/L1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/L1;ILcom/facebook/ads/redexgen/X/L1;)V
    .locals 0

    .line 54717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54718
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TV;->A01:Lcom/facebook/ads/redexgen/X/L1;

    .line 54719
    iput p2, p0, Lcom/facebook/ads/redexgen/X/TV;->A00:I

    .line 54720
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/TV;->A02:Lcom/facebook/ads/redexgen/X/L1;

    .line 54721
    return-void
.end method


# virtual methods
.method public final ADc(Ljava/lang/String;)V
    .locals 1

    .line 54722
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TV;->A00:I

    if-lez v0, :cond_0

    .line 54723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TV;->A01:Lcom/facebook/ads/redexgen/X/L1;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/L1;->ADc(Ljava/lang/String;)V

    .line 54724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TV;->A01:Lcom/facebook/ads/redexgen/X/L1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/L1;->flush()V

    .line 54725
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TV;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/TV;->A00:I

    .line 54726
    :goto_0
    return-void

    .line 54727
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TV;->A02:Lcom/facebook/ads/redexgen/X/L1;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/L1;->ADc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .line 54728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TV;->A02:Lcom/facebook/ads/redexgen/X/L1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/L1;->flush()V

    .line 54729
    return-void
.end method
