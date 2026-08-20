.class public final Lcom/facebook/ads/redexgen/X/Tt;
.super Lcom/facebook/ads/redexgen/X/Q9;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Tp;->A0f(Landroid/view/View;Landroid/view/View;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/a7;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Tp;

.field public final synthetic A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 55668
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oSoBkaWeyKsp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KBeBF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kSDces9j50gwfjS4QfNYnWgLw2iPkymV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EJmszBWYtRUz1Vdq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qn5qycmxyPd80aqzWiKeSrAoNfum3VnE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "21Cce2q6wYIDkABj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "e4Lw2G3U"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jRNkDTlKn5mABl6KQSYrYYCrXHx6B19g"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tt;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tp;Landroid/view/View;ZLcom/facebook/ads/redexgen/X/a7;)V
    .locals 0

    .line 55669
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tt;->A00:Landroid/view/View;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Tt;->A03:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Tt;->A01:Lcom/facebook/ads/redexgen/X/a7;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q9;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 55670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0Q(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J8;->A06()V

    .line 55671
    return-void
.end method

.method public final A01()V
    .locals 1

    .line 55672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0Q(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J8;->A0A()V

    .line 55673
    return-void
.end method

.method public final A02()V
    .locals 4

    .line 55674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0Q(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J8;->A0B()V

    .line 55675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    .line 55676
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A11()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    .line 55677
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55678
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tt;->A00:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/internal/api/AdNativeComponentView;

    if-eqz v0, :cond_0

    .line 55679
    check-cast v1, Lcom/facebook/ads/internal/api/AdNativeComponentView;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->getAdContentsView()Landroid/view/View;

    move-result-object v1

    .line 55680
    .local v0, "videoView":Landroid/view/View;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/PH;

    if-eqz v0, :cond_0

    .line 55681
    check-cast v1, Lcom/facebook/ads/redexgen/X/PH;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/PH;->A02()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0V(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0T()V

    .line 55683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0Q(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J8;->A08()V

    .line 55684
    return-void

    .line 55685
    .end local v0    # "videoView":Landroid/view/View;
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A03:Z

    if-eqz v0, :cond_2

    .line 55686
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Tt;->A00:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tt;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55687
    .local v0, "iv":Landroid/widget/ImageView;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tt;->A04:[Ljava/lang/String;

    const-string v1, "kV1RqodiW8kqR1rQOQ4NCiAB35VpASKe"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A06(Lcom/facebook/ads/redexgen/X/Tp;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55688
    .local v1, "loadedNativeBannerIconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    .line 55689
    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Tp;->A0e(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 55690
    .end local v0    # "iv":Landroid/widget/ImageView;
    .end local v1    # "loadedNativeBannerIconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0Q(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0I(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A01:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a7;->A0G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A0C(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;)V

    .line 55691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0V(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 55692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0V(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0V()V

    .line 55693
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0Y(Lcom/facebook/ads/redexgen/X/Tp;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0Y(Lcom/facebook/ads/redexgen/X/Tp;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 55694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0Y(Lcom/facebook/ads/redexgen/X/Tp;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A02()V

    .line 55695
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0S(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LD;->A07()Z

    move-result v0

    if-nez v0, :cond_7

    .line 55696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0k(Lcom/facebook/ads/redexgen/X/Tp;)V

    .line 55697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0E(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A08(Lcom/facebook/ads/redexgen/X/Tp;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A09(Lcom/facebook/ads/redexgen/X/Tp;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    .line 55698
    :cond_5
    return-void

    .line 55699
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0E(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A08(Lcom/facebook/ads/redexgen/X/Tp;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A08(Landroid/view/View;)V

    .line 55700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0E(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A09(Lcom/facebook/ads/redexgen/X/Tp;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A07(Landroid/view/View;)V

    .line 55701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0E(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0P(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/J1;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A0B(Lcom/facebook/ads/redexgen/X/J1;)V

    .line 55702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0E(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0r(Lcom/facebook/ads/redexgen/X/Tp;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A0E(Z)V

    .line 55703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0E(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0s(Lcom/facebook/ads/redexgen/X/Tp;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A0I(Z)V

    .line 55704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0E(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0t(Lcom/facebook/ads/redexgen/X/Tp;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A0H(Z)V

    .line 55705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0E(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0u(Lcom/facebook/ads/redexgen/X/Tp;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A0F(Z)V

    .line 55706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0E(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0D(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/0z;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A09(Lcom/facebook/ads/redexgen/X/0z;)V

    .line 55707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0E(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0v(Lcom/facebook/ads/redexgen/X/Tp;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A0G(Z)V

    .line 55708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0E(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    .line 55709
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0B(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/NativeAdLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MI;->A00(Lcom/facebook/ads/NativeAdLayout;)Lcom/facebook/ads/redexgen/X/10;

    move-result-object v0

    .line 55710
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A0A(Lcom/facebook/ads/redexgen/X/10;)V

    .line 55711
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0E(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0X(Lcom/facebook/ads/redexgen/X/Tp;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A0C(Ljava/lang/String;)V

    .line 55712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0E(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A03:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A0J(Z)V

    .line 55713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0E(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Zx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0p;->A02()V

    goto :goto_0

    .line 55714
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0Q(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J8;->A04()V

    .line 55715
    :goto_0
    return-void

    .line 55716
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0V(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0T()V

    .line 55717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tt;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0Q(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J8;->A07()V

    .line 55718
    return-void
.end method
