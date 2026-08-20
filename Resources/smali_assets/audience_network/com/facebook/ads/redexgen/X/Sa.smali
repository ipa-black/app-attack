.class public final Lcom/facebook/ads/redexgen/X/Sa;
.super Lcom/facebook/ads/redexgen/X/NM;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/Xc;

.field public A06:Lcom/facebook/ads/redexgen/X/Ke;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/Sc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0A:Z

.field public final A0B:Lcom/facebook/ads/redexgen/X/NI;

.field public final A0C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 52566
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "idQnrwKrPQs0c3zYYHT6WTvW1aXoRMqQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Gekt1WHQiHnIJqxdwB9j8FzDtIJy1cfJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sF2V"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CdtBVDHmuEaNC9R8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jtmNaJ8NDkAfiILRFeCM3WK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aXO2Ks7stxeTyHMnCxwSATKtkmhK3bmt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xmLEl9t0StR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sa;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sa;->A07()V

    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sa;->A0F:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1L;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V
    .locals 9

    .line 52567
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Sa;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1L;ZLcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V

    .line 52568
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1L;ZLcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V
    .locals 9

    .line 52569
    move-object v1, p0

    move-object v3, p1

    invoke-direct {p0, v3, p3}, Lcom/facebook/ads/redexgen/X/NM;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1L;)V

    .line 52570
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Sa;->A0C:Ljava/util/Map;

    .line 52571
    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/Sa;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    .line 52572
    iput-boolean p4, v1, Lcom/facebook/ads/redexgen/X/Sa;->A0A:Z

    .line 52573
    new-instance v2, Lcom/facebook/ads/redexgen/X/NI;

    move-object v4, p2

    move-object v7, p5

    move-object v8, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/NI;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;)V

    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/Sa;->A0B:Lcom/facebook/ads/redexgen/X/NI;

    .line 52574
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/Sa;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52575
    const/16 v0, 0x3e9

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/LL;->A0G(ILandroid/view/View;)V

    .line 52576
    return-void
.end method

