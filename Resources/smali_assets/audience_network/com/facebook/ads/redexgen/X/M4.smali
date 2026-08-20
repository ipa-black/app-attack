.class public final Lcom/facebook/ads/redexgen/X/M4;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:Landroid/widget/ImageView;

.field public final A03:Landroid/widget/LinearLayout;

.field public final A04:Landroid/widget/TextView;

.field public final A05:Lcom/facebook/ads/redexgen/X/NK;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 44061
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RdKbZKE5ShqjtspsYuId0BpVT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jFs6Ox2yxsj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "O0DGVMIkWcl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZjYxtVw01iwSMNXN0b17Jtyc9gHU9Z2d"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "b1LSaO6GQJOSELIr8C99"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wukZGaaSm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/M4;->A06:[Ljava/lang/String;

    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41700000    # 15.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M4;->A07:I

    .line 44062
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M4;->A08:I

    .line 44063
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M4;->A09:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;I)V
    .locals 3

    .line 44064
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44065
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/M4;->A01:Z

    .line 44066
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Landroid/widget/ImageView;

    .line 44067
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/M4;->A08:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 44068
    new-instance v0, Lcom/facebook/ads/redexgen/X/NK;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/NK;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A05:Lcom/facebook/ads/redexgen/X/NK;

    .line 44069
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A05:Lcom/facebook/ads/redexgen/X/NK;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NK;->setProgress(F)V

    .line 44070
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A05:Lcom/facebook/ads/redexgen/X/NK;

    sget v0, Lcom/facebook/ads/redexgen/X/M4;->A08:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/NK;->setPadding(IIII)V

    .line 44071
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A04:Landroid/widget/TextView;

    .line 44072
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/M4;->setOrientation(I)V

    .line 44073
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A03:Landroid/widget/LinearLayout;

    .line 44074
    iput p2, p0, Lcom/facebook/ads/redexgen/X/M4;->A00:I

    .line 44075
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M4;->A00()V

    .line 44076
    return-void
.end method

.method private A00()V
    .locals 7

    .line 44077
    iget v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarActionMode(I)V

    .line 44078
    const/4 v4, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44079
    .local v0, "actionContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/M4;->setGravity(I)V

    .line 44080
    sget v0, Lcom/facebook/ads/redexgen/X/M4;->A09:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44081
    .local v3, "actionIconParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/M4;->A04:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 44082
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A04:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44083
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A04:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44084
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44085
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A05:Lcom/facebook/ads/redexgen/X/NK;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/M4;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44087
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44088
    .local v1, "actionTextLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A04:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/M4;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44090
    return-void
.end method

.method private A01()V
    .locals 6

    .line 44091
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A05:Lcom/facebook/ads/redexgen/X/NK;

    .line 44092
    iget v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A00:I

    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-ne v0, v4, :cond_5

    .line 44093
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A01:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    .line 44094
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NK;->setVisibility(I)V

    .line 44095
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Landroid/widget/ImageView;

    .line 44096
    iget v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A00:I

    const/4 v0, 0x5

    if-ne v1, v0, :cond_2

    .line 44097
    const/4 v5, 0x4

    .line 44098
    :cond_1
    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44099
    return-void

    .line 44100
    :cond_2
    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_3

    goto :goto_1

    .line 44101
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 44102
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 44103
    :cond_5
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/1L;ZZ)V
    .locals 4

    .line 44104
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/1L;->A04(Z)I

    move-result v2

    .line 44105
    .local v0, "accentColor":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A05:Lcom/facebook/ads/redexgen/X/NK;

    .line 44106
    const/16 v0, 0x4d

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/2a;->A01(II)I

    move-result v0

    .line 44107
    const/16 v3, 0x6e

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/ads/redexgen/X/NK;->A02(III)V

    .line 44108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44109
    const/4 v2, -0x1

    if-eqz p3, :cond_0

    .line 44110
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A04:Landroid/widget/TextView;

    .line 44111
    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/2a;->A01(II)I

    move-result v0

    .line 44112
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44113
    :goto_0
    return-void

    .line 44114
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final A03()Z
    .locals 1

    .line 44115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final A04()Z
    .locals 2

    .line 44116
    iget v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A00:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getToolbarActionMode()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 44117
    iget v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A00:I

    return v0
