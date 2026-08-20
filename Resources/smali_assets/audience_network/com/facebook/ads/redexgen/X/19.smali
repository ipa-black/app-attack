.class public final Lcom/facebook/ads/redexgen/X/19;
.super Lcom/facebook/ads/redexgen/X/1h;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ok;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Lp;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/Lp;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/Ad;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3041
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "T7MK6mm4Fzbg8PTMnM4kcHpb21LLpIaw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PTQtUxKdjysMmbj8hCZsGKEwd1IRWqqZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Zw8mt4VncD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "79VYCrnrWW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2MnAMBnkkiKtyd2cP7mHhabJycDYuMiE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jaMauIT7sdi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OgIH7ZaBRtH9hoDgrnw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xZmsCngT77DU5lblEiekqTVKPqNdsast"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/19;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/19;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 3

    .line 3042
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1h;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 3043
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A03:I

    .line 3044
    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A02:I

    .line 3045
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A01:I

    .line 3046
    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    .line 3047
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/19;->A05:Z

    .line 3048
    new-instance v2, Lcom/facebook/ads/redexgen/X/Oh;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Oh;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Og;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Og;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ad;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Ad;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Oh;Lcom/facebook/ads/redexgen/X/Og;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A06:Lcom/facebook/ads/redexgen/X/Ad;

    .line 3049
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/19;->A02()V

    .line 3050
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;)V
    .locals 3

    .line 3051
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1h;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;)V

    .line 3052
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A03:I

    .line 3053
    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A02:I

    .line 3054
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A01:I

    .line 3055
    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    .line 3056
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/19;->A05:Z

    .line 3057
    new-instance v2, Lcom/facebook/ads/redexgen/X/Oh;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Oh;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Og;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Og;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ad;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Ad;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Oh;Lcom/facebook/ads/redexgen/X/Og;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A06:Lcom/facebook/ads/redexgen/X/Ad;

    .line 3058
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/19;->A02()V

    .line 3059
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3060
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1h;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V

    .line 3061
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A03:I

    .line 3062
    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A02:I

    .line 3063
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A01:I

    .line 3064
    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    .line 3065
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/19;->A05:Z

    .line 3066
    new-instance v2, Lcom/facebook/ads/redexgen/X/Oh;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Oh;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Og;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Og;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ad;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Ad;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Oh;Lcom/facebook/ads/redexgen/X/Og;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A06:Lcom/facebook/ads/redexgen/X/Ad;

    .line 3067
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/19;->A02()V

    .line 3068
    return-void
.end method

