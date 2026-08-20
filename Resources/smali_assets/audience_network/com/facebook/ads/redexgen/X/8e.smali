.class public final Lcom/facebook/ads/redexgen/X/8e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/8d;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/8d;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8d;III)V
    .locals 0

    .line 19081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19082
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8e;->A03:Lcom/facebook/ads/redexgen/X/8d;

    .line 19083
    iput p2, p0, Lcom/facebook/ads/redexgen/X/8e;->A01:I

    .line 19084
    iput p3, p0, Lcom/facebook/ads/redexgen/X/8e;->A00:I

    .line 19085
    iput p4, p0, Lcom/facebook/ads/redexgen/X/8e;->A02:I

    .line 19086
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 19087
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8e;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 19088
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8e;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 19089
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8e;->A02:I

    return v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/8d;
    .locals 1

    .line 19090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8e;->A03:Lcom/facebook/ads/redexgen/X/8d;

    return-object v0
.end method
