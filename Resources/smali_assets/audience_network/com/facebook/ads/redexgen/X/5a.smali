.class public final Lcom/facebook/ads/redexgen/X/5a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeBannerAdApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5X;,
        Lcom/facebook/ads/redexgen/X/5Y;,
        Lcom/facebook/ads/redexgen/X/5Z;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Tp;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 14587
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "GHtEJsCBxF6ZG8G1CCL5RBmKmDCxDlHG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8TFtHG5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ovYsObbmHQ4MgJZYSDt7UbSE4I8Jd3xL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OStrwIklzSQSoVp6y3SnTe0L"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CizBuXx6tKQSK5P8xVf5ORSYZ1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CxGaKpsxgS6bhWDX5B71lG4aeRzyf4w9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZUquOnXGk9BCY4cqa0yz5KxW6oH5Pvvn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wvrH4lpYI8UyLhNBrrW8XGK9bs66R2Pk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5a;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5a;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 2

    .line 14588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14589
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Tp;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tp;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    .line 14590
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A04:Lcom/facebook/ads/redexgen/X/JF;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1Y(Lcom/facebook/ads/redexgen/X/JF;)V

    .line 14591
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5a;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x28

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5a;->A01:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/5a;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/5a;->A02:[Ljava/lang/String;

    const-string v1, "g9VMJ7KVDiHxjzY4mov6XPU8OVFxG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x2bt
        0x2ft
        0x2ct
        0x18t
        0x9t
        0x4t
        0x8t
        0x3t
        0xet
        0x8t
        0x23t
        0x8t
        0x19t
        0x1at
        0x2t
        0x1ft
        0x6t
    .end array-data
.end method

.method private A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 9

    .line 14592
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Tp;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tp;

    move-result-object v7

    .line 14593
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Tp;
    new-instance v4, Lcom/facebook/ads/redexgen/X/Xy;

    invoke-direct {v4, p0, p1, v7}, Lcom/facebook/ads/redexgen/X/Xy;-><init>(Lcom/facebook/ads/redexgen/X/5a;Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Tp;)V

    .line 14594
    .local v1, "nativeBannerImageLoadTaskListener":Lcom/facebook/ads/redexgen/X/5Y;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tp;->A14()Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v8

    .line 14595
    .local v2, "adIcon":Lcom/facebook/ads/redexgen/X/Iy;
    if-eqz v8, :cond_1

    .line 14596
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tp;->A10()Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Iy;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6M;->A0M(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 14597
    .local v3, "preloadedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5M;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v2

    .line 14598
    .local v4, "adContextWrapper":Lcom/facebook/ads/redexgen/X/Xc;
    if-eqz v3, :cond_0

    .line 14599
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tp;->A1d()Z

    move-result v1

    .line 14600
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tp;->A1C()Ljava/lang/String;

    move-result-object v0

    .line 14601
    invoke-static {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A05(Lcom/facebook/ads/redexgen/X/Xc;Landroid/graphics/Bitmap;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 14602
    .local v5, "iconViewDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v1, p1}, Lcom/facebook/ads/redexgen/X/Tp;->A0e(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 14603
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xx;

    invoke-direct {v0, p0, v7, v1}, Lcom/facebook/ads/redexgen/X/Xx;-><init>(Lcom/facebook/ads/redexgen/X/5a;Lcom/facebook/ads/redexgen/X/Tp;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 14604
    .end local v5    # "iconViewDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "preloadedBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/Xc;
    :goto_0
    return-void

    .line 14605
    :cond_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tp;->A1d()Z

    move-result v0

    const/4 v6, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/5X;

    invoke-direct {v5, v2, v4, v0, v6}, Lcom/facebook/ads/redexgen/X/5X;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/5Y;ZLcom/facebook/ads/redexgen/X/Xy;)V

    .line 14606
    .local v5, "loadImageTask":Lcom/facebook/ads/redexgen/X/5X;
    const/4 v0, 0x1

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/5Z;

    const/4 v3, 0x0

    .line 14607
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Iy;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tp;->A1C()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/5Z;

    invoke-direct {v0, v2, v1, v6}, Lcom/facebook/ads/redexgen/X/5Z;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xy;)V

    aput-object v0, v4, v3

    .line 14608
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/5X;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 14609
    :cond_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tp;->A15()Lcom/facebook/ads/redexgen/X/To;

    move-result-object v6

    .line 14610
    .local v3, "adListener":Lcom/facebook/ads/redexgen/X/To;
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 14611
    .local v4, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tp;->A11()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    .line 14612
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    const-wide/16 v2, -0x1

    .line 14613
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 14614
    if-eqz v6, :cond_2

    .line 14615
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/JA;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/facebook/ads/redexgen/X/Io;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 14616
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5a;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 1

    .line 14617
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/5a;->registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 14618
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 14619
    .local p3, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 14620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-direct {p0, p2, v0}, Lcom/facebook/ads/redexgen/X/5a;->A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    .line 14621
    :cond_0
    if-eqz p3, :cond_1

    .line 14622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Tp;->A1M(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 14623
    :goto_0
    return-void

    .line 14624
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Tp;->A1L(Landroid/view/View;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 14625
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/5a;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 14626
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .locals 6
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 14627
    .local p0, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 14628
    invoke-virtual {p2}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Y6;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5a;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 14629
    sget-object v2, Lcom/facebook/ads/redexgen/X/5a;->A02:[Ljava/lang/String;

    const-string v1, "js1TYeoyNOBe6miaJaLofzAsC6CsUfwk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "W1hafLFlhK2580scubVHArACmFSZlS1F"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Y6;->A0M(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V

    .line 14630
    :cond_0
    if-eqz p3, :cond_1

    .line 14631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Tp;->A1O(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Ljava/util/List;)V

    .line 14632
    :goto_0
    return-void

    .line 14633
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Tp;->A1N(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