.method public static A03(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 52577
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 52578
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 52579
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 52580
    invoke-static {v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 52581
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 52582
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52583
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52584
    return-object v4
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sa;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v3, p1, p0

    xor-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sa;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sa;->A0E:[Ljava/lang/String;

    const-string v1, "DG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    xor-int/lit8 v0, v3, 0x53

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()V
    .locals 4

    .line 52585
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A0A:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sa;->A09:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 52586
    const/16 v2, 0xc

    const/16 v1, 0xc

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/facebook/ads/redexgen/X/LT;->A0M:Lcom/facebook/ads/redexgen/X/LT;

    .line 52587
    .local v0, "encodedImage":Lcom/facebook/ads/redexgen/X/LT;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    .line 52588
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LU;->A03(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52589
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A03(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A02:Landroid/graphics/Bitmap;

    .line 52590
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A03:Landroid/graphics/Paint;

    .line 52591
    sget v1, Lcom/facebook/ads/redexgen/X/Sa;->A0F:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->setPadding(IIII)V

    .line 52592
    .end local v0    # "encodedImage":Lcom/facebook/ads/redexgen/X/LT;
    :cond_0
    return-void

    .line 52593
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/LT;->A0a:Lcom/facebook/ads/redexgen/X/LT;

    goto :goto_0
.end method

.method private A06()V
    .locals 1

    .line 52594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A06:Lcom/facebook/ads/redexgen/X/Ke;

    if-eqz v0, :cond_0

    .line 52595
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A07()Z

    .line 52596
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A07:Lcom/facebook/ads/redexgen/X/Sc;

    if-eqz v0, :cond_1

    .line 52597
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sc;->A04()V

    .line 52598
    :cond_1
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sa;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0xct
        0x9t
        0x3t
        0xbt
        0x3ft
        0x13t
        0xft
        0x15t
        0x12t
        0x3t
        0x5t
        0x8t
        0xct
        0x43t
        0x3t
        0xbt
        0x1dt
        0x1dt
        0xbt
        0x0t
        0x9t
        0xbt
        0x1ct
        0x7ft
        0x79t
        0x6ft
        0x78t
        0x69t
        0x66t
        0x63t
        0x69t
        0x61t
    .end array-data
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/Zs;)Z
    .locals 5

    .line 52599
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zs;->A0e()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zs;->A0c()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A09(Ljava/lang/String;)V
    .locals 4

    .line 52600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A08:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A09:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52601
    :cond_0
    return-void

    .line 52602
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sa;->A06()V

    .line 52603
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sa;->A0C:Ljava/util/Map;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52604
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sa;->A0B:Lcom/facebook/ads/redexgen/X/NI;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sa;->A08:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A0C:Ljava/util/Map;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 52605
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Li;)Z
    .locals 9
    .param p2    # Lcom/facebook/ads/redexgen/X/Li;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A06:Lcom/facebook/ads/redexgen/X/Ke;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Sa;->A08(Lcom/facebook/ads/redexgen/X/Zs;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52607
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zs;->A0l()Lcom/facebook/ads/redexgen/X/1b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1b;->A01()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52608
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zs;->A0l()Lcom/facebook/ads/redexgen/X/1b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1b;->A00()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 52609
    :cond_0
    return v1

    .line 52610
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/Sc;

    .line 52611
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zs;->A0c()I

    move-result v2

    .line 52612
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zs;->A0e()I

    move-result v3

    .line 52613
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zs;->A0d()I

    move-result v4

    .line 52614
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zs;->A0l()Lcom/facebook/ads/redexgen/X/1b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1b;->A01()Ljava/lang/String;

    move-result-object v5

    .line 52615
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zs;->A0l()Lcom/facebook/ads/redexgen/X/1b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1b;->A00()Ljava/lang/String;

    move-result-object v6

    move-object v8, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Sc;-><init>(IIILjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Li;Lcom/facebook/ads/redexgen/X/Sa;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A07:Lcom/facebook/ads/redexgen/X/Sc;

    .line 52616
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zs;->A0e()I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A07:Lcom/facebook/ads/redexgen/X/Sc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(ILcom/facebook/ads/redexgen/X/Kd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A06:Lcom/facebook/ads/redexgen/X/Ke;

    .line 52617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A06:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A08()Z

    .line 52618
    const/4 v0, 0x1

    return v0

    .line 52619
    :cond_2
    return v1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 52620
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Sa;
    .local v3, "v":Landroid/view/View;
    :try_start_0
    const/16 v2, 0x18

    const/16 v1, 0x9

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A09(Ljava/lang/String;)V

    .line 52621
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Sa;
    .end local v3    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 52622
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/NM;->onDetachedFromWindow()V

    .line 52623
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sa;->A06()V

    .line 52624
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 52625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A02:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 52626
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A04:Landroid/graphics/Rect;

    .line 52627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:I

    .line 52628
    const/16 v0, 0xc

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A00:I

    .line 52629
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A00:I

    add-int/2addr v1, v0

    div-int/lit8 v0, v1, 0x2

    .line 52630
    .local v0, "shift":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 52631
    int-to-float v1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 52632
    .end local v0    # "shift":I
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/NM;->onDraw(Landroid/graphics/Canvas;)V

    .line 52633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A02:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 52634
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sa;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sa;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v0, 0x41200000    # 10.0f

    add-float/2addr v2, v0

    .line 52635
    .local v0, "textWidth":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sa;->getWidth()I

    move-result v0

    int-to-float v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A00:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v4, v1

    .line 52636
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sa;->getHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:I

    div-int/lit8 v0, v1, 0x2

    sub-int/2addr v2, v0

    .line 52637
    .local v2, "top":I
    add-int v0, v4, v1

    add-int/2addr v1, v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 52638
    .local v3, "destRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sa;->A02:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A04:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A03:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 52639
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 52640
    .end local v0    # "textWidth":F
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v3    # "destRect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 52641
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/NM;->onVisibilityChanged(Landroid/view/View;I)V

    .line 52642
    if-eqz p2, :cond_0

    .line 52643
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sa;->A06()V

    .line 52644
    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 52645
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/NM;->onWindowFocusChanged(Z)V

    .line 52646
    if-nez p1, :cond_0

    .line 52647
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sa;->A06()V

    .line 52648
    :cond_0
    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1M;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 52649
    .local p3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Sa;->setCta(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/NH;)V

    .line 52650
    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/NH;)V
    .locals 2
    .param p4    # Lcom/facebook/ads/redexgen/X/NH;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1M;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/NH;",
            ")V"
        }
    .end annotation

    .line 52651
    .local p3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sa;->A08:Ljava/lang/String;

    .line 52652
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1M;->A05()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A09:Ljava/lang/String;

    .line 52653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A0C:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 52654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A0B:Lcom/facebook/ads/redexgen/X/NI;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/NI;->A07(Lcom/facebook/ads/redexgen/X/NH;)V

    .line 52655
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1M;->A04()Ljava/lang/String;

    move-result-object v1

    .line 52656
    .local v0, "buttonText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A09:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52657
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sa;->setVisibility(I)V

    .line 52658
    return-void

    .line 52659
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/NM;->setText(Ljava/lang/String;)V

    .line 52660
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sa;->A05()V

    .line 52661
    return-void
.end method

.method public setIsInAppBrowser(Z)V
    .locals 1

    .line 52662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A0B:Lcom/facebook/ads/redexgen/X/NI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NI;->A09(Z)V

    .line 52663
    return-void
.end method
