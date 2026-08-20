.class public final Lcom/facebook/ads/redexgen/X/Om;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A04:I

.field public static final A05:I


# instance fields
.field public A00:Landroid/widget/TextView;

.field public A01:Landroid/widget/TextView;

.field public A02:Lcom/facebook/ads/redexgen/X/NU;

.field public final A03:Lcom/facebook/ads/redexgen/X/Xc;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47889
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Om;->A04:I

    .line 47890
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Om;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 0

    .line 47891
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47892
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Om;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    .line 47893
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Om;->A00(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 47894
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 7

    .line 47895
    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Om;->setGravity(I)V

    .line 47896
    new-instance v0, Lcom/facebook/ads/redexgen/X/NU;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Om;->A02:Lcom/facebook/ads/redexgen/X/NU;

    .line 47897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Om;->A02:Lcom/facebook/ads/redexgen/X/NU;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/NU;->setFullCircleCorners(Z)V

    .line 47898
    sget v0, Lcom/facebook/ads/redexgen/X/Om;->A04:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47899
    .local v1, "pageImageViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Om;->A05:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Om;->A02:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Om;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47901
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47902
    .local v3, "pageInfoView":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47903
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Om;->A00:Landroid/widget/TextView;

    .line 47904
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47905
    .local v5, "pageNameViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Om;->A00:Landroid/widget/TextView;

    invoke-static {v0, v5, v6}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 47906
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Om;->A00:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 47907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Om;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 47908
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Om;->A01:Landroid/widget/TextView;

    .line 47909
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Om;->A01:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 47910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Om;->A00:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Om;->A01:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47912
    invoke-virtual {p0, v3, v2}, Lcom/facebook/ads/redexgen/X/Om;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47913
    return-void
.end method


# virtual methods
.method public final A01(II)V
    .locals 1

    .line 47914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Om;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Om;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47916
    return-void
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/1V;)V
    .locals 3

    .line 47917
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Om;->A02:Lcom/facebook/ads/redexgen/X/NU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Om;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 47918
    .local v0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Sf;
    sget v0, Lcom/facebook/ads/redexgen/X/Om;->A04:I

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A05(II)Lcom/facebook/ads/redexgen/X/Sf;

    .line 47919
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1V;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 47920
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Om;->A00:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1V;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47921
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Om;->A01:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1V;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47922
    return-void
.end method
