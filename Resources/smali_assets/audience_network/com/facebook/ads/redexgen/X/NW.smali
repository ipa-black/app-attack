.class public final Lcom/facebook/ads/redexgen/X/NW;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A06:I


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A05:[Lcom/facebook/ads/redexgen/X/NX;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 46092
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/NW;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;IIII)V
    .locals 3

    .line 46093
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46094
    sget v0, Lcom/facebook/ads/redexgen/X/NW;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/NW;->A00:I

    .line 46095
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NW;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 46096
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NW;->setOrientation(I)V

    .line 46097
    iput p2, p0, Lcom/facebook/ads/redexgen/X/NW;->A03:I

    .line 46098
    iput p4, p0, Lcom/facebook/ads/redexgen/X/NW;->A01:I

    .line 46099
    iput p5, p0, Lcom/facebook/ads/redexgen/X/NW;->A02:I

    .line 46100
    new-array v0, p3, [Lcom/facebook/ads/redexgen/X/NX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NW;->A05:[Lcom/facebook/ads/redexgen/X/NX;

    .line 46101
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 46102
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NW;->A05:[Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NW;->A00()Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    aput-object v0, v1, v2

    .line 46103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NW;->A05:[Lcom/facebook/ads/redexgen/X/NX;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NW;->addView(Landroid/view/View;)V

    .line 46104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46105
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NW;->A01()V

    .line 46106
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/NX;
    .locals 4

    .line 46107
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NW;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/NW;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/NW;->A02:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NX;-><init>(Lcom/facebook/ads/redexgen/X/Xc;II)V

    .line 46108
    .local v0, "starRatingView":Lcom/facebook/ads/redexgen/X/NX;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/NW;->A03:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46109
    .local v1, "starRatingViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 46110
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/NX;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46111
    return-object v2
.end method

.method private A01()V
    .locals 3

    .line 46112
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NW;->A05:[Lcom/facebook/ads/redexgen/X/NX;

    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 46113
    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 46114
    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 46115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46116
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/NW;->A00:I

    goto :goto_1

    .line 46117
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NW;->requestLayout()V

    .line 46118
    return-void
.end method

.method private A02(F)V
    .locals 3

    .line 46119
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NW;->A05:[Lcom/facebook/ads/redexgen/X/NX;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 46120
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v0, v2

    sub-float v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 46121
    .local v1, "fillRatio":F
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 46122
    const/4 v1, 0x0

    .line 46123
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NW;->A05:[Lcom/facebook/ads/redexgen/X/NX;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/NX;->setFillRatio(F)V

    .line 46124
    .end local v1    # "fillRatio":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46125
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public setItemSpacing(I)V
    .locals 0

    .line 46126
    iput p1, p0, Lcom/facebook/ads/redexgen/X/NW;->A00:I

    .line 46127
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NW;->A01()V

    .line 46128
    return-void
.end method

.method public setRating(F)V
    .locals 0

    .line 46129
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NW;->A02(F)V

    .line 46130
    return-void
.end method
