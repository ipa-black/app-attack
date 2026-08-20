.class public final Lcom/facebook/ads/redexgen/X/SW;
.super Lcom/facebook/ads/redexgen/X/ND;
.source ""


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I

.field public static final A0N:I

.field public static final A0O:I

.field public static final A0P:I

.field public static final A0Q:I

.field public static final A0R:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/widget/LinearLayout;

.field public A03:Landroid/widget/TextView;

.field public A04:Landroid/widget/TextView;

.field public A05:Landroid/widget/TextView;

.field public A06:Lcom/facebook/ads/redexgen/X/1J;

.field public A07:Lcom/facebook/ads/redexgen/X/1L;

.field public A08:Lcom/facebook/ads/redexgen/X/1M;

.field public A09:Lcom/facebook/ads/redexgen/X/NW;

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Landroid/widget/LinearLayout;

.field public final A0D:Landroid/widget/RelativeLayout;

.field public final A0E:Landroid/widget/RelativeLayout;

.field public final A0F:Landroid/widget/TextView;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A0H:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 52341
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZYFZvgakVe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Z9juamcNffZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "L6NhnuluGVbfOuIZp07EBLc1k7rVfOba"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "poGipFcmqzgO1AN9d1VwktKUuwbeuE2x"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1MA0bi3k"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zUZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "l0mlyabDLiJh1QvHe0VixDkOpEP8aZzg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KStQaqdBmF0CfboN9Wjc4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SW;->A0J:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SW;->A08()V

    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2a;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/SW;->A0Q:I

    .line 52342
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SW;->A0N:I

    .line 52343
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SW;->A0O:I

    .line 52344
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41d00000    # 26.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SW;->A0K:I

    .line 52345
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x43100000    # 144.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SW;->A0M:I

    .line 52346
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SW;->A0L:I

    .line 52347
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SW;->A0P:I

    .line 52348
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41600000    # 14.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SW;->A0R:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;IZLcom/facebook/ads/redexgen/X/1L;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V
    .locals 13

    .line 52349
    move-object v2, p0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/ND;-><init>(Lcom/facebook/ads/redexgen/X/Xc;ILcom/facebook/ads/redexgen/X/1L;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V

    .line 52350
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A0B:Z

    .line 52351
    iput v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A00:I

    .line 52352
    iput v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A01:I

    .line 52353
    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/SW;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    .line 52354
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ND;->A05:Lcom/facebook/ads/redexgen/X/NU;

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/NU;->setFullCircleCorners(Z)V

    .line 52355
    sget v1, Lcom/facebook/ads/redexgen/X/SW;->A0N:I

    sget v0, Lcom/facebook/ads/redexgen/X/SW;->A0K:I

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/SW;->setPadding(IIII)V

    .line 52356
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SW;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A0D:Landroid/widget/RelativeLayout;

    .line 52357
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SW;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A05:Landroid/widget/TextView;

    .line 52358
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SW;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A02:Landroid/widget/LinearLayout;

    .line 52359
    new-instance v7, Lcom/facebook/ads/redexgen/X/NW;

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/SW;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    sget v9, Lcom/facebook/ads/redexgen/X/SW;->A0R:I

    sget v11, Lcom/facebook/ads/redexgen/X/SW;->A0Q:I

    const/4 v10, 0x5

    const/4 v12, -0x1

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/NW;-><init>(Lcom/facebook/ads/redexgen/X/Xc;IIII)V

    iput-object v7, v2, Lcom/facebook/ads/redexgen/X/SW;->A09:Lcom/facebook/ads/redexgen/X/NW;

    .line 52360
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SW;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A0E:Landroid/widget/RelativeLayout;

    .line 52361
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SW;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A0C:Landroid/widget/LinearLayout;

    .line 52362
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SW;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A04:Landroid/widget/TextView;

    .line 52363
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SW;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A03:Landroid/widget/TextView;

    .line 52364
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/ND;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 52365
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/ND;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 52366
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SW;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    .line 52367
    iput-object v6, v2, Lcom/facebook/ads/redexgen/X/SW;->A07:Lcom/facebook/ads/redexgen/X/1L;

    .line 52368
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/IK;->A0y(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A0H:Z

    .line 52369
    invoke-static {p0, v4}, Lcom/facebook/ads/redexgen/X/LL;->A0R(Landroid/view/View;Landroid/content/Context;)V

    .line 52370
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    .line 52371
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1t(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SW;->A0A:Z

    .line 52372
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SW;->A06()V

    .line 52373
    return-void
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SW;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x63

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
    .locals 3

    .line 52374
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ND;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Sa;->setPadding(IIII)V

    .line 52375
    sget v2, Lcom/facebook/ads/redexgen/X/SW;->A0L:I

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52376
    .local v0, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Sa;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52377
    return-void
.end method

.method private A03()V
    .locals 7

    .line 52378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0C:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52379
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A0C:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/SW;->A0N:I

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v6, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 52380
    const/4 v5, -0x1

    const/4 v3, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52381
    .local v0, "expandableParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52384
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A03:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 52385
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A03:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A03:Landroid/widget/TextView;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 52387
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A03:Landroid/widget/TextView;

    .line 52388
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A07:Lcom/facebook/ads/redexgen/X/1L;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/1L;->A05(Z)I

    move-result v0

    .line 52389
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/SW;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52390
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 52391
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/SW;->A0J:[Ljava/lang/String;

    const-string v1, "GrwjTtxURhrO1EQl6RsuguGKXpAC8Gmx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A03:Landroid/widget/TextView;

    invoke-static {v0, v6, v4}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 52392
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0H:Z

    if-eqz v0, :cond_2

    .line 52393
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52394
    .local v1, "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1    # "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SW;->A0C:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/SW;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52395
    .end local v1    # "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 52396
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/SW;->A0J:[Ljava/lang/String;

    const-string v1, "ewlwa2SJNlK21mEN5Hlfw30tD2ecrw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A03:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52397
    return-void
.end method

.method private A04()V
    .locals 8

    .line 52398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 52399
    const/4 v4, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52400
    .local v0, "iconAndMetaDataContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SW;->A0N:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 52401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0D:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 52403
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ND;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A00:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52404
    .local v2, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52405
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52406
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A0D:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A05:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52407
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52408
    .local v4, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SW;->A0O:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 52409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A05:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->getId()I

    move-result v0

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52410
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52411
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A0D:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 52413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A05:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 52414
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A05:Landroid/widget/TextView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ND;->A08:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52415
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A05:Landroid/widget/TextView;

    .line 52416
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0A:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A07:Lcom/facebook/ads/redexgen/X/1L;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/1L;->A06(Z)I

    move-result v0

    .line 52417
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52418
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A05:Landroid/widget/TextView;

    const/16 v0, 0x12

    invoke-static {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 52419
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A0E:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 52420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A02:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A02:Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 52422
    sget v0, Lcom/facebook/ads/redexgen/X/SW;->A0P:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52423
    .local v3, "ratingInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SW;->A0O:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 52424
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52425
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A0E:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A09:Lcom/facebook/ads/redexgen/X/NW;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/NW;->setGravity(I)V

    .line 52428
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52429
    .local p1, "starRatingContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A09:Lcom/facebook/ads/redexgen/X/NW;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52430
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A04:Landroid/widget/TextView;

    .line 52431
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A07:Lcom/facebook/ads/redexgen/X/1L;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/1L;->A06(Z)I

    move-result v0

    .line 52432
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 52434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 52435
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A04:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 52436
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52437
    .local v1, "ratingCountParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SW;->A0O:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 52438
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52439
    return-void

    .line 52440
    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    .line 52441
    :cond_1
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private A05()V
    .locals 4

    .line 52442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 52443
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52444
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 52445
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    .line 52446
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0A:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A07:Lcom/facebook/ads/redexgen/X/1L;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/1L;->A06(Z)I

    move-result v0

    .line 52447
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 52449
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 52450
    const/4 v2, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52451
    .local v0, "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0H:Z

    if-eqz v0, :cond_0

    .line 52452
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52453
    :goto_1
    sget v0, Lcom/facebook/ads/redexgen/X/SW;->A0N:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 52454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52455
    return-void

    .line 52456
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 52457
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A06()V
    .locals 2

    .line 52458
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SW;->removeAllViews()V

    .line 52459
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ND;->A02:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ND;->A08:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52460
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SW;->A04()V

    .line 52461
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SW;->A03()V

    .line 52462
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SW;->A02()V

    .line 52463
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SW;->A05()V

    .line 52464
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SW;->A07()V

    .line 52465
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 52466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 52467
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 52468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SW;->addView(Landroid/view/View;)V

    .line 52469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SW;->addView(Landroid/view/View;)V

    .line 52470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SW;->addView(Landroid/view/View;)V

    .line 52471
    return-void
.end method

.method private A07()V
    .locals 5

    .line 52472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A06:Lcom/facebook/ads/redexgen/X/1J;

    if-nez v0, :cond_0

    .line 52473
    return-void

    .line 52474
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52475
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A06:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52476
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A06:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A08:Lcom/facebook/ads/redexgen/X/1M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1M;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0H(Landroid/view/View;)V

    .line 52479
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A06:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0H(Landroid/view/View;)V

    .line 52481
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A06:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52482
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A02:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52483
    :cond_3
    :goto_0
    return-void

    .line 52484
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A02:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52485
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SW;->A09:Lcom/facebook/ads/redexgen/X/NW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A06:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/SW;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/SW;->A0J:[Ljava/lang/String;

    const-string v1, "VSVKlO90K15ihGB4A0qZPRqEppX5OU7U"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "xs76xd0mQfWREabMq0mbrfEp6FCRmbTD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NW;->setRating(F)V

    .line 52486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A06:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 52487
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SW;->A04:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SW;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52488
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A06:Lcom/facebook/ads/redexgen/X/1J;

    .line 52489
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SW;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52490
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A08()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SW;->A0I:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x6ft
        -0x14t
    .end array-data
.end method


# virtual methods
.method public final A09()V
    .locals 2

    .line 52491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A05:Lcom/facebook/ads/redexgen/X/NU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0H(Landroid/view/View;)V

    .line 52492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0E:Landroid/widget/RelativeLayout;

    .line 52493
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 52494
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 52495
    const/4 v0, 0x0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 52496
    :cond_0
    return-void
.end method

.method public final A0A()V
    .locals 1

    .line 52497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0H(Landroid/view/View;)V

    .line 52498
    return-void
.end method

.method public final A0B()V
    .locals 2

    .line 52499
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ND;->A0B()V

    .line 52500
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A09:Lcom/facebook/ads/redexgen/X/NW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A01:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NW;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52501
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A01:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52502
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A04:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A01:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52503
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A01:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52504
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A05:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A01:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52505
    return-void
.end method

.method public final A0C(I)V
    .locals 4

    .line 52506
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .line 52507
    .local v2, "isPortrait":Z
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/SW;->setOrientation(I)V

    .line 52508
    if-nez v0, :cond_0

    .line 52509
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SW;->setWeightSum(F)V

    .line 52510
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52511
    .local v0, "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52512
    sget v1, Lcom/facebook/ads/redexgen/X/SW;->A0K:I

    sget v0, Lcom/facebook/ads/redexgen/X/SW;->A0N:I

    sub-int/2addr v1, v0

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 52513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52514
    sget v0, Lcom/facebook/ads/redexgen/X/SW;->A0L:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52515
    .local v3, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SW;->A0K:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 52516
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52517
    const/16 v0, 0x50

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Sa;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52519
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ND;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    sget v0, Lcom/facebook/ads/redexgen/X/SW;->A0M:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->setMinWidth(I)V

    .line 52520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 52521
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52522
    .local p0, "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 52523
    sget v0, Lcom/facebook/ads/redexgen/X/SW;->A0O:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 52524
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A0C:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 52526
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 52527
    .end local v0    # "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local p0    # "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SW;->bringToFront()V

    .line 52528
    return-void

    .line 52529
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SW;->A06()V

    goto :goto_2

    .line 52530
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 52531
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getExpandableLayout()Landroid/view/View;
    .locals 1

    .line 52532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0C:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 52533
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/ND;->onLayout(ZIIII)V

    .line 52534
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A00:I

    if-nez v0, :cond_0

    .line 52535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A03:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A00:I

    .line 52536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A01:I

    .line 52537
    :cond_0
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/1J;Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NH;)V
    .locals 0
    .param p5    # Lcom/facebook/ads/redexgen/X/NH;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52538
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/ND;->setInfo(Lcom/facebook/ads/redexgen/X/1J;Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NH;)V

    .line 52539
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SW;->A06:Lcom/facebook/ads/redexgen/X/1J;

    .line 52540
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SW;->A08:Lcom/facebook/ads/redexgen/X/1M;

    .line 52541
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SW;->A07()V

    .line 52542
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 2

    .line 52543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SW;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 52544
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SW;->A05:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52545
    return-void
.end method
