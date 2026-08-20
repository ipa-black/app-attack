.class public abstract Lcom/facebook/ads/redexgen/X/Zt;
.super Lcom/facebook/ads/redexgen/X/4N;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/17;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/4N<",
        "Lcom/facebook/ads/redexgen/X/TF;",
        ">;"
    }
.end annotation


# static fields
.field public static final A05:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/17;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Tp;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A04:Lcom/facebook/ads/redexgen/X/Q9;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 71261
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Zt;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/19;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/19;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Tp;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Xc;",
            ")V"
        }
    .end annotation

    .line 71262
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4N;-><init>()V

    .line 71263
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zv;-><init>(Lcom/facebook/ads/redexgen/X/Zt;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zt;->A04:Lcom/facebook/ads/redexgen/X/Q9;

    .line 71264
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Zt;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    .line 71265
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->getChildSpacing()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Zt;->A02:I

    .line 71266
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Zt;->A01:Ljava/util/List;

    .line 71267
    return-void
.end method

.method private A02(I)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 4

    .line 71268
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 71269
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Zt;->A02:I

    if-nez p1, :cond_0

    mul-int/lit8 v2, v2, 0x2

    .line 71270
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zt;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zt;->A02:I

    mul-int/lit8 v1, v0, 0x2

    .line 71271
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 71272
    return-object v3

    .line 71273
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Zt;->A02:I

    goto :goto_0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Zt;)Lcom/facebook/ads/redexgen/X/17;
    .locals 0

    .line 71274
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zt;->A00:Lcom/facebook/ads/redexgen/X/17;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Zt;)Lcom/facebook/ads/redexgen/X/Q9;
    .locals 0

    .line 71275
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zt;->A04:Lcom/facebook/ads/redexgen/X/Q9;

    return-object p0
.end method


# virtual methods
.method public final A0D()I
    .locals 1

    .line 71276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zt;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4r;I)V
    .locals 0

    .line 71277
    check-cast p1, Lcom/facebook/ads/redexgen/X/TF;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Zt;->A0H(Lcom/facebook/ads/redexgen/X/TF;I)V

    return-void
.end method

.method public final A0F(Landroid/widget/ImageView;I)V
    .locals 4

    .line 71278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zt;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Tp;

    .line 71279
    .local v0, "childAd":Lcom/facebook/ads/redexgen/X/Tp;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A13()Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v2

    .line 71280
    .local v1, "coverImage":Lcom/facebook/ads/redexgen/X/Iy;
    if-eqz v2, :cond_0

    .line 71281
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zt;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 71282
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04()Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v1

    .line 71283
    .local v2, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Sf;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zu;

    invoke-direct {v0, p0, p2, v3}, Lcom/facebook/ads/redexgen/X/Zu;-><init>(Lcom/facebook/ads/redexgen/X/Zt;ILcom/facebook/ads/redexgen/X/Tp;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A06(Lcom/facebook/ads/redexgen/X/N9;)Lcom/facebook/ads/redexgen/X/Sf;

    .line 71284
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Iy;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 71285
    .end local v2    # "downloadImageTask":Lcom/facebook/ads/redexgen/X/Sf;
    :cond_0
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/17;)V
    .locals 0

    .line 71286
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zt;->A00:Lcom/facebook/ads/redexgen/X/17;

    .line 71287
    return-void
.end method

.method public A0H(Lcom/facebook/ads/redexgen/X/TF;I)V
    .locals 2

    .line 71288
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TF;->A0l()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v1

    .line 71289
    .local v0, "cardView":Lcom/facebook/ads/internal/api/AdNativeComponentView;
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Zt;->A02(I)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71290
    return-void
.end method
