.class public final Lcom/facebook/ads/redexgen/X/Oc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Oe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/1L;

.field public A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/1J;

.field public final A05:Lcom/facebook/ads/redexgen/X/1V;

.field public final A06:Lcom/facebook/ads/redexgen/X/Xc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1J;Lcom/facebook/ads/redexgen/X/1V;)V
    .locals 1

    .line 47740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47741
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1L;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oc;->A01:Lcom/facebook/ads/redexgen/X/1L;

    .line 47742
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Oc;->A00:I

    .line 47743
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oc;->A06:Lcom/facebook/ads/redexgen/X/Xc;

    .line 47744
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Oc;->A04:Lcom/facebook/ads/redexgen/X/1J;

    .line 47745
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Oc;->A05:Lcom/facebook/ads/redexgen/X/1V;

    .line 47746
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Oc;)I
    .locals 0

    .line 47747
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Oc;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Oc;)Lcom/facebook/ads/redexgen/X/1J;
    .locals 0

    .line 47748
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oc;->A04:Lcom/facebook/ads/redexgen/X/1J;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Oc;)Lcom/facebook/ads/redexgen/X/1L;
    .locals 0

    .line 47749
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oc;->A01:Lcom/facebook/ads/redexgen/X/1L;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Oc;)Lcom/facebook/ads/redexgen/X/1V;
    .locals 0

    .line 47750
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oc;->A05:Lcom/facebook/ads/redexgen/X/1V;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Oc;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 47751
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oc;->A06:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Oc;)Ljava/lang/String;
    .locals 0

    .line 47752
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oc;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Oc;)Ljava/lang/String;
    .locals 0

    .line 47753
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oc;->A02:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A07(I)Lcom/facebook/ads/redexgen/X/Oc;
    .locals 0

    .line 47754
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Oc;->A00:I

    .line 47755
    return-object p0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/1L;)Lcom/facebook/ads/redexgen/X/Oc;
    .locals 0

    .line 47756
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oc;->A01:Lcom/facebook/ads/redexgen/X/1L;

    .line 47757
    return-object p0
.end method

.method public final A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Oc;
    .locals 0

    .line 47758
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oc;->A02:Ljava/lang/String;

    .line 47759
    return-object p0
.end method

.method public final A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Oc;
    .locals 0

    .line 47760
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oc;->A03:Ljava/lang/String;

    .line 47761
    return-object p0
.end method

.method public final A0B()Lcom/facebook/ads/redexgen/X/Oe;
    .locals 2

    .line 47762
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Lcom/facebook/ads/redexgen/X/Oc;Lcom/facebook/ads/redexgen/X/Rl;)V

    return-object v0
.end method