.method private A00(I)I
    .locals 7

    .line 3069
    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    mul-int/lit8 v6, v0, 0x2

    .line 3070
    .local v0, "spacing":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/19;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/19;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    .line 3071
    .local v1, "availableWidth":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/E9;->getAdapter()Lcom/facebook/ads/redexgen/X/4N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0D()I

    move-result v4

    .line 3072
    .local v2, "numItems":I
    const/4 v3, 0x0

    .line 3073
    .local v3, "numFullItems":I
    const v0, 0x7fffffff

    .line 3074
    .local v4, "itemSize":I
    :goto_0
    if-le v0, p1, :cond_1

    .line 3075
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v4, :cond_0

    .line 3076
    return p1

    .line 3077
    :cond_0
    mul-int v0, v3, v6

    sub-int v0, v5, v0

    int-to-float v2, v0

    int-to-float v1, v3

    const v0, 0x3eaa7efa    # 0.333f

    add-float/2addr v1, v0

    div-float/2addr v2, v1

    float-to-int v0, v2

    goto :goto_0

    .line 3078
    :cond_1
    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/19;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 2

    .line 3079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A06:Lcom/facebook/ads/redexgen/X/Ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ye;->A2E(I)V

    .line 3080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A06:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/1h;->setLayoutManager(Lcom/facebook/ads/redexgen/X/4Z;)V

    .line 3081
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/19;->setSaveEnabled(Z)V

    .line 3082
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/1h;->setSnapDelegate(Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 3083
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 3084
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/19;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x6t
        -0x7t
        -0x25t
        -0x14t
        -0xet
        -0x10t
        -0x32t
        -0xdt
        -0x14t
        -0x7t
        -0xet
        -0x10t
        -0x11t
    .end array-data
.end method

.method private A04(II)V
    .locals 3

    .line 3085
    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A03:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A02:I

    if-ne p2, v0, :cond_0

    .line 3086
    return-void

    .line 3087
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/19;->A03:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/19;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_2

    .line 3088
    sget-object v2, Lcom/facebook/ads/redexgen/X/19;->A08:[Ljava/lang/String;

    const-string v1, "hNBaptvkpj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput p2, p0, Lcom/facebook/ads/redexgen/X/19;->A02:I

    .line 3089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A04:Lcom/facebook/ads/redexgen/X/Lp;

    if-eqz v0, :cond_1

    .line 3090
    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/19;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3091
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A23(IZ)V
    .locals 1

    .line 3092
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1h;->A23(IZ)V

    .line 3093
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/19;->A04(II)V

    .line 3094
    return-void
.end method

.method public final A7Q(I)I
    .locals 3

    .line 3095
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3096
    .local v0, "scrollXAbs":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1h;->A06:I

    if-gt v2, v0, :cond_0

    .line 3097
    const/4 v0, 0x0

    return v0

    .line 3098
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/19;->A01:I

    const/4 v0, 0x1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    div-int/2addr v2, v1

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public getChildSpacing()I
    .locals 1

    .line 3099
    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    return v0
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 3100
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/E9;->onMeasure(II)V

    .line 3101
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/19;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/19;->getPaddingBottom()I

    move-result v0

    add-int/2addr v3, v0

    .line 3102
    .local v0, "verticalPadding":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/19;->A05:Z

    if-eqz v0, :cond_4

    .line 3103
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    float-to-int v2, v0

    .line 3104
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/19;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0D(Landroid/content/Context;)I

    move-result v0

    mul-int/2addr v2, v0

    add-int/2addr v2, v3

    .line 3105
    .local v1, "height":I
    .restart local v1    # "height":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v1, v0, :cond_2

    .line 3106
    :goto_1
    sub-int/2addr v2, v3

    .line 3107
    .local v2, "itemSize":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/19;->A05:Z

    if-eqz v0, :cond_1

    .line 3108
    sget v0, Lcom/facebook/ads/redexgen/X/Ll;->A09:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3109
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/19;->getMeasuredWidth()I

    move-result v1

    add-int v0, v2, v3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/19;->setMeasuredDimension(II)V

    .line 3110
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/19;->A05:Z

    if-nez v0, :cond_0

    .line 3111
    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/19;->setChildWidth(I)V

    .line 3112
    :cond_0
    return-void

    .line 3113
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/19;->A00(I)I

    move-result v2

    goto :goto_2

    .line 3114
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 3115
    goto :goto_1

    .line 3116
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 3117
    .end local v1    # "height":I
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/19;->getMeasuredWidth()I

    move-result v0

    int-to-float v1, v0

    const v0, 0x3ff47ae1    # 1.91f

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0
.end method

.method public setAdapter(Lcom/facebook/ads/redexgen/X/4N;)V
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/4N;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3118
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/19;->A06:Lcom/facebook/ads/redexgen/X/Ad;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A2L(I)V

    .line 3119
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/E9;->setAdapter(Lcom/facebook/ads/redexgen/X/4N;)V

    .line 3120
    return-void

    .line 3121
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setChildSpacing(I)V
    .locals 0

    .line 3122
    iput p1, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    .line 3123
    return-void
.end method

.method public setChildWidth(I)V
    .locals 6

    .line 3124
    iput p1, p0, Lcom/facebook/ads/redexgen/X/19;->A01:I

    .line 3125
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/19;->getMeasuredWidth()I

    move-result v5

    .line 3126
    .local v0, "pageWidth":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/19;->getPaddingLeft()I

    move-result v0

    sub-int v2, v5, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/19;->getPaddingRight()I

    move-result v0

    sub-int/2addr v2, v0

    .line 3127
    .local v1, "innerWidth":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/19;->A06:Lcom/facebook/ads/redexgen/X/Ad;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A01:I

    sub-int/2addr v2, v0

    div-int/lit8 v0, v2, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A2M(I)V

    .line 3128
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/19;->A06:Lcom/facebook/ads/redexgen/X/Ad;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A01:I

    int-to-double v2, v0

    int-to-double v0, v5

    div-double/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/Ad;->A2K(D)V

    .line 3129
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 1

    .line 3130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/19;->A23(IZ)V

    .line 3131
    return-void
.end method

.method public setOnPageChangedListener(Lcom/facebook/ads/redexgen/X/Lp;)V
    .locals 0

    .line 3132
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/19;->A04:Lcom/facebook/ads/redexgen/X/Lp;

    .line 3133
    return-void
.end method

.method public setShowTextInCarousel(Z)V
    .locals 0

    .line 3134
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/19;->A05:Z

    .line 3135
    return-void
.end method
