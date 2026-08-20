.class public final Lcom/facebook/ads/redexgen/X/YF;
.super Lcom/facebook/ads/redexgen/X/0o;
.source ""


# static fields
.field public static A03:[B


# instance fields
.field public A00:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/5A;

.field public final A02:Lcom/facebook/ads/redexgen/X/Dv;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YF;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5A;)V
    .locals 1

    .line 67749
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0o;-><init>()V

    .line 67750
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5A;->A09()Lcom/facebook/ads/redexgen/X/Dv;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A02:Lcom/facebook/ads/redexgen/X/Dv;

    .line 67751
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    .line 67752
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/YF;)Landroid/view/View;
    .locals 0

    .line 67753
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YF;->A00:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/YF;)Lcom/facebook/ads/redexgen/X/5A;
    .locals 0

    .line 67754
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/YF;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x35

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YF;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x17t
        0x7t
        0x14t
        0x14t
        0x15t
        0x1at
        -0x3at
        0x16t
        0x18t
        0xbt
        0x19t
        0xbt
        0x14t
        0x1at
        -0x3at
        0x14t
        0x1bt
        0x12t
        0x12t
        -0x3at
        0x7t
        0xat
        -0x4t
        0xft
        0xbt
        0x1dt
    .end array-data
.end method


# virtual methods
.method public final A0C()V
    .locals 1

    .line 67755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A02:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aT;->A3e()V

    .line 67756
    new-instance v0, Lcom/facebook/ads/redexgen/X/YH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YH;-><init>(Lcom/facebook/ads/redexgen/X/YF;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Js;->A00(Lcom/facebook/ads/redexgen/X/Jo;)V

    .line 67757
    return-void
.end method

.method public final A0D()V
    .locals 1

    .line 67758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A02:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aT;->A3h()V

    .line 67759
    new-instance v0, Lcom/facebook/ads/redexgen/X/YG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YG;-><init>(Lcom/facebook/ads/redexgen/X/YF;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Js;->A00(Lcom/facebook/ads/redexgen/X/Jo;)V

    .line 67760
    return-void
.end method

.method public final A0E(Landroid/view/View;)V
    .locals 3

    .line 67761
    if-eqz p1, :cond_5

    .line 67762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A02:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aT;->A3g()V

    .line 67763
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YF;->A00:Landroid/view/View;

    .line 67764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    .line 67765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A07()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A00:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/AdView;->addView(Landroid/view/View;)V

    .line 67766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A00:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Sh;

    if-eqz v0, :cond_0

    .line 67767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    .line 67768
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A05()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YF;->A00:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A0A()Lcom/facebook/ads/redexgen/X/JD;

    move-result-object v0

    .line 67769
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JH;->A01(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/redexgen/X/JD;)V

    .line 67770
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A08()Lcom/facebook/ads/redexgen/X/Et;

    move-result-object v0

    .line 67771
    .local v0, "controller":Lcom/facebook/ads/redexgen/X/Et;
    if-eqz v0, :cond_1

    .line 67772
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0H()V

    .line 67773
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/YI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YI;-><init>(Lcom/facebook/ads/redexgen/X/YF;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Js;->A00(Lcom/facebook/ads/redexgen/X/Jo;)V

    .line 67774
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5A;->A07()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A00:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5A;->A0B(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 67775
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    .line 67776
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A10(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67777
    new-instance v2, Lcom/facebook/ads/redexgen/X/N8;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/N8;-><init>()V

    .line 67778
    .local v1, "debugOverlayDrawable":Lcom/facebook/ads/redexgen/X/N8;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/5A;->A0D(Lcom/facebook/ads/redexgen/X/N8;)V

    .line 67779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/N8;->A0C(Ljava/lang/String;)V

    .line 67780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    .line 67781
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 67782
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/N8;->A0B(Ljava/lang/String;)V

    .line 67783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A08()Lcom/facebook/ads/redexgen/X/Et;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    .line 67784
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A08()Lcom/facebook/ads/redexgen/X/Et;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0G()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    .line 67786
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A08()Lcom/facebook/ads/redexgen/X/Et;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0G()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8B;->A0C()J

    move-result-wide v0

    .line 67787
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/N8;->A09(J)V

    .line 67788
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YF;->A00:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/Sh;

    if-eqz v0, :cond_3

    .line 67789
    check-cast v1, Lcom/facebook/ads/redexgen/X/Sh;

    .line 67790
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Sh;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    .line 67791
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/N8;->A0A(Lcom/facebook/ads/redexgen/X/QA;)V

    .line 67792
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YF;->A00:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/5J;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/5J;-><init>(Lcom/facebook/ads/redexgen/X/YF;Lcom/facebook/ads/redexgen/X/N8;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 67793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 67794
    .end local v1    # "debugOverlayDrawable":Lcom/facebook/ads/redexgen/X/N8;
    :cond_4
    return-void

    .line 67795
    .end local v0    # "controller":Lcom/facebook/ads/redexgen/X/Et;
    :cond_5
    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YF;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 2

    .line 67796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A02:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A08()Lcom/facebook/ads/redexgen/X/Et;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/aT;->A3f(Z)V

    .line 67797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A08()Lcom/facebook/ads/redexgen/X/Et;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A08()Lcom/facebook/ads/redexgen/X/Et;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0I()V

    .line 67799
    :cond_0
    return-void

    .line 67800
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 5

    .line 67801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A02:Lcom/facebook/ads/redexgen/X/Dv;

    .line 67802
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/5A;

    .line 67803
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A04()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v2

    .line 67804
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JA;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 67805
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JA;->A04()Ljava/lang/String;

    move-result-object v0

    .line 67806
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 67807
    new-instance v0, Lcom/facebook/ads/redexgen/X/YJ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/YJ;-><init>(Lcom/facebook/ads/redexgen/X/YF;Lcom/facebook/ads/redexgen/X/JA;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Js;->A00(Lcom/facebook/ads/redexgen/X/Jo;)V

    .line 67808
    return-void
.end method
