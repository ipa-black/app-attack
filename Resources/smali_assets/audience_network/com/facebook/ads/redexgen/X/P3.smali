.class public final Lcom/facebook/ads/redexgen/X/P3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/P2;
    }
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Sa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/18;

.field public final A02:Lcom/facebook/ads/redexgen/X/1J;

.field public final A03:Lcom/facebook/ads/redexgen/X/1N;

.field public final A04:Lcom/facebook/ads/redexgen/X/1V;

.field public final A05:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A06:Lcom/facebook/ads/redexgen/X/Ii;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 48308
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "67PC1vS7qkP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IjFo3BG6VwtzNtFBLMxB3hm7uxcMitzp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CicRHWg02u8tYTVNboa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Lc1HqPOOGgkkm0o4iF185HVfJQb2Oy4J"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rfUiy7qGv2cTTJD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "veTQu7RBhk0w6DuY7Y8JViB1PkIKs"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nFnk8VxBkehLa6QhTm5QccOE2IAl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "l0nPd7gOfqjUiTZVoVDHfvPfOU4VPF8e"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/P3;->A07:[Ljava/lang/String;

    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/P3;->A0A:I

    .line 48309
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x42900000    # 72.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/P3;->A08:I

    .line 48310
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/P3;->A09:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Zs;)V
    .locals 2

    .line 48311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48312
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P3;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    .line 48313
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A06:Lcom/facebook/ads/redexgen/X/Ii;

    .line 48314
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A01:Lcom/facebook/ads/redexgen/X/18;

    .line 48315
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A02:Lcom/facebook/ads/redexgen/X/1J;

    .line 48316
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A04:Lcom/facebook/ads/redexgen/X/1V;

    .line 48317
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0G()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A03:Lcom/facebook/ads/redexgen/X/1N;

    .line 48318
    return-void
.end method

.method private A00()Landroid/view/View;
    .locals 6

    .line 48319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v5, Lcom/facebook/ads/redexgen/X/E9;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/E9;-><init>(Landroid/content/Context;)V

    .line 48320
    .local v0, "mScreenshotsRecyclerView":Lcom/facebook/ads/redexgen/X/E9;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/P3;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ye;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/Ye;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/E9;->setLayoutManager(Lcom/facebook/ads/redexgen/X/4Z;)V

    .line 48321
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/P3;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A03:Lcom/facebook/ads/redexgen/X/1N;

    .line 48322
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1N;->A01()Ljava/util/List;

    move-result-object v3

    sget v2, Lcom/facebook/ads/redexgen/X/P3;->A0A:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P3;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    new-instance v0, Lcom/facebook/ads/redexgen/X/RL;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/RL;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/util/List;ILcom/facebook/ads/redexgen/X/Sa;)V

    .line 48323
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/E9;->setAdapter(Lcom/facebook/ads/redexgen/X/4N;)V

    .line 48324
    return-object v5
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Sa;)Landroid/view/View;
    .locals 12
    .param p1    # Lcom/facebook/ads/redexgen/X/Sa;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 48325
    new-instance v6, Lcom/facebook/ads/redexgen/X/Na;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/P3;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A01:Lcom/facebook/ads/redexgen/X/18;

    .line 48326
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Na;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1L;ZZZ)V

    .line 48327
    .local v0, "titleAndDescriptionContainer":Lcom/facebook/ads/redexgen/X/Na;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A02:Lcom/facebook/ads/redexgen/X/1J;

    .line 48328
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A06()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A02:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A01()Ljava/lang/String;

    move-result-object v8

    .line 48329
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Na;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 48330
    const/16 v5, 0x11

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Na;->setAlignment(I)V

    .line 48331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v4, Lcom/facebook/ads/redexgen/X/NU;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 48332
    .local v2, "imageView":Lcom/facebook/ads/redexgen/X/NU;
    const/4 v3, 0x0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 48333
    const/16 v0, 0x32

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NU;->setRadius(I)V

    .line 48334
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P3;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 48335
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04()Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v1

    .line 48336
    .local v4, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Sf;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A04:Lcom/facebook/ads/redexgen/X/1V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1V;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 48337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48338
    .local v5, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48339
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 48340
    sget v1, Lcom/facebook/ads/redexgen/X/P3;->A08:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48341
    .local v1, "imageParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48342
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48343
    .local v6, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/P3;->A09:I

    invoke-virtual {v1, v3, v0, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 48344
    invoke-virtual {v2, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48345
    if-eqz p1, :cond_0

    .line 48346
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 48347
    invoke-virtual {v2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48348
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Sa;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48349
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/LL;->A0H(Landroid/view/View;)V

    .line 48350
    :cond_0
    return-object v2
.end method

.method private final A02()Lcom/facebook/ads/redexgen/X/P2;
    .locals 4

    .line 48351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P3;->A03:Lcom/facebook/ads/redexgen/X/1N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1N;->A01()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48352
    sget-object v0, Lcom/facebook/ads/redexgen/X/P2;->A04:Lcom/facebook/ads/redexgen/X/P2;

    return-object v0

    .line 48353
    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/P2;->A03:Lcom/facebook/ads/redexgen/X/P2;

    sget-object v2, Lcom/facebook/ads/redexgen/X/P3;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/P3;->A07:[Ljava/lang/String;

    const-string v1, "qwlEjiYhEcV8j1J"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/Sa;)Landroid/util/Pair;
    .locals 5
    .param p1    # Lcom/facebook/ads/redexgen/X/Sa;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Sa;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/redexgen/X/P2;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 48354
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P3;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    .line 48355
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/P3;->A02()Lcom/facebook/ads/redexgen/X/P2;

    move-result-object v3

    .line 48356
    .local v0, "endCardViewType":Lcom/facebook/ads/redexgen/X/P2;
    sget-object v1, Lcom/facebook/ads/redexgen/X/P1;->A00:[I

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/P2;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    .line 48357
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/P3;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    sget-object v1, Lcom/facebook/ads/redexgen/X/P3;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/P3;->A07:[Ljava/lang/String;

    const-string v1, "Oe6IO8Uak3tx5GvHWoKp5mKUb4E2rtDt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "t7tx5cDm578ghKblxCWBuUm65hKnqcQl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/P3;->A01(Lcom/facebook/ads/redexgen/X/Sa;)Landroid/view/View;

    move-result-object v2

    .local v1, "endCardView":Landroid/view/View;
    goto :goto_0

    .line 48358
    .end local v1    # "endCardView":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/P3;->A00()Landroid/view/View;

    move-result-object v2

    .line 48359
    .restart local v1    # "endCardView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P3;->A06:Lcom/facebook/ads/redexgen/X/Ii;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ih;->A0S:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ik;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ii;Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 48360
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
