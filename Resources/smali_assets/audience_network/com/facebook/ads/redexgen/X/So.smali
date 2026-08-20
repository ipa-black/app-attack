.class public final Lcom/facebook/ads/redexgen/X/So;
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

.field public A03:Lcom/facebook/ads/redexgen/X/Lj;

.field public A04:Lcom/facebook/ads/redexgen/X/QA;

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

.field public final A0C:Lcom/facebook/ads/redexgen/X/Tp;

.field public final A0D:Lcom/facebook/ads/redexgen/X/LD;

.field public final A0E:Lcom/facebook/ads/redexgen/X/9g;

.field public final A0F:Lcom/facebook/ads/redexgen/X/JW;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Tp;Lcom/facebook/ads/redexgen/X/Lj;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9g;Lcom/facebook/ads/redexgen/X/JW;)V
    .locals 1
    .param p9    # Lcom/facebook/ads/redexgen/X/JW;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Xc;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/On;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Zs;",
            "Lcom/facebook/ads/redexgen/X/Ia;",
            "Lcom/facebook/ads/redexgen/X/Tp;",
            "Lcom/facebook/ads/redexgen/X/Lj;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/9g;",
            "Lcom/facebook/ads/redexgen/X/JW;",
            ")V"
        }
    .end annotation

    .line 53074
    .local p2, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4N;-><init>()V

    .line 53075
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A07:Landroid/util/SparseBooleanArray;

    .line 53076
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/So;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 53077
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/So;->A0B:Lcom/facebook/ads/redexgen/X/Ia;

    .line 53078
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/So;->A0C:Lcom/facebook/ads/redexgen/X/Tp;

    .line 53079
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/Tp;->A10()Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A09:Lcom/facebook/ads/redexgen/X/6M;

    .line 53080
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/Tp;->A1A()Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A04:Lcom/facebook/ads/redexgen/X/QA;

    .line 53081
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/Tp;->A19()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A0D:Lcom/facebook/ads/redexgen/X/LD;

    .line 53082
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/So;->A03:Lcom/facebook/ads/redexgen/X/Lj;

    .line 53083
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/So;->A08:Lcom/facebook/ads/redexgen/X/Zs;

    .line 53084
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/So;->A06:Ljava/util/List;

    .line 53085
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/So;->A05:Ljava/lang/String;

    .line 53086
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/So;->A0E:Lcom/facebook/ads/redexgen/X/9g;

    .line 53087
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/So;->A0F:Lcom/facebook/ads/redexgen/X/JW;

    .line 53088
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RW;
    .locals 9

    .line 53089
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nl;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/So;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/So;->A0B:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/So;->A03:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/So;->A08:Lcom/facebook/ads/redexgen/X/Zs;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/So;->A04:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/So;->A0D:Lcom/facebook/ads/redexgen/X/LD;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Nl;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Zs;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A0F:Lcom/facebook/ads/redexgen/X/JW;

    .line 53090
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nl;->A0I(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/Nl;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A0C:Lcom/facebook/ads/redexgen/X/Tp;

    .line 53091
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nl;->A0G(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Nl;

    move-result-object v0

    .line 53092
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nl;->A0J()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v3

    .line 53093
    .local v0, "params":Lcom/facebook/ads/redexgen/X/Nm;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/So;->A0C:Lcom/facebook/ads/redexgen/X/Tp;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A0E:Lcom/facebook/ads/redexgen/X/9g;

    .line 53094
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->A00(Lcom/facebook/ads/redexgen/X/Nm;Lcom/facebook/ads/redexgen/X/Tp;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9g;)Lcom/facebook/ads/redexgen/X/2L;

    move-result-object v2

    .line 53095
    .local v1, "cardLayout":Lcom/facebook/ads/redexgen/X/2L;
    new-instance v1, Lcom/facebook/ads/redexgen/X/RW;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/So;->A07:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/So;->A04:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A06:Ljava/util/List;

    .line 53096
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/So;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/RW;-><init>(Lcom/facebook/ads/redexgen/X/9D;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QA;ILcom/facebook/ads/redexgen/X/Xc;)V

    .line 53097
    return-object v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/RW;I)V
    .locals 10

    .line 53098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A06:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/On;

    .line 53099
    .local v0, "cardInfo":Lcom/facebook/ads/redexgen/X/On;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A04:Lcom/facebook/ads/redexgen/X/QA;

    move-object v1, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RW;->A0m(Lcom/facebook/ads/redexgen/X/QA;)V

    .line 53100
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/So;->A0B:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/So;->A09:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/So;->A0D:Lcom/facebook/ads/redexgen/X/LD;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/So;->A05:Ljava/lang/String;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/So;->A00:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/So;->A02:I

    iget v9, p0, Lcom/facebook/ads/redexgen/X/So;->A01:I

    invoke-virtual/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/RW;->A0l(Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/LD;Ljava/lang/String;III)V

    .line 53101
    return-void
.end method


# virtual methods
.method public final bridge synthetic A0C(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4r;
    .locals 1

    .line 53102
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/So;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RW;

    move-result-object v0

    return-object v0
.end method

.method public final A0D()I
    .locals 1

    .line 53103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4r;I)V
    .locals 0

    .line 53104
    check-cast p1, Lcom/facebook/ads/redexgen/X/RW;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/So;->A02(Lcom/facebook/ads/redexgen/X/RW;I)V

    return-void
.end method

.method public final A0F(III)V
    .locals 1

    .line 53105
    iget v0, p0, Lcom/facebook/ads/redexgen/X/So;->A00:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    .line 53106
    .local v0, "needsUpdate":Z
    :goto_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/So;->A00:I

    .line 53107
    iput p2, p0, Lcom/facebook/ads/redexgen/X/So;->A02:I

    .line 53108
    iput p3, p0, Lcom/facebook/ads/redexgen/X/So;->A01:I

    .line 53109
    if-eqz v0, :cond_0

    .line 53110
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4N;->A06()V

    .line 53111
    :cond_0
    return-void

    .line 53112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/QA;)V
    .locals 0

    .line 53113
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/So;->A04:Lcom/facebook/ads/redexgen/X/QA;

    .line 53114
    return-void
.end method
