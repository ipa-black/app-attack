.class public final Lcom/facebook/ads/redexgen/X/aA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NativeViewability",
        "Logger:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/0n;"
    }
.end annotation


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;

.field public static final A0I:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0v;

.field public A01:Lcom/facebook/ads/redexgen/X/Zy;

.field public A02:Lcom/facebook/ads/redexgen/X/F3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Dv;

.field public A04:Lcom/facebook/ads/redexgen/X/Ia;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/LD;

.field public A06:Lcom/facebook/ads/redexgen/X/N3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/Sh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Lcom/facebook/ads/redexgen/X/8v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Lcom/facebook/ads/redexgen/X/Q9;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/QA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0B:Ljava/lang/Boolean;

.field public A0C:Ljava/lang/String;

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 71810
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1VlIdrj3fRAASVh0IRQbA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AKXoeI10d8PJONEXEmQHjWIEkAB2E"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HfXt1ktTFXNYFvURT1ePpe"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VNbNAjzqH3UXN3t9RrTP5z6I5Qa6gPQJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DeawL9PzUIlDumNdtXISYTaSpfy6P3Cj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KNbO6MhxkLbBAZAqlm1H7U8Ouut8mEhI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "i536pd2CEb7n0lc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TelURl5RBqiFivFSJRRvco6RCKborqoX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aA;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aA;->A0A()V

    const-class v0, Lcom/facebook/ads/redexgen/X/aA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aA;->A0I:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 71811
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71812
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/aA;->A0D:Z

    .line 71813
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/aA;->A0E:Z

    .line 71814
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/aA;->A0F:Z

    .line 71815
    new-instance v0, Lcom/facebook/ads/redexgen/X/LD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LD;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A05:Lcom/facebook/ads/redexgen/X/LD;

    .line 71816
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A0B:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/0v;
    .locals 0

    .line 71817
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aA;->A00:Lcom/facebook/ads/redexgen/X/0v;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Zy;
    .locals 0

    .line 71818
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aA;->A01:Lcom/facebook/ads/redexgen/X/Zy;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/F3;
    .locals 0

    .line 71819
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aA;->A02:Lcom/facebook/ads/redexgen/X/F3;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Dv;
    .locals 0

    .line 71820
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Ia;
    .locals 0

    .line 71821
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aA;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/LD;
    .locals 0

    .line 71822
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aA;->A05:Lcom/facebook/ads/redexgen/X/LD;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/QA;
    .locals 0

    .line 71823
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aA;->A0A:Lcom/facebook/ads/redexgen/X/QA;

    return-object p0
.end method

