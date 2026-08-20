.class public final Lcom/facebook/ads/redexgen/X/Nl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Nm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterstitialLayoutParamsBuilder"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Tp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/Li;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/JW;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A06:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/Zs;

.field public final A08:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A09:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A0A:Lcom/facebook/ads/redexgen/X/LD;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Lj;

.field public final A0C:Lcom/facebook/ads/redexgen/X/QA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Zs;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V
    .locals 1
    .param p5    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46622
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A01:I

    .line 46623
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A00:I

    .line 46624
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    .line 46625
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Nl;->A09:Lcom/facebook/ads/redexgen/X/Ia;

    .line 46626
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Nl;->A0B:Lcom/facebook/ads/redexgen/X/Lj;

    .line 46627
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Nl;->A07:Lcom/facebook/ads/redexgen/X/Zs;

    .line 46628
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Nl;->A06:Landroid/view/View;

    .line 46629
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Nl;->A0C:Lcom/facebook/ads/redexgen/X/QA;

    .line 46630
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Nl;->A0A:Lcom/facebook/ads/redexgen/X/LD;

    .line 46631
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Nl;)I
    .locals 0

    .line 46632
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Nl;)I
    .locals 0

    .line 46633
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A00:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Nl;)Landroid/view/View;
    .locals 0

    .line 46634
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A02:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Nl;)Landroid/view/View;
    .locals 0

    .line 46635
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A06:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Nl;)Lcom/facebook/ads/redexgen/X/Zs;
    .locals 0

    .line 46636
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A07:Lcom/facebook/ads/redexgen/X/Zs;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Nl;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 46637
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Nl;)Lcom/facebook/ads/redexgen/X/Ia;
    .locals 0

    .line 46638
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A09:Lcom/facebook/ads/redexgen/X/Ia;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Nl;)Lcom/facebook/ads/redexgen/X/Tp;
    .locals 0

    .line 46639
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A03:Lcom/facebook/ads/redexgen/X/Tp;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Nl;)Lcom/facebook/ads/redexgen/X/LD;
    .locals 0

    .line 46640
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A0A:Lcom/facebook/ads/redexgen/X/LD;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Nl;)Lcom/facebook/ads/redexgen/X/Li;
    .locals 0

    .line 46641
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A04:Lcom/facebook/ads/redexgen/X/Li;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Nl;)Lcom/facebook/ads/redexgen/X/Lj;
    .locals 0

    .line 46642
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A0B:Lcom/facebook/ads/redexgen/X/Lj;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Nl;)Lcom/facebook/ads/redexgen/X/JW;
    .locals 0

    .line 46643
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A05:Lcom/facebook/ads/redexgen/X/JW;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Nl;)Lcom/facebook/ads/redexgen/X/QA;
    .locals 0

    .line 46644
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A0C:Lcom/facebook/ads/redexgen/X/QA;

    return-object p0
.end method


# virtual methods
.method public final A0D(I)Lcom/facebook/ads/redexgen/X/Nl;
    .locals 0

    .line 46645
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A00:I

    .line 46646
    return-object p0
.end method

.method public final A0E(I)Lcom/facebook/ads/redexgen/X/Nl;
    .locals 0

    .line 46647
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A01:I

    .line 46648
    return-object p0
.end method

.method public final A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Nl;
    .locals 0

    .line 46649
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A02:Landroid/view/View;

    .line 46650
    return-object p0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Nl;
    .locals 0

    .line 46651
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A03:Lcom/facebook/ads/redexgen/X/Tp;

    .line 46652
    return-object p0
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/Li;)Lcom/facebook/ads/redexgen/X/Nl;
    .locals 0

    .line 46653
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A04:Lcom/facebook/ads/redexgen/X/Li;

    .line 46654
    return-object p0
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/Nl;
    .locals 0

    .line 46655
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A05:Lcom/facebook/ads/redexgen/X/JW;

    .line 46656
    return-object p0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/Nm;
    .locals 2

    .line 46657
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nm;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Nm;-><init>(Lcom/facebook/ads/redexgen/X/Nl;Lcom/facebook/ads/redexgen/X/Nk;)V

    return-object v0
.end method
