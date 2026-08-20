.class public final Lcom/facebook/ads/redexgen/X/Y6;
.super Lcom/facebook/ads/redexgen/X/5K;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/MediaViewApi;
.implements Lcom/facebook/ads/internal/context/Repairable;
.implements Lcom/facebook/ads/redexgen/X/7L;


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Landroid/view/View;

.field public A02:Landroid/widget/ImageView;

.field public A03:Lcom/facebook/ads/MediaView;

.field public A04:Lcom/facebook/ads/MediaViewListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

.field public A07:Lcom/facebook/ads/redexgen/X/Xc;

.field public A08:Lcom/facebook/ads/redexgen/X/19;

.field public A09:Lcom/facebook/ads/redexgen/X/N7;

.field public A0A:Lcom/facebook/ads/redexgen/X/8v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0B:Lcom/facebook/ads/redexgen/X/Ov;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0C:Z

.field public A0D:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 67306
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5egxRyJvv3hsImr6xVPVZGZzS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S92E58UIdGCmPOb4LYA51SRur0tU5vPU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gB2LJBWgacco1yi3dwEv6yCRJyLib4yq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IRYDxixZynQ1VjnPzR0JfxvjieAE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Yx6PPUM30uHFy3rHO75LIsUaVykI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YSQgGTlHzzB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fqdcFq1cD4m6uZ0nLvDLKOa7nCA9CaYH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MqJIv4BM2hfR6AMSoGkEEGT8SPZgcE8o"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y6;->A08()V

    const-class v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Y6;->A0G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67307
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5K;-><init>()V

    .line 67308
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/MediaView;
    .locals 0

    .line 67309
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 0

    .line 67310
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 67311
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/redexgen/X/8v;
    .locals 0

    .line 67312
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0A:Lcom/facebook/ads/redexgen/X/8v;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y6;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()V
    .locals 3

    .line 67313
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0A:Lcom/facebook/ads/redexgen/X/8v;

    if-eqz v1, :cond_0

    .line 67314
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->setVisibility(I)V

    .line 67315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0A:Lcom/facebook/ads/redexgen/X/8v;

    .line 67316
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8v;->getDynamicWebViewController()Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0O()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 67317
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/3E;->A0A(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 67318
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0A:Lcom/facebook/ads/redexgen/X/8v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 67319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0A:Lcom/facebook/ads/redexgen/X/8v;

    .line 67320
    :cond_0
    return-void
.end method

.method private A06()V
    .locals 4

    .line 67321
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0D:Z

    if-nez v0, :cond_2

    .line 67322
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const-string v1, "HiqmuX4YAHl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "JtgDxExoVYEb5OmxUIRsQ7gjV"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 67323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A08:Lcom/facebook/ads/redexgen/X/19;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 67324
    :cond_1
    sget v2, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    .line 67325
    .local v0, "density":F
    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 67326
    .local v1, "hPadding":I
    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 67327
    .local v2, "vPadding":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A08:Lcom/facebook/ads/redexgen/X/19;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/19;->setChildSpacing(I)V

    .line 67328
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A08:Lcom/facebook/ads/redexgen/X/19;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Lcom/facebook/ads/redexgen/X/19;->setPadding(IIII)V

    .line 67329
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A08:Lcom/facebook/ads/redexgen/X/19;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/19;->setVisibility(I)V

    .line 67330
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67331
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A08:Lcom/facebook/ads/redexgen/X/19;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    .line 67333
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67334
    return-void

    .line 67335
    .end local v0    # "density":F
    .end local v1    # "hPadding":I
    .end local v2    # "vPadding":I
    .end local v3    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x2e

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A07()V
    .locals 2

    .line 67336
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kp;->A0A:Lcom/facebook/ads/redexgen/X/Kp;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Kp;)V

    .line 67337
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kp;->A0A:Lcom/facebook/ads/redexgen/X/Kp;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Kp;)V

    .line 67338
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kp;->A0A:Lcom/facebook/ads/redexgen/X/Kp;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Kp;)V

    .line 67339
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kp;->A0A:Lcom/facebook/ads/redexgen/X/Kp;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Kp;)V

    .line 67340
    return-void
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x12d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Y6;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x38t
        0x1at
        0x9t
        0x14t
        0xet
        0x8t
        0x1et
        0x17t
        0x5bt
        0x9t
        0x1et
        0x15t
        0x1ft
        0x1et
        0x9t
        0x1et
        0x9t
        0x5bt
        0x16t
        0xet
        0x8t
        0xft
        0x5bt
        0x19t
        0x1et
        0x5bt
        0x8t
        0x1et
        0xft
        0x5bt
        0x19t
        0x1et
        0x1dt
        0x14t
        0x9t
        0x1et
        0x5bt
        0x15t
        0x1at
        0xft
        0x12t
        0xdt
        0x1et
        0x3at
        0x1ft
        0x55t
        0x1at
        0x1et
        0x1dt
        0x29t
        0x38t
        0x35t
        0x39t
        0x32t
        0x3ft
        0x39t
        0x12t
        0x39t
        0x28t
        0x2bt
        0x33t
        0x2et
        0x37t
        0x40t
        0x64t
        0x68t
        0x6et
        0x6ct
        0x29t
        0x7bt
        0x6ct
        0x67t
        0x6dt
        0x6ct
        0x7bt
        0x6ct
        0x7bt
        0x29t
        0x64t
        0x7ct
        0x7at
        0x7dt
        0x29t
        0x6bt
        0x6ct
        0x29t
        0x7at
        0x6ct
        0x7dt
        0x29t
        0x6bt
        0x6ct
        0x6ft
        0x66t
        0x7bt
        0x6ct
        0x29t
        0x67t
        0x68t
        0x7dt
        0x60t
        0x7ft
        0x6ct
        0x48t
        0x6dt
        0x27t
        0x60t
        0x44t
        0x48t
        0x4et
        0x4ct
        0x9t
        0x5bt
        0x4ct
        0x47t
        0x4dt
        0x4ct
        0x5bt
        0x4ct
        0x5bt
        0x9t
        0x44t
        0x5ct
        0x5at
        0x5dt
        0x9t
        0x4bt
        0x4ct
        0x9t
        0x5at
        0x4ct
        0x5dt
        0x9t
        0x4bt
        0x4ct
        0x4ft
        0x46t
        0x5bt
        0x4ct
        0x9t
        0x47t
        0x48t
        0x5dt
        0x40t
        0x5ft
        0x4ct
        0x6bt
        0x48t
        0x47t
        0x47t
        0x4ct
        0x5bt
        0x68t
        0x4dt
        0x7t
        0x12t
        0x35t
        0x2dt
        0x3at
        0x37t
        0x32t
        0x3ft
        0x7bt
        0xdt
        0x32t
        0x3et
        0x2ct
        0x7bt
        0x38t
        0x34t
        0x35t
        0x28t
        0x2ft
        0x29t
        0x2et
        0x38t
        0x2ft
        0x34t
        0x29t
        0x7bt
        0x2bt
        0x3at
        0x29t
        0x3at
        0x36t
        0x28t
        0x7bt
        0x2ft
        0x22t
        0x2bt
        0x3et
        0x75t
        0x1t
        0x2et
        0x3bt
        0x26t
        0x39t
        0x2at
        0x6ft
        0xet
        0x2bt
        0x6ft
        0x6t
        0x2ct
        0x20t
        0x21t
        0x6ft
        0x26t
        0x3ct
        0x6ft
        0x21t
        0x3at
        0x23t
        0x23t
        0x61t
        0xbt
        0x34t
        0x39t
        0x38t
        0x32t
        0x7dt
        0x2ft
        0x38t
        0x33t
        0x39t
        0x38t
        0x2ft
        0x38t
        0x2ft
        0x7dt
        0x30t
        0x28t
        0x2et
        0x29t
        0x7dt
        0x3ft
        0x38t
        0x7dt
        0x2et
        0x38t
        0x29t
        0x7dt
        0x3ft
        0x38t
        0x3bt
        0x32t
        0x2ft
        0x38t
        0x7dt
        0x33t
        0x3ct
        0x29t
        0x34t
        0x2bt
        0x38t
        0x1ct
        0x39t
        0x73t
        0x1at
        0xbt
        0x12t
        0x60t
        0x6ct
        0x6et
        0x2dt
        0x65t
        0x62t
        0x60t
        0x66t
        0x61t
        0x6ct
        0x6ct
        0x68t
        0x2dt
        0x62t
        0x67t
        0x70t
        0x2dt
        0x6dt
        0x62t
        0x77t
        0x6at
        0x75t
        0x66t
        0x2dt
        0x60t
        0x6ft
        0x6at
        0x60t
        0x68t
        0x66t
        0x67t
        0x75t
        0x6at
        0x67t
        0x66t
        0x6ct
        0x56t
        0x71t
        0x6ft
        0x3et
    .end array-data
