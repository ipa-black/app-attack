.class public final Lcom/facebook/ads/redexgen/X/Rc;
.super Lcom/facebook/ads/redexgen/X/4N;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/4N<",
        "Lcom/facebook/ads/redexgen/X/RW;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/Li;

.field public A04:Lcom/facebook/ads/redexgen/X/Lj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Ljava/lang/String;

.field public A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/On;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Landroid/util/SparseBooleanArray;

.field public final A08:Lcom/facebook/ads/redexgen/X/Zs;

.field public final A09:Lcom/facebook/ads/redexgen/X/6M;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A0C:Lcom/facebook/ads/redexgen/X/LD;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Rd;

.field public final A0E:Lcom/facebook/ads/redexgen/X/JW;

.field public final A0F:Lcom/facebook/ads/redexgen/X/QA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;Lcom/facebook/ads/redexgen/X/Lj;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Rd;Lcom/facebook/ads/redexgen/X/JW;Lcom/facebook/ads/redexgen/X/Li;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Xc;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/On;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Zs;",
            "Lcom/facebook/ads/redexgen/X/Ia;",
            "Lcom/facebook/ads/redexgen/X/6M;",
            "Lcom/facebook/ads/redexgen/X/QA;",
            "Lcom/facebook/ads/redexgen/X/LD;",
            "Lcom/facebook/ads/redexgen/X/Lj;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Rd;",
            "Lcom/facebook/ads/redexgen/X/JW;",
            "Lcom/facebook/ads/redexgen/X/Li;",
            ")V"
        }
    .end annotation

    .line 51004
    .local p2, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4N;-><init>()V

    .line 51005
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rc;->A07:Landroid/util/SparseBooleanArray;

    .line 51006
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 51007
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0B:Lcom/facebook/ads/redexgen/X/Ia;

    .line 51008
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Rc;->A09:Lcom/facebook/ads/redexgen/X/6M;

    .line 51009
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0F:Lcom/facebook/ads/redexgen/X/QA;

    .line 51010
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0C:Lcom/facebook/ads/redexgen/X/LD;

    .line 51011
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Rc;->A04:Lcom/facebook/ads/redexgen/X/Lj;

    .line 51012
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Rc;->A08:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51013
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rc;->A06:Ljava/util/List;

    .line 51014
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/Rc;->A05:Ljava/lang/String;

    .line 51015
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0D:Lcom/facebook/ads/redexgen/X/Rd;

    .line 51016
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0E:Lcom/facebook/ads/redexgen/X/JW;

    .line 51017
    iput-object p12, p0, Lcom/facebook/ads/redexgen/X/Rc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    .line 51018
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RW;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51019
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rc;->A04:Lcom/facebook/ads/redexgen/X/Lj;

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rc;->A00:I

    if-nez v0, :cond_1

    .line 51020
    .end local v0
    .end local v1
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 51021
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nl;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0B:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Rc;->A08:Lcom/facebook/ads/redexgen/X/Zs;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0F:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0C:Lcom/facebook/ads/redexgen/X/LD;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Nl;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Zs;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0E:Lcom/facebook/ads/redexgen/X/JW;

    .line 51022
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nl;->A0I(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/Nl;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    .line 51023
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nl;->A0H(Lcom/facebook/ads/redexgen/X/Li;)Lcom/facebook/ads/redexgen/X/Nl;

    move-result-object v0

    .line 51024
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nl;->A0J()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v2

    .line 51025
    .local v0, "params":Lcom/facebook/ads/redexgen/X/Nm;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rc;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0D:Lcom/facebook/ads/redexgen/X/Rd;

    .line 51026
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->A01(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Rd;)Lcom/facebook/ads/redexgen/X/9D;

    move-result-object v2

    .line 51027
    .local v1, "cardLayout":Lcom/facebook/ads/redexgen/X/9D;
    new-instance v1, Lcom/facebook/ads/redexgen/X/RW;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rc;->A07:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0F:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rc;->A06:Ljava/util/List;

    .line 51028
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/RW;-><init>(Lcom/facebook/ads/redexgen/X/9D;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QA;ILcom/facebook/ads/redexgen/X/Xc;)V

    .line 51029
    return-object v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/RW;I)V
    .locals 9

    .line 51030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rc;->A06:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/On;

    .line 51031
    .local v0, "cardInfo":Lcom/facebook/ads/redexgen/X/On;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0B:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rc;->A09:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rc;->A0C:Lcom/facebook/ads/redexgen/X/LD;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Rc;->A05:Ljava/lang/String;

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Rc;->A00:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/Rc;->A02:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/Rc;->A01:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/RW;->A0l(Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/LD;Ljava/lang/String;III)V

    .line 51032
    return-void
.end method


# virtual methods
.method public final bridge synthetic A0C(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4r;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51033
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rc;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RW;

    move-result-object v0

    return-object v0
.end method

.method public final A0D()I
    .locals 1

    .line 51034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rc;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4r;I)V
    .locals 0

    .line 51035
    check-cast p1, Lcom/facebook/ads/redexgen/X/RW;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rc;->A02(Lcom/facebook/ads/redexgen/X/RW;I)V

    return-void
.end method

.method public final A0F(III)V
    .locals 0

    .line 51036
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Rc;->A00:I

    .line 51037
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Rc;->A02:I

    .line 51038
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Rc;->A01:I

    .line 51039
    return-void
.end method
