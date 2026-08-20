.class public final Lcom/facebook/ads/redexgen/X/G3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/G4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StyleMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/G3;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Fz;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Fz;)V
    .locals 0

    .line 34719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34720
    iput p1, p0, Lcom/facebook/ads/redexgen/X/G3;->A00:I

    .line 34721
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/G3;->A01:Lcom/facebook/ads/redexgen/X/Fz;

    .line 34722
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/G3;)I
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/G3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34723
    iget v1, p0, Lcom/facebook/ads/redexgen/X/G3;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/G3;->A00:I

    sub-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34724
    check-cast p1, Lcom/facebook/ads/redexgen/X/G3;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/G3;->A00(Lcom/facebook/ads/redexgen/X/G3;)I

    move-result v0

    return v0
.end method