.method public static synthetic A07()Ljava/lang/String;
    .locals 1

    .line 71824
    sget-object v0, Lcom/facebook/ads/redexgen/X/aA;->A0I:Ljava/lang/String;

    return-object v0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/aA;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x13

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/aA;->A0H:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/aA;->A0H:[Ljava/lang/String;

    const-string v1, "viF0h1063r6cbXDqGfnWrC6qPBVBGzAv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "3ywSXssJKLxMazlfVUMLvW6ymO505mlb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A09()V
    .locals 4

    .line 71825
    .local v2, "this":Lcom/facebook/ads/redexgen/X/aA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A00:Lcom/facebook/ads/redexgen/X/0v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A08:Lcom/facebook/ads/redexgen/X/8v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A02:Lcom/facebook/ads/redexgen/X/F3;

    if-eqz v0, :cond_0

    .line 71826
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71827
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aA;->A00:Lcom/facebook/ads/redexgen/X/0v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A08:Lcom/facebook/ads/redexgen/X/8v;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/0v;->AAP(Lcom/facebook/ads/redexgen/X/aA;Landroid/view/View;)V

    .line 71828
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A00:Lcom/facebook/ads/redexgen/X/0v;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A0D:Z

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/aA;->A0E:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/aA;->A0H:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/aA;->A0H:[Ljava/lang/String;

    const-string v1, "DQYu3GBVfiN4Ml"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A0F:Z

    if-nez v0, :cond_2

    .line 71829
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aA;->A00:Lcom/facebook/ads/redexgen/X/0v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A07:Lcom/facebook/ads/redexgen/X/Sh;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/0v;->AAP(Lcom/facebook/ads/redexgen/X/aA;Landroid/view/View;)V

    .line 71830
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A00:Lcom/facebook/ads/redexgen/X/0v;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/aT;->A3Y(Z)V

    .line 71831
    return-void

    .line 71832
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aA;->A0G:[B

    return-void

    :array_0
    .array-data 1
        -0x1ct
        -0x10t
        -0x12t
        -0x51t
        -0x19t
        -0x1et
        -0x1ct
        -0x1at
        -0x1dt
        -0x10t
        -0x10t
        -0x14t
        -0x51t
        -0x1et
        -0x1bt
        -0xct
        -0x51t
        -0x1dt
        -0x1et
        -0x11t
        -0x11t
        -0x1at
        -0xdt
        -0x51t
        -0x1ct
        -0x13t
        -0x16t
        -0x1ct
        -0x14t
        -0x1at
        -0x1bt
        -0x18t
        -0x27t
        -0x14t
        -0x18t
        -0x5dt
        -0x24t
        -0x18t
        -0x1ft
        -0x20t
        -0x44t
        -0x45t
        -0x53t
        0x74t
        0x7ft
    .end array-data
.end method

.method private A0B(ILcom/facebook/ads/redexgen/X/8B;)V
    .locals 11

    .line 71833
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    new-instance v6, Lcom/facebook/ads/redexgen/X/aD;

    invoke-direct {v6, p0}, Lcom/facebook/ads/redexgen/X/aD;-><init>(Lcom/facebook/ads/redexgen/X/aA;)V

    .line 71834
    .local v3, "nativeDSLListener":Lcom/facebook/ads/redexgen/X/OB;
    new-instance v3, Lcom/facebook/ads/redexgen/X/8v;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/aA;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/aA;->A02:Lcom/facebook/ads/redexgen/X/F3;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/aA;->A05:Lcom/facebook/ads/redexgen/X/LD;

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A08(III)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/8v;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/OB;Lcom/facebook/ads/redexgen/X/Zs;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/LD;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/aA;->A08:Lcom/facebook/ads/redexgen/X/8v;

    .line 71835
    new-instance v0, Lcom/facebook/ads/redexgen/X/aC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aC;-><init>(Lcom/facebook/ads/redexgen/X/aA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A09:Lcom/facebook/ads/redexgen/X/Q9;

    .line 71836
    new-instance v1, Lcom/facebook/ads/redexgen/X/QA;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aA;->A08:Lcom/facebook/ads/redexgen/X/8v;

    .line 71837
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/8B;->A04()I

    move-result v3

    .line 71838
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/8B;->A09()I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A09:Lcom/facebook/ads/redexgen/X/Q9;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Landroid/view/View;IIZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/aA;->A0A:Lcom/facebook/ads/redexgen/X/QA;

    .line 71839
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aA;->A0A:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A02:Lcom/facebook/ads/redexgen/X/F3;

    .line 71840
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0A()I

    move-result v0

    .line 71841
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QA;->A0W(I)V

    .line 71842
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aA;->A0A:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A02:Lcom/facebook/ads/redexgen/X/F3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0B()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QA;->A0X(I)V

    .line 71843
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aA;->A08:Lcom/facebook/ads/redexgen/X/8v;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->setVisibility(I)V

    .line 71844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->getResources()Landroid/content/res/Resources;

    .line 71845
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aA;->A08:Lcom/facebook/ads/redexgen/X/8v;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/8v;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A08:Lcom/facebook/ads/redexgen/X/8v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8v;->AFS()V

    .line 71847
    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/aA;)V
    .locals 0

    .line 71848
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aA;->A09()V

    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/aA;ILcom/facebook/ads/redexgen/X/8B;)V
    .locals 0

    .line 71849
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/aA;->A0B(ILcom/facebook/ads/redexgen/X/8B;)V

    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/8B;Lcom/facebook/ads/redexgen/X/1q;)V
    .locals 10

    .line 71850
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    .line 71851
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1q;->A03()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/a0;->A00(Lcom/facebook/ads/redexgen/X/Dv;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/a0;

    move-result-object v3

    .line 71852
    .local v0, "dataModel":Lcom/facebook/ads/redexgen/X/a0;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/a0;->A6B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A0C:Ljava/lang/String;

    .line 71853
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/0j;->A06(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/0i;Lcom/facebook/ads/redexgen/X/Ia;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A44()V

    .line 71855
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aA;->A00:Lcom/facebook/ads/redexgen/X/0v;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JA;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/0v;->ABP(Lcom/facebook/ads/redexgen/X/aA;Lcom/facebook/ads/redexgen/X/JA;)V

    .line 71856
    return-void

    .line 71857
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/FA;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/FA;-><init>(Lcom/facebook/ads/redexgen/X/aA;Lcom/facebook/ads/redexgen/X/a0;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A06:Lcom/facebook/ads/redexgen/X/N3;

    .line 71858
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A06:Lcom/facebook/ads/redexgen/X/N3;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 71859
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8B;->A04()I

    move-result v2

    .line 71860
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aA;->A6B()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sh;

    invoke-direct {v0, v5, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/Sh;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/ref/WeakReference;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A07:Lcom/facebook/ads/redexgen/X/Sh;

    .line 71861
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aA;->A07:Lcom/facebook/ads/redexgen/X/Sh;

    .line 71862
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8B;->A07()I

    move-result v1

    .line 71863
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8B;->A08()I

    move-result v0

    .line 71864
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sh;->A0G(II)V

    .line 71865
    new-instance v9, Lcom/facebook/ads/redexgen/X/aB;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/aB;-><init>(Lcom/facebook/ads/redexgen/X/aA;)V

    .line 71866
    .local v9, "impressionHelper":Lcom/facebook/ads/redexgen/X/0q;
    new-instance v4, Lcom/facebook/ads/redexgen/X/Zy;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/aA;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/aA;->A07:Lcom/facebook/ads/redexgen/X/Sh;

    .line 71867
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Sh;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v8

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Zy;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/N0;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/0q;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/aA;->A01:Lcom/facebook/ads/redexgen/X/Zy;

    .line 71868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A01:Lcom/facebook/ads/redexgen/X/Zy;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Zy;->A08(Lcom/facebook/ads/redexgen/X/a0;)V

    .line 71869
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aA;->A07:Lcom/facebook/ads/redexgen/X/Sh;

    .line 71870
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N6;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71871
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/a0;->A04()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    .line 71872
    const/16 v2, 0x1f

    const/16 v1, 0x9

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A08(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x28

    const/4 v1, 0x5

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A08(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Sh;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A0D:Z

    .line 71874
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aA;->A09()V

    .line 71875
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/JD;Lcom/facebook/ads/redexgen/X/8B;)V
    .locals 10

    .line 71876
    .local p1, "this":Lcom/facebook/ads/redexgen/X/aA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A02:Lcom/facebook/ads/redexgen/X/F3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    if-nez v0, :cond_1

    .line 71877
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v9
    :cond_0
    return-void

    .line 71878
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JD;->A02()I

    move-result v0

    int-to-float v1, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-int v2, v1

    .line 71879
    .local v0, "bannerHeight":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    .line 71880
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A02:Lcom/facebook/ads/redexgen/X/F3;

    .line 71881
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0N()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5m;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 71882
    .local v1, "isUnifiedAssetsLoaderEnabled":Z
    :goto_0
    if-nez v0, :cond_3

    .line 71883
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/aA;->A0B(ILcom/facebook/ads/redexgen/X/8B;)V

    .line 71884
    return-void

    .line 71885
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 71886
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    new-instance v4, Lcom/facebook/ads/redexgen/X/6M;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/6M;-><init>(Lcom/facebook/ads/redexgen/X/7N;)V

    .line 71887
    .local v3, "cacheManager":Lcom/facebook/ads/redexgen/X/6M;
    move-object v1, p0

    .line 71888
    .local v9, "selfReference":Lcom/facebook/ads/redexgen/X/aA;
    new-instance v3, Lcom/facebook/ads/redexgen/X/5m;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A02:Lcom/facebook/ads/redexgen/X/F3;

    .line 71889
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0N()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A02:Lcom/facebook/ads/redexgen/X/F3;

    .line 71890
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0K()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A02:Lcom/facebook/ads/redexgen/X/F3;

    .line 71891
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-instance v9, Lcom/facebook/ads/redexgen/X/aF;

    invoke-direct {v9, p0, v2, p2, v1}, Lcom/facebook/ads/redexgen/X/aF;-><init>(Lcom/facebook/ads/redexgen/X/aA;ILcom/facebook/ads/redexgen/X/8B;Lcom/facebook/ads/redexgen/X/aA;)V

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/5m;-><init>(Lcom/facebook/ads/redexgen/X/6M;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5l;)V

    .line 71892
    .local v2, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/5m;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5m;->A0B()V

    .line 71893
    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/aA;)Z
    .locals 0

    .line 71894
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/aA;->A0F:Z

    return p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/aA;Z)Z
    .locals 0

    .line 71895
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/aA;->A0E:Z

    return p1
.end method


# virtual methods
.method public final A0I(Lcom/facebook/ads/redexgen/X/Dv;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/JD;Lcom/facebook/ads/redexgen/X/0v;Lcom/facebook/ads/redexgen/X/1q;)V
    .locals 3

    .line 71896
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aT;->A3X()V

    .line 71897
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    .line 71898
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aA;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    .line 71899
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/aA;->A00:Lcom/facebook/ads/redexgen/X/0v;

    .line 71900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    .line 71901
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 71902
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1G(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A0F:Z

    .line 71903
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/1q;->A01()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v2

    .line 71904
    .local v0, "placementDefinition":Lcom/facebook/ads/redexgen/X/8B;
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/1q;->A03()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/F3;->A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Xc;)Lcom/facebook/ads/redexgen/X/F3;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A02:Lcom/facebook/ads/redexgen/X/F3;

    .line 71905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A02:Lcom/facebook/ads/redexgen/X/F3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71906
    invoke-direct {p0, p3, v2}, Lcom/facebook/ads/redexgen/X/aA;->A0F(Lcom/facebook/ads/redexgen/X/JD;Lcom/facebook/ads/redexgen/X/8B;)V

    .line 71907
    :goto_0
    return-void

    .line 71908
    :cond_0
    invoke-direct {p0, v2, p5}, Lcom/facebook/ads/redexgen/X/aA;->A0E(Lcom/facebook/ads/redexgen/X/8B;Lcom/facebook/ads/redexgen/X/1q;)V

    goto :goto_0
.end method

.method public final A6B()Ljava/lang/String;
    .locals 1

    .line 71909
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public final A7L()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 71910
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final AFX()Z
    .locals 1

    .line 71911
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 2

    .line 71912
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aA;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A03:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A07:Lcom/facebook/ads/redexgen/X/Sh;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/aT;->A3V(Z)V

    .line 71913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A07:Lcom/facebook/ads/redexgen/X/Sh;

    if-eqz v0, :cond_0

    .line 71914
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sh;->destroy()V

    .line 71915
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A07:Lcom/facebook/ads/redexgen/X/Sh;

    .line 71916
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aA;->A06:Lcom/facebook/ads/redexgen/X/N3;

    .line 71917
    :cond_0
    return-void

    .line 71918
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