.end method

.method public setActionClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 44118
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/M4;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44119
    return-void
.end method

.method public setInitialUnskippableSeconds(I)V
    .locals 1

    .line 44120
    if-lez p1, :cond_0

    .line 44121
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarActionMode(I)V

    .line 44122
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 44123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A05:Lcom/facebook/ads/redexgen/X/NK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NK;->setProgressWithAnimation(F)V

    .line 44124
    return-void
.end method

.method public setProgressClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A05:Lcom/facebook/ads/redexgen/X/NK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NK;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44126
    return-void
.end method

.method public setProgressImage(Lcom/facebook/ads/redexgen/X/LT;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/LT;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A05:Lcom/facebook/ads/redexgen/X/NK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NK;->setImage(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 44128
    return-void
.end method

.method public setProgressImmediate(F)V
    .locals 1

    .line 44129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A05:Lcom/facebook/ads/redexgen/X/NK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NK;->clearAnimation()V

    .line 44130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A05:Lcom/facebook/ads/redexgen/X/NK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NK;->setProgress(F)V

    .line 44131
    return-void
.end method

.method public setProgressSpinnerInvisible(Z)V
    .locals 0

    .line 44132
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/M4;->A01:Z

    .line 44133
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M4;->A01()V

    .line 44134
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 5

    .line 44135
    iput p1, p0, Lcom/facebook/ads/redexgen/X/M4;->A00:I

    .line 44136
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M4;->A01()V

    .line 44137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/M4;->setVisibility(I)V

    .line 44138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    .line 44139
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Landroid/widget/ImageView;

    const/16 v0, 0xff

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 44140
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/M4;->A08:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 44141
    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    .line 44142
    sget-object v2, Lcom/facebook/ads/redexgen/X/LT;->A0F:Lcom/facebook/ads/redexgen/X/LT;

    .line 44143
    .local v0, "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/LU;->A01(Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/M4;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/M4;->A06:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44144
    const/16 v1, 0x3ea

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0G(ILandroid/view/View;)V

    .line 44145
    return-void

    .line 44146
    .end local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/LT;->A0F:Lcom/facebook/ads/redexgen/X/LT;

    .line 44147
    .restart local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    .line 44148
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Landroid/widget/ImageView;

    const/16 v0, 0x6e

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 44149
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/M4;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 44150
    goto :goto_0

    .line 44151
    .end local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/LT;->A0F:Lcom/facebook/ads/redexgen/X/LT;

    .line 44152
    .restart local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    goto :goto_0

    .line 44153
    .end local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/LT;->A0F:Lcom/facebook/ads/redexgen/X/LT;

    .line 44154
    .restart local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    goto :goto_0

    .line 44155
    .end local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/LT;->A0F:Lcom/facebook/ads/redexgen/X/LT;

    .line 44156
    .restart local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44157
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/M4;->setVisibility(I)V

    .line 44158
    goto :goto_0

    .line 44159
    .end local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/LT;->A0N:Lcom/facebook/ads/redexgen/X/LT;

    .line 44160
    .restart local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    goto :goto_0

    .line 44161
    .end local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/LT;->A0U:Lcom/facebook/ads/redexgen/X/LT;

    .line 44162
    .restart local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    goto :goto_0

    .line 44163
    .end local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/LT;->A0F:Lcom/facebook/ads/redexgen/X/LT;

    .line 44164
    .restart local v0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/LT;
    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setToolbarMessage(Ljava/lang/String;)V
    .locals 2

    .line 44165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44166
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A04:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44167
    return-void

    .line 44168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setToolbarMessageEnabled(Z)V
    .locals 2

    .line 44169
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A04:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44170
    return-void

    .line 44171
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
