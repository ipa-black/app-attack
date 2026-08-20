.class public final Lcom/facebook/ads/redexgen/X/Op;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final A08:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/AA;

.field public A01:Lcom/facebook/ads/redexgen/X/PB;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/75;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Jn;

.field public A04:Lcom/facebook/ads/redexgen/X/6g;

.field public A05:Lcom/facebook/ads/redexgen/X/6G;

.field public final A06:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A07:Lcom/facebook/ads/redexgen/X/Ii;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47937
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Op;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ii;)V
    .locals 0

    .line 47938
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47939
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Op;->A07:Lcom/facebook/ads/redexgen/X/Ii;

    .line 47940
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Op;->A06:Lcom/facebook/ads/redexgen/X/Xc;

    .line 47941
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Op;->setUpView(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 47942
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Op;)Lcom/facebook/ads/redexgen/X/6G;
    .locals 0

    .line 47943
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Op;->A05:Lcom/facebook/ads/redexgen/X/6G;

    return-object p0
.end method

.method private setUpPlugins(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 5

    .line 47968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->A0X()V

    .line 47969
    new-instance v0, Lcom/facebook/ads/redexgen/X/6g;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/6g;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A04:Lcom/facebook/ads/redexgen/X/6g;

    .line 47970
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A04:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0c(Lcom/facebook/ads/redexgen/X/PL;)V

    .line 47971
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Op;->A07:Lcom/facebook/ads/redexgen/X/Ii;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jn;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Jn;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ii;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A03:Lcom/facebook/ads/redexgen/X/Jn;

    .line 47972
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6o;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/6o;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0c(Lcom/facebook/ads/redexgen/X/PL;)V

    .line 47973
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A03:Lcom/facebook/ads/redexgen/X/Jn;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0c(Lcom/facebook/ads/redexgen/X/PL;)V

    .line 47974
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Op;->A07:Lcom/facebook/ads/redexgen/X/Ii;

    const/4 v4, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6G;

    invoke-direct {v0, p1, v4, v1}, Lcom/facebook/ads/redexgen/X/6G;-><init>(Lcom/facebook/ads/redexgen/X/Xc;ZLcom/facebook/ads/redexgen/X/Ii;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A05:Lcom/facebook/ads/redexgen/X/6G;

    .line 47975
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A05:Lcom/facebook/ads/redexgen/X/6G;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0c(Lcom/facebook/ads/redexgen/X/PL;)V

    .line 47976
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Op;->A05:Lcom/facebook/ads/redexgen/X/6G;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PX;->A03:Lcom/facebook/ads/redexgen/X/PX;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jq;

    invoke-direct {v0, v2, v1, v4, v4}, Lcom/facebook/ads/redexgen/X/Jq;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PX;ZZ)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0c(Lcom/facebook/ads/redexgen/X/PL;)V

    .line 47977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->A0g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47978
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IK;->A2A(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47979
    return-void

    .line 47980
    :cond_0
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47981
    .local v0, "muteButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47982
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47983
    sget v0, Lcom/facebook/ads/redexgen/X/Op;->A08:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 47984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A03:Lcom/facebook/ads/redexgen/X/Jn;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Jn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47985
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A03:Lcom/facebook/ads/redexgen/X/Jn;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->addView(Landroid/view/View;)V

    .line 47986
    return-void
.end method

.method private setUpVideo(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 4

    .line 47987
    new-instance v0, Lcom/facebook/ads/redexgen/X/AA;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/AA;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    .line 47988
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/RA;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 47990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Op;->addView(Landroid/view/View;)V

    .line 47991
    new-instance v0, Lcom/facebook/ads/redexgen/X/Oo;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Oo;-><init>(Lcom/facebook/ads/redexgen/X/Op;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Op;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47992
    return-void
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 0

    .line 47993
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Op;->setUpVideo(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 47994
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Op;->setUpPlugins(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 47995
    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 3

    .line 47944
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    const/4 v1, 0x1

    const/16 v0, 0xa

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0e(ZI)V

    .line 47945
    return-void
.end method

.method public final A02()V
    .locals 2

    .line 47946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A01:Lcom/facebook/ads/redexgen/X/PB;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47947
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PB;->A0A()V

    .line 47948
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Op;->A01:Lcom/facebook/ads/redexgen/X/PB;

    .line 47949
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A02:Lcom/facebook/ads/redexgen/X/75;

    if-eqz v0, :cond_1

    .line 47950
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/75;->A0g()V

    .line 47951
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Op;->A02:Lcom/facebook/ads/redexgen/X/75;

    .line 47952
    :cond_1
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/8V;)V
    .locals 1

    .line 47953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8U;->A05(Lcom/facebook/ads/redexgen/X/8V;)Z

    .line 47954
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Ia;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47955
    .local p4, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Op;->A02()V

    .line 47956
    new-instance v0, Lcom/facebook/ads/redexgen/X/75;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Op;->A06:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/75;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/RA;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A02:Lcom/facebook/ads/redexgen/X/75;

    .line 47957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A06:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47958
    new-instance v0, Lcom/facebook/ads/redexgen/X/PB;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Op;->A06:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/PB;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/RA;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A01:Lcom/facebook/ads/redexgen/X/PB;

    .line 47959
    :goto_0
    return-void

    .line 47960
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A01:Lcom/facebook/ads/redexgen/X/PB;

    goto :goto_0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/PK;)V
    .locals 2

    .line 47961
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    const/16 v0, 0xd

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0b(Lcom/facebook/ads/redexgen/X/PK;I)V

    .line 47962
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 47963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->A0k()Z

    move-result v0

    return v0
.end method

.method public getSimpleVideoView()Lcom/facebook/ads/redexgen/X/RA;
    .locals 1

    .line 47964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 47965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getVolume()F

    move-result v0

    return v0
.end method

.method public setPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 47966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A04:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6g;->setImage(Ljava/lang/String;)V

    .line 47967
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1

    .line 47996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RA;->setVideoURI(Ljava/lang/String;)V

    .line 47997
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 47998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RA;->setVolume(F)V

    .line 47999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Op;->A03:Lcom/facebook/ads/redexgen/X/Jn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jn;->A09()V

    .line 48000
    return-void
.end method
