.class public final Lcom/facebook/ads/redexgen/X/3G;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/ads/redexgen/X/3K;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3K;Lcom/facebook/ads/redexgen/X/3K;)I
    .locals 2

    .line 8317
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3K;->A02:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/3K;->A02:I

    sub-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 8318
    check-cast p1, Lcom/facebook/ads/redexgen/X/3K;

    check-cast p2, Lcom/facebook/ads/redexgen/X/3K;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/3G;->A00(Lcom/facebook/ads/redexgen/X/3K;Lcom/facebook/ads/redexgen/X/3K;)I

    move-result v0

    return v0
.end method
