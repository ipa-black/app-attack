.class public Lcom/facebook/ads/redexgen/X/NM;
.super Landroid/widget/Button;
.source ""


# static fields
.field public static final A0A:I

.field public static final A0B:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/1L;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:F

.field public final A07:I

.field public final A08:Ljava/lang/Runnable;

.field public final A09:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 45865
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/NM;->A0A:I

    .line 45866
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/NM;->A0B:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1L;)V
    .locals 2

    .line 45867
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 45868
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/NM;->A03:Z

    .line 45869
    iput v1, p0, Lcom/facebook/ads/redexgen/X/NM;->A01:I

    .line 45870
    iput v1, p0, Lcom/facebook/ads/redexgen/X/NM;->A00:I

    .line 45871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A04:Z

    .line 45872
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/NM;->A05:Z

    .line 45873
    new-instance v0, Lcom/facebook/ads/redexgen/X/SZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SZ;-><init>(Lcom/facebook/ads/redexgen/X/NM;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A08:Ljava/lang/Runnable;

    .line 45874
    new-instance v0, Lcom/facebook/ads/redexgen/X/SY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SY;-><init>(Lcom/facebook/ads/redexgen/X/NM;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A09:Ljava/lang/Runnable;

    .line 45875
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NM;->A02:Lcom/facebook/ads/redexgen/X/1L;

    .line 45876
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IK;->A04(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A07:I

    .line 45877
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IK;->A00(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A06:F

    .line 45878
    const/16 v0, 0x10

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 45879
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NM;->setGravity(I)V

    .line 45880
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NM;->A03()V

    .line 45881
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/NM;)I
    .locals 0

    .line 45882
    iget p0, p0, Lcom/facebook/ads/redexgen/X/NM;->A07:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/NM;)Ljava/lang/Runnable;
    .locals 0

    .line 45883
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NM;->A09:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/NM;)Ljava/lang/Runnable;
    .locals 0

    .line 45884
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NM;->A08:Ljava/lang/Runnable;

    return-object p0
.end method

.method private A03()V
    .locals 2

    .line 45885
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NM;->A02:Lcom/facebook/ads/redexgen/X/1L;

    if-eqz v1, :cond_0

    .line 45886
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A05:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1L;->A08(Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A00:I

    .line 45887
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NM;->A02:Lcom/facebook/ads/redexgen/X/1L;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A05:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1L;->A09(Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A01:I

    .line 45888
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/NM;->A00:I

    .line 45889
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A04:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/NM;->A0B:I

    .line 45890
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0O(Landroid/view/View;II)V

    .line 45891
    iget v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NM;->setTextColor(I)V

    .line 45892
    return-void

    .line 45893
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A04()V
    .locals 3

    .line 45894
    iget v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A07:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A03:Z

    if-eqz v0, :cond_1

    .line 45895
    :cond_0
    return-void

    .line 45896
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A03:Z

    .line 45897
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NM;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45898
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_2

    .line 45899
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/NM;->A08:Ljava/lang/Runnable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A07:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/NM;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45900
    :cond_2
    return-void
.end method


# virtual methods
.method public getColorInfo()Lcom/facebook/ads/redexgen/X/1L;
    .locals 1

    .line 45901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A02:Lcom/facebook/ads/redexgen/X/1L;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 45902
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 45903
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NM;->A04()V

    .line 45904
    return-void
.end method

.method public setRoundedCornersEnabled(Z)V
    .locals 0

    .line 45905
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/NM;->A04:Z

    .line 45906
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NM;->A03()V

    .line 45907
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 45908
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45909
    return-void
.end method

.method public setUpButtonColors(Lcom/facebook/ads/redexgen/X/1L;)V
    .locals 0

    .line 45910
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NM;->A02:Lcom/facebook/ads/redexgen/X/1L;

    .line 45911
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NM;->A03()V

    .line 45912
    return-void
.end method

.method public setViewShowsOverMedia(Z)V
    .locals 0

    .line 45913
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/NM;->A05:Z

    .line 45914
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NM;->A03()V

    .line 45915
    return-void
.end method