.end method

.method private final A09(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 67341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->A01(Z)V

    .line 67342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->A01(Z)V

    .line 67344
    return-void
.end method

.method private A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Tp;)V
    .locals 5

    .line 67345
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0B:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v4, :cond_0

    .line 67346
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const-string v1, "tYahJlzELN2bWoIKGOvNb4V2q4om3tal"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "knO8IZUpKtredd0Q2IkvjJrJQGpJW1Qq"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 67347
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Tp;->A1d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67348
    return-void

    .line 67349
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Tp;->A1C()Ljava/lang/String;

    move-result-object v4

    .line 67350
    .local v0, "mediationData":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 67351
    .local v1, "context":Landroid/content/Context;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const-string v1, "LedcnhOkj71a4gNr9a9uwwPVwkpS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "bOPNktfa058vxRDYU7HJ2aiUk3a2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 67352
    :goto_0
    return-void

    .line 67353
    .local v1, "context":Landroid/content/Context;
    :cond_2
    if-nez v3, :cond_3

    goto :goto_0

    .line 67354
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Ou;->A01(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ov;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const-string v1, "IBU68ioTGuVBWJ1dkmCJ7UK76Osi7EVF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0B:Lcom/facebook/ads/redexgen/X/Ov;

    .line 67355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0B:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v0, :cond_5

    .line 67356
    :goto_1
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67357
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 67358
    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 67359
    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 67360
    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 67361
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_4

    .line 67362
    const/16 v1, 0x10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 67363
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 67364
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0B:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Y6;->A09(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67365
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0B:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 67366
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    return-void

    :cond_6
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0B:Lcom/facebook/ads/redexgen/X/Ov;

    .line 67367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0B:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0B(Landroid/widget/ImageView;)V
    .locals 4

    .line 67368
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0D:Z

    if-nez v0, :cond_2

    .line 67369
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y6;->A02:Landroid/widget/ImageView;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const-string v1, "9onWrVOda1qlu0pAvyXYf5LKITz29A5r"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "G6pev0JETY7bhqmEZOziJsmCoQM1bBBX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 67370
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 67371
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67372
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67373
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67375
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LL;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 67376
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A02:Landroid/widget/ImageView;

    .line 67377
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 67378
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/16 v2, 0x6a

    const/16 v1, 0x31

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;IILcom/facebook/ads/MediaView;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 67379
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    .line 67380
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A0B(Landroid/widget/ImageView;)V

    .line 67381
    new-instance v0, Lcom/facebook/ads/redexgen/X/N7;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/N7;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A0H(Lcom/facebook/ads/redexgen/X/N7;)V

    .line 67382
    new-instance v0, Lcom/facebook/ads/redexgen/X/19;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/19;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A08:Lcom/facebook/ads/redexgen/X/19;

    .line 67383
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y6;->A06()V

    .line 67384
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Y6;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 67385
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y6;->A07()V

    .line 67386
    return-void
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;ILcom/facebook/ads/MediaView;)V
    .locals 1

    .line 67387
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    .line 67388
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A0B(Landroid/widget/ImageView;)V

    .line 67389
    new-instance v0, Lcom/facebook/ads/redexgen/X/N7;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/N7;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A0H(Lcom/facebook/ads/redexgen/X/N7;)V

    .line 67390
    new-instance v0, Lcom/facebook/ads/redexgen/X/19;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/19;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A08:Lcom/facebook/ads/redexgen/X/19;

    .line 67391
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y6;->A06()V

    .line 67392
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Y6;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 67393
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y6;->A07()V

    .line 67394
    return-void
.end method

.method private final A0E(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 67395
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    .line 67396
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A0B(Landroid/widget/ImageView;)V

    .line 67397
    new-instance v0, Lcom/facebook/ads/redexgen/X/N7;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/N7;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A0H(Lcom/facebook/ads/redexgen/X/N7;)V

    .line 67398
    new-instance v0, Lcom/facebook/ads/redexgen/X/19;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/19;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A08:Lcom/facebook/ads/redexgen/X/19;

    .line 67399
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y6;->A06()V

    .line 67400
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Y6;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 67401
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y6;->A07()V

    .line 67402
    return-void
.end method

.method private final A0F(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 67403
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    .line 67404
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A0B(Landroid/widget/ImageView;)V

    .line 67405
    new-instance v0, Lcom/facebook/ads/redexgen/X/N7;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/N7;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A0H(Lcom/facebook/ads/redexgen/X/N7;)V

    .line 67406
    new-instance v0, Lcom/facebook/ads/redexgen/X/19;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/19;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A08:Lcom/facebook/ads/redexgen/X/19;

    .line 67407
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y6;->A06()V

    .line 67408
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Y6;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 67409
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y6;->A07()V

    .line 67410
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/Tp;ZLcom/facebook/ads/redexgen/X/Iy;)V
    .locals 3

    .line 67411
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Y6;->A02:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 67412
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04()Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v1

    .line 67413
    .local v0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Sf;
    if-eqz p2, :cond_0

    .line 67414
    new-instance v0, Lcom/facebook/ads/redexgen/X/YD;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/YD;-><init>(Lcom/facebook/ads/redexgen/X/Y6;Lcom/facebook/ads/redexgen/X/Tp;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A06(Lcom/facebook/ads/redexgen/X/N9;)Lcom/facebook/ads/redexgen/X/Sf;

    .line 67415
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Iy;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 67416
    return-void
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/N7;)V
    .locals 3

    .line 67417
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0D:Z

    if-nez v0, :cond_1

    .line 67418
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    if-eqz v1, :cond_0

    .line 67419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 67420
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/N7;->setVisibility(I)V

    .line 67421
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67422
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67424
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    .line 67425
    return-void

    .line 67426
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v2, 0x3f

    const/16 v1, 0x2b

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0I(Lcom/facebook/ads/NativeAd;)Z
    .locals 3

    .line 67427
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5S;->A03()Ljava/util/List;

    move-result-object v0

    .line 67428
    .local v0, "carousel":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/NativeAd;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 67429
    return v2

    .line 67430
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    .line 67431
    .local p0, "childNativeAd":Lcom/facebook/ads/NativeAd;
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-nez v0, :cond_1

    .line 67432
    return v2

    .line 67433
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private A0J(Lcom/facebook/ads/NativeAd;)Z
    .locals 2

    .line 67434
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt v1, v0, :cond_0

    .line 67435
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5S;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 67436
    :goto_0
    return v0

    .line 67437
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/Y6;Lcom/facebook/ads/NativeAd;)Z
    .locals 0

    .line 67438
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Y6;->A0J(Lcom/facebook/ads/NativeAd;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0L(Lcom/facebook/ads/NativeAd;)V
    .locals 17

    .line 67439
    move-object/from16 v4, p0

    move-object v4, v4

    .line 67440
    move-object/from16 v8, p1

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A11()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v2

    .line 67441
    .local v2, "adObjectContext":Lcom/facebook/ads/redexgen/X/Xc;
    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/Xc;->A0H(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 67442
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Xc;->A0G(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 67443
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0F(Lcom/facebook/ads/redexgen/X/0R;)V

    .line 67444
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/facebook/ads/redexgen/X/Y6;->A0D:Z

    .line 67445
    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tp;

    move-result-object v3

    .line 67446
    .local v4, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Tp;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1Q(Lcom/facebook/ads/MediaView;)V

    .line 67447
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A02:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67448
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A02:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67449
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A0z()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v9

    const/16 v1, 0xd

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-eqz v9, :cond_5

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A0z()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/1B;->A0a()Z

    move-result v12

    sget-object v10, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const/4 v9, 0x7

    aget-object v10, v10, v9

    const/16 v9, 0x15

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v9, 0x4c

    if-eq v10, v9, :cond_13

    sget-object v11, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const-string v10, "CvXrj9TTP1W52m7bIbynzmDbx8Ql"

    const/4 v9, 0x4

    aput-object v10, v11, v9

    const-string v10, "OGerX4RrBYJpkLXwbXTHIjvyoHPN"

    const/4 v9, 0x3

    aput-object v10, v11, v9

    if-eqz v12, :cond_5

    .line 67450
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A0z()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/1F;->A08()Ljava/lang/String;

    move-result-object v9

    .line 67451
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 67452
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A11()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v10

    sget-object v9, Lcom/facebook/ads/redexgen/X/0c;->A06:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v10, v9}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 67453
    :goto_0
    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/Y6;->A05()V

    .line 67454
    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v9, v5}, Lcom/facebook/ads/redexgen/X/N7;->setVisibility(I)V

    .line 67455
    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v9, v6, v6}, Lcom/facebook/ads/redexgen/X/N7;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 67456
    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v9, v5}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 67457
    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v9}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 67458
    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v9}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/5R;

    .line 67459
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/5R;->A03()V

    .line 67460
    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 67461
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 67462
    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    instance-of v5, v10, Lcom/facebook/ads/redexgen/X/My;

    if-eqz v5, :cond_3

    .line 67463
    check-cast v10, Lcom/facebook/ads/redexgen/X/My;

    sget-object v6, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v6, v6, v5

    const/16 v5, 0x18

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v5, 0x74

    if-eq v6, v5, :cond_2

    sget-object v9, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const-string v6, "rVZQRbya12lyykx5Eq2uFJ3JGH4l"

    const/4 v5, 0x4

    aput-object v6, v9, v5

    const-string v6, "XRSLHysRpGcYp4QaXPRJ4K4uNDdg"

    const/4 v5, 0x3

    aput-object v6, v9, v5

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/My;->A04()V

    .line 67464
    :cond_0
    :goto_1
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/5K;->A01(Z)V

    .line 67465
    new-instance v12, Lcom/facebook/ads/redexgen/X/YB;

    invoke-direct {v12, v4, v3, v8}, Lcom/facebook/ads/redexgen/X/YB;-><init>(Lcom/facebook/ads/redexgen/X/Y6;Lcom/facebook/ads/redexgen/X/Tp;Lcom/facebook/ads/NativeAd;)V

    .line 67466
    .local v14, "nativeDSLListener":Lcom/facebook/ads/redexgen/X/OB;
    new-instance v9, Lcom/facebook/ads/redexgen/X/8v;

    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    .line 67467
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v11

    .line 67468
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A0z()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v13

    const/4 v15, 0x4

    .line 67469
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A19()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v16

    const/16 v8, 0x105

    const/16 v6, 0x1f

    const/16 v5, 0x2c

    invoke-static {v8, v6, v5}, Lcom/facebook/ads/redexgen/X/Y6;->A04(III)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v9 .. v16}, Lcom/facebook/ads/redexgen/X/8v;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/OB;Lcom/facebook/ads/redexgen/X/Zs;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/LD;)V

    iput-object v9, v4, Lcom/facebook/ads/redexgen/X/Y6;->A0A:Lcom/facebook/ads/redexgen/X/8v;

    .line 67470
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/Y6;->A0A:Lcom/facebook/ads/redexgen/X/8v;

    sget-object v5, Lcom/facebook/ads/redexgen/X/Kp;->A0A:Lcom/facebook/ads/redexgen/X/Kp;

    invoke-static {v6, v5}, Lcom/facebook/ads/redexgen/X/Kp;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Kp;)V

    .line 67471
    const/4 v6, -0x2

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67472
    .local v5, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67473
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A0A:Lcom/facebook/ads/redexgen/X/8v;

    invoke-virtual {v1, v0, v5}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67474
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A0A:Lcom/facebook/ads/redexgen/X/8v;

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A00:Landroid/view/View;

    .line 67475
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Y6;->bringChildToFront(Landroid/view/View;)V

    .line 67476
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A0A:Lcom/facebook/ads/redexgen/X/8v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/8v;->setVisibility(I)V

    .line 67477
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A0A:Lcom/facebook/ads/redexgen/X/8v;

    invoke-direct {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Y6;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Tp;)V

    .line 67478
    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/5K;->A01(Z)V

    .line 67479
    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "nativeDSLListener":Lcom/facebook/ads/redexgen/X/OB;
    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/My;->A04()V

    goto :goto_1

    .line 67480
    :cond_3
    check-cast v10, Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v10, v6}, Lcom/facebook/ads/redexgen/X/E9;->setAdapter(Lcom/facebook/ads/redexgen/X/4N;)V

    goto :goto_1

    .line 67481
    :cond_4
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A11()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v10

    sget-object v9, Lcom/facebook/ads/redexgen/X/0c;->A05:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v10, v9}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    goto/16 :goto_0

    .line 67482
    :cond_5
    invoke-direct {v4, v8}, Lcom/facebook/ads/redexgen/X/Y6;->A0I(Lcom/facebook/ads/NativeAd;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 67483
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A11()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v9

    sget-object v8, Lcom/facebook/ads/redexgen/X/0c;->A03:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v9, v8}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 67484
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A17()Lcom/facebook/ads/redexgen/X/J1;

    move-result-object v9

    sget-object v8, Lcom/facebook/ads/redexgen/X/J1;->A0B:Lcom/facebook/ads/redexgen/X/J1;

    if-ne v9, v8, :cond_6

    const/4 v9, 0x1

    .line 67485
    .local v5, "enableTextInNativeCarousel":Z
    :goto_3
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/IK;->A2B(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v9, :cond_7

    .line 67486
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/5K;->A01(Z)V

    .line 67487
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v8}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v9

    .line 67488
    .local v11, "width":I
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v8}, Lcom/facebook/ads/MediaView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 67489
    .local v12, "parentView":Landroid/view/ViewGroup;
    :goto_4
    if-nez v9, :cond_9

    if-eqz v8, :cond_9

    .line 67490
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    .line 67491
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    goto :goto_4

    .line 67492
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 67493
    :cond_7
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A08:Lcom/facebook/ads/redexgen/X/19;

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    .line 67494
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/19;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/19;->setCurrentPosition(I)V

    .line 67495
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/19;

    .line 67496
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/19;->setShowTextInCarousel(Z)V

    .line 67497
    if-eqz v9, :cond_8

    .line 67498
    nop

    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    check-cast v7, Lcom/facebook/ads/redexgen/X/19;

    .line 67499
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A1H()Ljava/util/List;

    move-result-object v1

    .line 67500
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A16()Lcom/facebook/ads/redexgen/X/J0;

    move-result-object v0

    new-instance v8, Lcom/facebook/ads/redexgen/X/F5;

    invoke-direct {v8, v9, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/F5;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/19;Ljava/util/List;Lcom/facebook/ads/redexgen/X/J0;)V

    .line 67501
    .local v3, "viewAdapter":Lcom/facebook/ads/redexgen/X/Zt;
    .restart local v3    # "viewAdapter":Lcom/facebook/ads/redexgen/X/Zt;
    :goto_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/YA;

    invoke-direct {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/YA;-><init>(Lcom/facebook/ads/redexgen/X/Y6;Lcom/facebook/ads/redexgen/X/Tp;)V

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/Zt;->A0G(Lcom/facebook/ads/redexgen/X/17;)V

    .line 67502
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/E9;->setAdapter(Lcom/facebook/ads/redexgen/X/4N;)V

    goto :goto_6

    .line 67503
    .end local v3    # "viewAdapter":Lcom/facebook/ads/redexgen/X/Zt;
    :cond_8
    nop

    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    check-cast v7, Lcom/facebook/ads/redexgen/X/19;

    .line 67504
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A1H()Ljava/util/List;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v8, Lcom/facebook/ads/redexgen/X/F4;

    invoke-direct {v8, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/F4;-><init>(Lcom/facebook/ads/redexgen/X/19;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Xc;)V

    goto :goto_5

    .line 67505
    :cond_9
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 67506
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67507
    .local v9, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67508
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/My;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/My;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    .line 67509
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    invoke-virtual {v1, v0, v8}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67510
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/My;

    invoke-virtual {v0, v3, v9}, Lcom/facebook/ads/redexgen/X/My;->A05(Lcom/facebook/ads/redexgen/X/Tp;I)V

    .line 67511
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 67512
    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/5K;->A01(Z)V

    .line 67513
    .end local v9    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "width":I
    .end local v12    # "parentView":Landroid/view/ViewGroup;
    .end local v3
    :goto_6
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A00:Landroid/view/View;

    .line 67514
    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/Y6;->A05()V

    .line 67515
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/N7;->setVisibility(I)V

    .line 67516
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v0, v6, v6}, Lcom/facebook/ads/redexgen/X/N7;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 67517
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 67518
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 67519
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5R;

    .line 67520
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5R;->A03()V

    .line 67521
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Y6;->bringChildToFront(Landroid/view/View;)V

    .line 67522
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67523
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    invoke-direct {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Y6;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Tp;)V

    .line 67524
    .end local v5    # "enableTextInNativeCarousel":Z
    goto/16 :goto_2

    :cond_a
    invoke-direct {v4, v8}, Lcom/facebook/ads/redexgen/X/Y6;->A0J(Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 67525
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A11()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A09:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 67526
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A0C:Z

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1b(Z)V

    .line 67527
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A00:Landroid/view/View;

    .line 67528
    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/Y6;->A05()V

    .line 67529
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/N7;->setVisibility(I)V

    .line 67530
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v0, v6, v6}, Lcom/facebook/ads/redexgen/X/N7;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 67531
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 67532
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 67533
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/My;

    if-eqz v0, :cond_e

    .line 67534
    check-cast v1, Lcom/facebook/ads/redexgen/X/My;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/My;->A04()V

    .line 67535
    :cond_b
    :goto_7
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Y6;->bringChildToFront(Landroid/view/View;)V

    .line 67536
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/MediaViewVideoRenderer;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 67537
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5R;

    .line 67538
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/5R;->A04(Lcom/facebook/ads/NativeAd;)V

    .line 67539
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 67540
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A13()Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 67541
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/Xc;)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    .line 67542
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A05(II)Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Y9;

    invoke-direct {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Y9;-><init>(Lcom/facebook/ads/redexgen/X/Y6;Lcom/facebook/ads/redexgen/X/Tp;)V

    .line 67543
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A06(Lcom/facebook/ads/redexgen/X/N9;)Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v1

    .line 67544
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A13()Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Iy;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 67545
    :cond_c
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 67546
    sget-object v6, Lcom/facebook/ads/redexgen/X/Y6;->A0G:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x124

    const/16 v1, 0x9

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5S;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67547
    :cond_d
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Y6;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Tp;)V

    goto/16 :goto_2

    .line 67548
    :cond_e
    check-cast v1, Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/E9;->setAdapter(Lcom/facebook/ads/redexgen/X/4N;)V

    goto/16 :goto_7

    .line 67549
    :cond_f
    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67550
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A11()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A07:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 67551
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N7;->getBodyImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A00:Landroid/view/View;

    .line 67552
    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/Y6;->A05()V

    .line 67553
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 67554
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 67555
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5R;

    .line 67556
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5R;->A03()V

    .line 67557
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 67558
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    sget-object v5, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v5, v0

    const/4 v0, 0x2

    aget-object v5, v5, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_11

    .line 67559
    sget-object v5, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const-string v1, "Dgm0JyWXySbfCdb16XoSe7MN32Vp1QVj"

    const/4 v0, 0x7

    aput-object v1, v5, v0

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/My;

    if-eqz v0, :cond_12

    .line 67560
    :goto_8
    check-cast v1, Lcom/facebook/ads/redexgen/X/My;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/My;->A04()V

    .line 67561
    :cond_10
    :goto_9
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Y6;->bringChildToFront(Landroid/view/View;)V

    .line 67562
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/N7;->setVisibility(I)V

    .line 67563
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Lcom/facebook/ads/redexgen/X/N7;Lcom/facebook/ads/redexgen/X/Xc;)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    .line 67564
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A05(II)Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Y8;

    invoke-direct {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Y8;-><init>(Lcom/facebook/ads/redexgen/X/Y6;Lcom/facebook/ads/redexgen/X/Tp;)V

    .line 67565
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A06(Lcom/facebook/ads/redexgen/X/N9;)Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v1

    .line 67566
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A13()Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Iy;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 67567
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    invoke-direct {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Y6;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Tp;)V

    goto/16 :goto_2

    .line 67568
    :cond_11
    sget-object v5, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const-string v1, "D0GPDFfrMR6XieFyYC2vHynCiCjpaNUA"

    const/4 v0, 0x6

    aput-object v1, v5, v0

    const-string v1, "H5HDOQyqBcm6nNekaOStoZQ6HlGjXfWv"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/My;

    if-eqz v0, :cond_12

    goto :goto_8

    .line 67569
    :cond_12
    check-cast v1, Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/E9;->setAdapter(Lcom/facebook/ads/redexgen/X/4N;)V

    goto :goto_9

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0M(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V
    .locals 8

    .line 67570
    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A11()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v3

    .line 67571
    .local v0, "adObjectContext":Lcom/facebook/ads/redexgen/X/Xc;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Xc;->A0G(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 67572
    invoke-virtual {v3, p0}, Lcom/facebook/ads/redexgen/X/Xc;->A0H(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 67573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0D:Z

    .line 67574
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Tp;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tp;

    move-result-object v6

    .line 67575
    .local v1, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Tp;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1P(Lcom/facebook/ads/MediaView;)V

    .line 67576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/N7;->setVisibility(I)V

    .line 67577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/facebook/ads/redexgen/X/N7;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 67578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 67579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 67580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5R;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5R;->A03()V

    .line 67581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 67582
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67583
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/My;

    if-eqz v0, :cond_5

    .line 67584
    check-cast v1, Lcom/facebook/ads/redexgen/X/My;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/My;->A04()V

    .line 67585
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A02:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A02:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Y6;->bringChildToFront(Landroid/view/View;)V

    .line 67587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A02:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A00:Landroid/view/View;

    .line 67588
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tp;->A14()Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v2

    .line 67589
    .local v2, "adIcon":Lcom/facebook/ads/redexgen/X/Iy;
    if-eqz v2, :cond_3

    .line 67590
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tp;->A10()Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Iy;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6M;->A0M(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 67591
    .local v3, "preloadedBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 67592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67593
    if-eqz p2, :cond_1

    .line 67594
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/YE;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/redexgen/X/YE;-><init>(Lcom/facebook/ads/redexgen/X/Y6;Lcom/facebook/ads/redexgen/X/Tp;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->post(Ljava/lang/Runnable;)Z

    .line 67595
    .end local v3    # "preloadedBitmap":Landroid/graphics/Bitmap;
    .end local v4
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A02:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/Y6;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Tp;)V

    .line 67596
    return-void

    .line 67597
    :cond_2
    invoke-direct {p0, v6, p2, v2}, Lcom/facebook/ads/redexgen/X/Y6;->A0G(Lcom/facebook/ads/redexgen/X/Tp;ZLcom/facebook/ads/redexgen/X/Iy;)V

    goto :goto_1

    .line 67598
    :cond_3
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tp;->A15()Lcom/facebook/ads/redexgen/X/To;

    move-result-object v7

    .line 67599
    .local v3, "adListener":Lcom/facebook/ads/redexgen/X/To;
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 67600
    .local v4, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    .line 67601
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tp;->A0x()J

    move-result-wide v2

    .line 67602
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 67603
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 67604
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 67605
    if-eqz v7, :cond_4

    .line 67606
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/JA;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/facebook/ads/redexgen/X/Io;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 67607
    :cond_4
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2e

    const/16 v1, 0x11

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67608
    invoke-interface {p1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    .line 67610
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A0W:I

    const/16 v2, 0xc0

    const/16 v1, 0x17

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A04(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;)V

    .line 67611
    const/16 v2, 0x102

    const/4 v1, 0x3

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    goto :goto_1

    .line 67612
    :cond_5
    check-cast v1, Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/E9;->setAdapter(Lcom/facebook/ads/redexgen/X/4N;)V

    goto/16 :goto_0
.end method

.method public final A0N()Z
    .locals 1

    .line 67613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A5d()Lcom/facebook/ads/redexgen/X/Xc;
    .locals 1

    .line 67614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    return-object v0
.end method

.method public final bringChildToFront(Landroid/view/View;)V
    .locals 2

    .line 67615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A01:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A02:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 67616
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 67617
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0B:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v1, :cond_1

    .line 67618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 67619
    :cond_1
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 67620
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    .line 67621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->destroy()V

    .line 67622
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 0

    .line 67623
    return-object p0
.end method

.method public final getAdContentsView()Landroid/view/View;
    .locals 1

    .line 67624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A00:Landroid/view/View;

    return-object v0
.end method

.method public final getMediaHeight()I
    .locals 4

    .line 67625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N7;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 67626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N7;->getImageHeight()I

    move-result v0

    return v0

    .line 67627
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 67628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 67629
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 67630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v0

    return v0

    .line 67631
    :cond_2
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const-string v1, "3C5Zne3gt6SFfa7y1AnuQltffgpI3Oh8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final getMediaWidth()I
    .locals 4

    .line 67632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N7;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 67633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A09:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N7;->getImageWidth()I

    move-result v0

    return v0

    .line 67634
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 67635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    .line 67636
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 67637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    return v0

    .line 67638
    :cond_2
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const-string v1, "pFreRfYdfw1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "pVUprXCJsnglf8IlGtX2XFBaJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final initialize(Lcom/facebook/ads/internal/api/AdViewConstructorParams;Lcom/facebook/ads/MediaView;)V
    .locals 10

    .line 67639
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 67640
    .local v0, "context":Landroid/content/Context;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/Xc;

    if-eqz v0, :cond_3

    .line 67641
    check-cast v1, Lcom/facebook/ads/redexgen/X/Xc;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    .line 67642
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Xc;->A0H(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 67643
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getInitializationType()I

    move-result v1

    const/4 v3, 0x1

    move-object v9, p2

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    .line 67644
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    .line 67645
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v6

    .line 67646
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v7

    .line 67647
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleRes()I

    move-result v8

    .line 67648
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Y6;->A0C(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;IILcom/facebook/ads/MediaView;)V

    .line 67649
    :goto_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/5K;->A01(Z)V

    .line 67650
    return-void

    .line 67651
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    .line 67652
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v1

    .line 67653
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v0

    .line 67654
    invoke-direct {p0, v2, v1, v0, v9}, Lcom/facebook/ads/redexgen/X/Y6;->A0D(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;ILcom/facebook/ads/MediaView;)V

    .line 67655
    goto :goto_1

    .line 67656
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, v1, v0, v9}, Lcom/facebook/ads/redexgen/X/Y6;->A0E(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;Lcom/facebook/ads/MediaView;)V

    .line 67657
    goto :goto_1

    .line 67658
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct {p0, v0, v9}, Lcom/facebook/ads/redexgen/X/Y6;->A0F(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/MediaView;)V

    .line 67659
    goto :goto_1

    .line 67660
    :cond_3
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/5M;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    goto :goto_0

    .line 67661
    :cond_4
    const/16 v2, 0x9b

    const/16 v1, 0x25

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V
    .locals 0

    .line 67662
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/5K;->onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V

    .line 67663
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Y6;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 67664
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 5

    .line 67665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v1

    .line 67666
    .local v0, "currentWidth":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v4

    .line 67667
    .local v1, "currentHeight":I
    if-lez v1, :cond_0

    if-lez v4, :cond_0

    .line 67668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->repair(Ljava/lang/Throwable;)V

    .line 67669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67670
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const-string v1, "Mgb6bOJjyiN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "MTEeDXbdwkPsq4eW7ABfM3WBi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67671
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    const v0, -0x333334

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->setBackgroundColor(I)V

    .line 67672
    :goto_0
    return-void

    .line 67673
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->repair(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final setListener(Lcom/facebook/ads/MediaViewListener;)V
    .locals 2

    .line 67674
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A04:Lcom/facebook/ads/MediaViewListener;

    .line 67675
    if-nez p1, :cond_0

    .line 67676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5R;

    const/4 v0, 0x0

    .line 67677
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5R;->A07(Lcom/facebook/ads/redexgen/X/Ls;)V

    .line 67678
    return-void

    .line 67679
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5R;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Y7;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Y7;-><init>(Lcom/facebook/ads/redexgen/X/Y6;Lcom/facebook/ads/MediaViewListener;)V

    .line 67680
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5R;->A07(Lcom/facebook/ads/redexgen/X/Ls;)V

    .line 67681
    return-void
.end method

.method public final setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 4

    .line 67682
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0D:Z

    if-nez v0, :cond_3

    .line 67683
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y6;->A0F:[Ljava/lang/String;

    const-string v1, "ifAS5bhxfK6Gg4eu5Yemnhg9EBEfp9jT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "R5YDbsM1msNnvJcIFydw3DY2O0brJ9d9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 67684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 67685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->destroy()V

    .line 67686
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    .line 67687
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5R;->A05(Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 67688
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 67689
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67690
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Y6;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Y6;->A09(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67692
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 67693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    instance-of v0, v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A0C:Z

    .line 67694
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LL;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setId(I)V

    .line 67695
    return-void

    .line 67696
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 67697
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/16 v2, 0xd7

    const/16 v1, 0x2b

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
