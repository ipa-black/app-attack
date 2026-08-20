.class public final Lcom/facebook/ads/redexgen/X/RL;
.super Lcom/facebook/ads/redexgen/X/4N;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/4N<",
        "Lcom/facebook/ads/redexgen/X/RJ;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A02:Lcom/facebook/ads/redexgen/X/Sa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/util/List;ILcom/facebook/ads/redexgen/X/Sa;)V
    .locals 0
    .param p4    # Lcom/facebook/ads/redexgen/X/Sa;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Xc;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/Sa;",
            ")V"
        }
    .end annotation

    .line 50599
    .local p2, "screenshotUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4N;-><init>()V

    .line 50600
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RL;->A03:Ljava/util/List;

    .line 50601
    iput p3, p0, Lcom/facebook/ads/redexgen/X/RL;->A00:I

    .line 50602
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RL;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    .line 50603
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/RL;->A02:Lcom/facebook/ads/redexgen/X/Sa;

    .line 50604
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/RL;)Lcom/facebook/ads/redexgen/X/Sa;
    .locals 0

    .line 50605
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RL;->A02:Lcom/facebook/ads/redexgen/X/Sa;

    return-object p0
.end method

.method private final A02(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RJ;
    .locals 2

    .line 50606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RL;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v1, Lcom/facebook/ads/redexgen/X/RK;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/RK;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 50607
    .local v0, "view":Lcom/facebook/ads/redexgen/X/RK;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RL;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A11(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50608
    new-instance v0, Lcom/facebook/ads/redexgen/X/P4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/P4;-><init>(Lcom/facebook/ads/redexgen/X/RL;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RK;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50609
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/RJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/RJ;-><init>(Lcom/facebook/ads/redexgen/X/RK;)V

    return-object v0
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/RJ;I)V
    .locals 5

    .line 50610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RL;->A03:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50611
    .local v0, "url":Ljava/lang/String;
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 50612
    .local v1, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/RL;->A00:I

    mul-int/lit8 v0, v2, 0x4

    .line 50613
    .local v3, "startSpacing":I
    if-nez p2, :cond_0

    move v2, v0

    .line 50614
    .local v2, "leftMargin":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RL;->A0D()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RL;->A00:I

    mul-int/lit8 v1, v0, 0x4

    .line 50615
    .local v4, "rightMargin":I
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 50616
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RJ;->A0l()Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/RK;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50617
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RJ;->A0l()Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/RK;->A00(Ljava/lang/String;)V

    .line 50618
    return-void

    .line 50619
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/RL;->A00:I

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A0C(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4r;
    .locals 1

    .line 50620
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RL;->A02(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RJ;

    move-result-object v0

    return-object v0
.end method

.method public final A0D()I
    .locals 1

    .line 50621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RL;->A03:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4r;I)V
    .locals 0

    .line 50622
    check-cast p1, Lcom/facebook/ads/redexgen/X/RJ;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RL;->A03(Lcom/facebook/ads/redexgen/X/RJ;I)V

    return-void
.end method
