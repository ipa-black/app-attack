.class public final Lcom/facebook/ads/redexgen/X/2L;
.super Lcom/facebook/ads/redexgen/X/9D;
.source ""


# static fields
.field public static final A06:I

.field public static final A07:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Sa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/On;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A03:Lcom/facebook/ads/redexgen/X/Tp;

.field public final A04:Lcom/facebook/ads/redexgen/X/9g;

.field public final A05:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 5299
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, -0x3f800000    # -4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/2L;->A07:I

    .line 5300
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/2L;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nm;Lcom/facebook/ads/redexgen/X/Tp;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/9g;)V
    .locals 1

    .line 5301
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/9D;-><init>(Lcom/facebook/ads/redexgen/X/Nm;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Rd;)V

    .line 5302
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2L;->A03:Lcom/facebook/ads/redexgen/X/Tp;

    .line 5303
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/2L;->A05:Ljava/lang/String;

    .line 5304
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/2L;->A04:Lcom/facebook/ads/redexgen/X/9g;

    .line 5305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0I:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A02:Lcom/facebook/ads/redexgen/X/Ia;

    .line 5306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A03:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Tp;->A1K(Landroid/view/View;)V

    .line 5307
    return-void
.end method


# virtual methods
.method public setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/On;)V
    .locals 11

    .line 5308
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2L;->A01:Lcom/facebook/ads/redexgen/X/On;

    .line 5309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0I:Lcom/facebook/ads/redexgen/X/Nm;

    .line 5310
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0L(Landroid/content/Context;)I

    move-result v1

    .line 5311
    .local v0, "extensionVariant":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A03:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0z()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v6

    .line 5312
    .local v1, "colorInfo":Lcom/facebook/ads/redexgen/X/1L;
    new-instance v3, Lcom/facebook/ads/redexgen/X/Sa;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0I:Lcom/facebook/ads/redexgen/X/Nm;

    .line 5313
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A03:Lcom/facebook/ads/redexgen/X/Tp;

    .line 5314
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0z()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0G()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2L;->A02:Lcom/facebook/ads/redexgen/X/Ia;

    .line 5315
    invoke-static {}, Lcom/facebook/ads/redexgen/X/My;->getDummyListener()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A04:Lcom/facebook/ads/redexgen/X/9g;

    .line 5316
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9g;->A0c()Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A03:Lcom/facebook/ads/redexgen/X/Tp;

    .line 5317
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A19()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v10

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/Sa;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1L;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/2L;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    .line 5318
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2L;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    .line 5319
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A03()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2L;->A05:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5320
    invoke-virtual {v4, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Sa;->setCta(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/util/Map;)V

    .line 5321
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2L;->A03:Lcom/facebook/ads/redexgen/X/Tp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1K(Landroid/view/View;)V

    .line 5322
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5323
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 5324
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5325
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2L;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    sget v2, Lcom/facebook/ads/redexgen/X/2L;->A06:I

    const/4 v1, 0x5

    .line 5326
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/1L;->A09(Z)I

    move-result v0

    .line 5327
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0P(Landroid/view/View;III)V

    .line 5328
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5329
    :cond_0
    :goto_0
    return-void

    .line 5330
    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 5331
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5332
    sget v0, Lcom/facebook/ads/redexgen/X/2L;->A07:I

    invoke-virtual {v4, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 5333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2L;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {p0, v0, v5, v4}, Lcom/facebook/ads/redexgen/X/2L;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    goto :goto_0
.end method
