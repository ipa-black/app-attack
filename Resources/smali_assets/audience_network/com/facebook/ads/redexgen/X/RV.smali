.class public final Lcom/facebook/ads/redexgen/X/RV;
.super Lcom/facebook/ads/redexgen/X/4N;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/4N<",
        "Lcom/facebook/ads/redexgen/X/RM;",
        ">;"
    }
.end annotation


# static fields
.field public static A0H:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/Li;

.field public A05:Lcom/facebook/ads/redexgen/X/Lj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Ljava/lang/String;

.field public A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/On;",
            ">;"
        }
    .end annotation
.end field

.field public A08:Z

.field public final A09:Landroid/util/SparseBooleanArray;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Zs;

.field public final A0B:Lcom/facebook/ads/redexgen/X/6M;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A0E:Lcom/facebook/ads/redexgen/X/LD;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Rd;

.field public final A0G:Lcom/facebook/ads/redexgen/X/QA;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 50874
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "U2dBX20JaeRgS8KUkn4U"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4wbYdEjd6EY1wYpAHERmBQ5UbLFk3rIE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "poCzv8x7tLJqIV5ZIWq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9iyDRDGf0xWQ70I4mtfqA0IQycZfZ47C"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "v2glKkwlOEfR0MfsI3TqmdNecXONmhZ3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6XdF3RdtkhprEZiVEVCq65KOMzsBziM7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2OiOSmaAlP7OTnmHwLOjTjXlL7jeDPuL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nkMLdycTxYcJ5galJfvG8bjM9rVBse8i"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RV;->A0H:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;Lcom/facebook/ads/redexgen/X/Lj;Ljava/lang/String;IIIILcom/facebook/ads/redexgen/X/Rd;Lcom/facebook/ads/redexgen/X/Li;)V
    .locals 2
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
            "IIII",
            "Lcom/facebook/ads/redexgen/X/Rd;",
            "Lcom/facebook/ads/redexgen/X/Li;",
            ")V"
        }
    .end annotation

    .line 50875
    .local p16, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    move-object v1, p0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4N;-><init>()V

    .line 50876
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/RV;->A09:Landroid/util/SparseBooleanArray;

    .line 50877
    iput-object p1, v1, Lcom/facebook/ads/redexgen/X/RV;->A0C:Lcom/facebook/ads/redexgen/X/Xc;

    .line 50878
    iput-object p4, v1, Lcom/facebook/ads/redexgen/X/RV;->A0D:Lcom/facebook/ads/redexgen/X/Ia;

    .line 50879
    iput-object p5, v1, Lcom/facebook/ads/redexgen/X/RV;->A0B:Lcom/facebook/ads/redexgen/X/6M;

    .line 50880
    iput-object p6, v1, Lcom/facebook/ads/redexgen/X/RV;->A0G:Lcom/facebook/ads/redexgen/X/QA;

    .line 50881
    iput-object p7, v1, Lcom/facebook/ads/redexgen/X/RV;->A0E:Lcom/facebook/ads/redexgen/X/LD;

    .line 50882
    iput-object p8, v1, Lcom/facebook/ads/redexgen/X/RV;->A05:Lcom/facebook/ads/redexgen/X/Lj;

    .line 50883
    iput-object p3, v1, Lcom/facebook/ads/redexgen/X/RV;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 50884
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/RV;->A07:Ljava/util/List;

    .line 50885
    iput p10, v1, Lcom/facebook/ads/redexgen/X/RV;->A00:I

    .line 50886
    iput p13, v1, Lcom/facebook/ads/redexgen/X/RV;->A03:I

    .line 50887
    iput-object p9, v1, Lcom/facebook/ads/redexgen/X/RV;->A06:Ljava/lang/String;

    .line 50888
    iput p12, v1, Lcom/facebook/ads/redexgen/X/RV;->A01:I

    .line 50889
    iput p11, v1, Lcom/facebook/ads/redexgen/X/RV;->A02:I

    .line 50890
    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/RV;->A0F:Lcom/facebook/ads/redexgen/X/Rd;

    .line 50891
    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/RV;->A04:Lcom/facebook/ads/redexgen/X/Li;

    .line 50892
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RM;
    .locals 10

    .line 50893
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nl;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RV;->A0C:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RV;->A0D:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RV;->A05:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/RV;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/RV;->A0G:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/RV;->A0E:Lcom/facebook/ads/redexgen/X/LD;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Nl;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Zs;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A04:Lcom/facebook/ads/redexgen/X/Li;

    .line 50894
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nl;->A0H(Lcom/facebook/ads/redexgen/X/Li;)Lcom/facebook/ads/redexgen/X/Nl;

    move-result-object v0

    .line 50895
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nl;->A0J()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v3

    .line 50896
    .local v0, "params":Lcom/facebook/ads/redexgen/X/Nm;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/RV;->A03:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RV;->A06:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A0F:Lcom/facebook/ads/redexgen/X/Rd;

    .line 50897
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O8;->A00(Lcom/facebook/ads/redexgen/X/Nm;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/Rd;)Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v2

    .line 50898
    .local v1, "cardLayout":Lcom/facebook/ads/redexgen/X/8x;
    new-instance v1, Lcom/facebook/ads/redexgen/X/RM;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RV;->A09:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RV;->A0G:Lcom/facebook/ads/redexgen/X/QA;

    iget v5, p0, Lcom/facebook/ads/redexgen/X/RV;->A00:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/RV;->A01:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/RV;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A07:Ljava/util/List;

    .line 50899
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/RV;->A0C:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/RM;-><init>(Lcom/facebook/ads/redexgen/X/8x;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QA;IIIILcom/facebook/ads/redexgen/X/Xc;)V

    .line 50900
    return-object v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/RM;I)V
    .locals 7

    .line 50901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A07:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/On;

    .line 50902
    .local v0, "cardInfo":Lcom/facebook/ads/redexgen/X/On;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RV;->A0D:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RV;->A0B:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/RV;->A0E:Lcom/facebook/ads/redexgen/X/LD;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/RV;->A06:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/RM;->A0l(Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/LD;Ljava/lang/String;)V

    .line 50903
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A08:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 50904
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RM;->AEn()V

    .line 50905
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/RV;->A0H:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/RV;->A0H:[Ljava/lang/String;

    const-string v1, "f5MkbcX2dFxcVTBDK6f4VKhLC7wzzoeI"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/RV;->A08:Z

    .line 50906
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic A0C(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4r;
    .locals 1

    .line 50907
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RV;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RM;

    move-result-object v0

    return-object v0
.end method

.method public final A0D()I
    .locals 1

    .line 50908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RV;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4r;I)V
    .locals 0

    .line 50909
    check-cast p1, Lcom/facebook/ads/redexgen/X/RM;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RV;->A02(Lcom/facebook/ads/redexgen/X/RM;I)V

    return-void
.end method
