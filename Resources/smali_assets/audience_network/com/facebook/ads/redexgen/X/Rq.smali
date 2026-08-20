.class public final Lcom/facebook/ads/redexgen/X/Rq;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ob;
    }
.end annotation


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;

.field public static final A0K:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/NL;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/Nd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/P5;

.field public A06:Z

.field public A07:Z

.field public final A08:Lcom/facebook/ads/redexgen/X/Zq;

.field public final A09:Lcom/facebook/ads/redexgen/X/5D;

.field public final A0A:Lcom/facebook/ads/redexgen/X/6M;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Ii;

.field public final A0E:Lcom/facebook/ads/redexgen/X/L8;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Lj;

.field public final A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

.field public final A0H:Lcom/facebook/ads/redexgen/X/MC;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 51271
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "n8b1XAz0kHAkpiWEmzC3t1pF5U"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eWK394xXCAUBfgpESuKIG56NqbrNFWJq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5CdOn8t3diym6HDjOq5Y6uNvOx4lt5g3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HN0pIlpAYl374dQUYji0gU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nPJn2NzIeBIJ0ob92wkGV5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7vv965TmOe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OL6PAd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "N5PSCRASy1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A0J:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rq;->A0E()V

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rq;->A0K:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/MC;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Zq;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 4

    .line 51272
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51273
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A07:Z

    .line 51274
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A06:Z

    .line 51275
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A02:I

    .line 51276
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A01:I

    .line 51277
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A00:I

    .line 51278
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rt;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rt;-><init>(Lcom/facebook/ads/redexgen/X/Rq;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A09:Lcom/facebook/ads/redexgen/X/5D;

    .line 51279
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 51280
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0H:Lcom/facebook/ads/redexgen/X/MC;

    .line 51281
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0C:Lcom/facebook/ads/redexgen/X/Ia;

    .line 51282
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    .line 51283
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0A:Lcom/facebook/ads/redexgen/X/6M;

    .line 51284
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0F:Lcom/facebook/ads/redexgen/X/Lj;

    .line 51285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    .line 51286
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Zq;->A0e(I)Lcom/facebook/ads/redexgen/X/Eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0C:Lcom/facebook/ads/redexgen/X/Ia;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0D:Lcom/facebook/ads/redexgen/X/Ii;

    .line 51287
    new-instance v0, Lcom/facebook/ads/redexgen/X/L8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/L8;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0E:Lcom/facebook/ads/redexgen/X/L8;

    .line 51288
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0E:Lcom/facebook/ads/redexgen/X/L8;

    sget-object v0, Lcom/facebook/ads/redexgen/X/L7;->A03:Lcom/facebook/ads/redexgen/X/L7;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A05(Lcom/facebook/ads/redexgen/X/L7;)V

    .line 51289
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0H:Lcom/facebook/ads/redexgen/X/MC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    .line 51290
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0M()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/P5;

    invoke-direct {v0, v3, v2, v1, p6}, Lcom/facebook/ads/redexgen/X/P5;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/MC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A05:Lcom/facebook/ads/redexgen/X/P5;

    .line 51291
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A04()Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    .line 51292
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->getToolbarHeight()I

    move-result v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Rq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51293
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Rq;I)I
    .locals 1

    .line 51294
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A00:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A00:I

    return v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Rq;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 51295
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Rq;)Lcom/facebook/ads/redexgen/X/Ii;
    .locals 0

    .line 51296
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0D:Lcom/facebook/ads/redexgen/X/Ii;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Rq;)Lcom/facebook/ads/redexgen/X/Lj;
    .locals 0

    .line 51297
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0F:Lcom/facebook/ads/redexgen/X/Lj;

    return-object p0
.end method

.method private A04()Lcom/facebook/ads/internal/view/FullScreenAdToolbar;
    .locals 5

    .line 51298
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0F:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0D:Lcom/facebook/ads/redexgen/X/Ii;

    const/4 v0, 0x2

    new-instance v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    invoke-direct {v1, v4, v3, v2, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Ii;I)V

    .line 51299
    .local v0, "toolbar":Lcom/facebook/ads/internal/view/FullScreenAdToolbar;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setFullscreen(Z)V

    .line 51300
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rr;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rr;-><init>(Lcom/facebook/ads/redexgen/X/Rq;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Lh;)V

    .line 51301
    return-object v1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Rq;)Lcom/facebook/ads/internal/view/FullScreenAdToolbar;
    .locals 0

    .line 51302
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Rq;)Lcom/facebook/ads/redexgen/X/MC;
    .locals 0

    .line 51303
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0H:Lcom/facebook/ads/redexgen/X/MC;

    return-object p0
.end method

.method private A07(ZI)Lcom/facebook/ads/redexgen/X/Nd;
    .locals 17

    .line 51304
    move-object/from16 v1, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Nd;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/Rq;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/Rq;->A0C:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Rq;->A01:I

    .line 51305
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0e(I)Lcom/facebook/ads/redexgen/X/Eu;

    move-result-object v6

    iget-object v7, v1, Lcom/facebook/ads/redexgen/X/Rq;->A0A:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v8, v1, Lcom/facebook/ads/redexgen/X/Rq;->A0H:Lcom/facebook/ads/redexgen/X/MC;

    iget-object v9, v1, Lcom/facebook/ads/redexgen/X/Rq;->A0F:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/Rq;->A0D:Lcom/facebook/ads/redexgen/X/Ii;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    .line 51306
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0D()I

    move-result v11

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    .line 51307
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0b()I

    move-result v13

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    .line 51308
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0d()I

    move-result v15

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rs;

    move/from16 v12, p2

    invoke-direct {v0, v1, v12}, Lcom/facebook/ads/redexgen/X/Rs;-><init>(Lcom/facebook/ads/redexgen/X/Rq;I)V

    move/from16 v14, p1

    move-object/from16 v16, v0

    invoke-direct/range {v3 .. v16}, Lcom/facebook/ads/redexgen/X/Nd;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Eu;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/MC;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Ii;IIIZILcom/facebook/ads/redexgen/X/Ob;)V

    .line 51309
    return-object v3
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rq;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x27

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A09()V
    .locals 2

    .line 51310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A07:Z

    .line 51311
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A0G()V

    .line 51312
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0F:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0H:Lcom/facebook/ads/redexgen/X/MC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MC;->A6b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    .line 51313
    return-void
.end method

.method private A0A()V
    .locals 5

    .line 51314
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A07:Z

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 51315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    if-eqz v0, :cond_0

    .line 51316
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A0U()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    .line 51317
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0b()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 51318
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A02:I

    invoke-direct {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/Rq;->A0O(ZI)V

    .line 51319
    :cond_0
    return-void

    .line 51320
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rq;->A0J:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A0J:[Ljava/lang/String;

    const-string v1, "o7GgZi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "3kZ0BgSrSMT6Nn9nBikWu4s9yN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nd;->A0T()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarActionMode(I)V

    .line 51322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A0Q()V

    .line 51323
    return-void

    .line 51324
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A0Q()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A0R()Z

    move-result v0

    if-nez v0, :cond_5

    .line 51325
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A0B()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 51326
    return-void

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A0J:[Ljava/lang/String;

    const-string v1, "6NilYX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "SEFjrqARzTApviPZOzNzDnNgpv"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    .line 51327
    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A09()V

    .line 51328
    return-void
.end method

.method private A0B()V
    .locals 8

    .line 51329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A06:Z

    .line 51330
    new-instance v1, Lcom/facebook/ads/redexgen/X/NL;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0C:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0F:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    .line 51331
    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->getToolbarHeight()I

    move-result v6

    iget v7, p0, Lcom/facebook/ads/redexgen/X/Rq;->A02:I

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/NL;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zq;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;II)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A03:Lcom/facebook/ads/redexgen/X/NL;

    .line 51332
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A0D()V

    .line 51333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    if-eqz v0, :cond_1

    .line 51334
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rq;->A0J:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51335
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A0J:[Ljava/lang/String;

    const-string v1, "ZPnrdglx3i"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Z92DtyKnO3"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A0P()V

    .line 51336
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A03:Lcom/facebook/ads/redexgen/X/NL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 51337
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rq;->A03:Lcom/facebook/ads/redexgen/X/NL;

    const/4 v2, 0x0

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Rq;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 51338
    return-void
.end method

.method private A0C()V
    .locals 6

    .line 51339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    if-nez v0, :cond_0

    .line 51340
    return-void

    .line 51341
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A01:I

    .line 51342
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0e(I)Lcom/facebook/ads/redexgen/X/Eu;

    move-result-object v4

    .line 51343
    .local v0, "adDataBundleDataBundleForAdIdx":Lcom/facebook/ads/redexgen/X/Eu;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Zs;->A0b()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07(Lcom/facebook/ads/redexgen/X/Xc;I)V

    .line 51344
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    .line 51345
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v2

    .line 51346
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v1

    .line 51347
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Eu;->A0D()I

    move-result v0

    .line 51348
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06(Lcom/facebook/ads/redexgen/X/1V;Ljava/lang/String;I)V

    .line 51349
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v5}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04(Lcom/facebook/ads/redexgen/X/1L;Z)V

    .line 51350
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rq;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A01:I

    add-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rq;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    .line 51351
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0c()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51352
    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 51353
    return-void
.end method

.method private A0D()V
    .locals 4

    .line 51354
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A0P()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51355
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rq;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarActionMessage(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51356
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A0J:[Ljava/lang/String;

    const-string v1, "66jeXp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "LGNwWFhV2djJuwlh4kKslTldzy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarActionMode(I)V

    goto :goto_0

    .line 51357
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarActionMode(I)V

    .line 51358
    :goto_0
    return-void
.end method

.method public static A0E()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rq;->A0I:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A0J:[Ljava/lang/String;

    const-string v1, "BvaU1dA3vF4hXYIjQV5InfWnSlZ4OmYy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :array_0
    .array-data 1
        0x71t
        -0x40t
        -0x49t
        0x71t
        -0x3et
        -0x1bt
        -0x5ft
    .end array-data
.end method

.method private final A0F()V
    .locals 2

    .line 51359
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge v1, v0, :cond_0

    .line 51360
    return-void

    .line 51361
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/L7;->A04:Lcom/facebook/ads/redexgen/X/L7;

    .line 51362
    .local v0, "mode":Lcom/facebook/ads/redexgen/X/L7;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0E:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/L8;->A05(Lcom/facebook/ads/redexgen/X/L7;)V

    .line 51363
    return-void
.end method

.method private declared-synchronized A0G()V
    .locals 2

    monitor-enter p0

    .line 51364
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0F:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0H:Lcom/facebook/ads/redexgen/X/MC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MC;->A5c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    .line 51365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A05:Lcom/facebook/ads/redexgen/X/P5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P5;->A05()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51366
    monitor-exit p0

    return-void

    .line 51367
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Rq;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final A0H(Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 2

    .line 51368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A09:Lcom/facebook/ads/redexgen/X/5D;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0K(Lcom/facebook/ads/redexgen/X/5D;)V

    .line 51369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    .line 51370
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0h()Z

    move-result v1

    .line 51371
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5F;->A0H()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 51372
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rq;->A0O(ZI)V

    .line 51373
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A0F()V

    .line 51374
    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/Rq;)V
    .locals 0

    .line 51375
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A0A()V

    return-void
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/Rq;)V
    .locals 0

    .line 51376
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A09()V

    return-void
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/Rq;)V
    .locals 0

    .line 51377
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A0D()V

    return-void
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/Rq;Lcom/facebook/ads/redexgen/X/6y;)V
    .locals 0

    .line 51378
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Rq;->A0N(Lcom/facebook/ads/redexgen/X/6y;)V

    return-void
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/Rq;ZI)V
    .locals 0

    .line 51379
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rq;->A0O(ZI)V

    return-void
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/6y;)V
    .locals 4

    .line 51380
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PP;->A00()I

    move-result v0

    int-to-float v3, v0

    .line 51381
    .local v0, "currentPosMs":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0D()I

    move-result v0

    int-to-float v1, v0

    .line 51382
    .local v1, "unskippableSeconds":F
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A00:I

    int-to-float v2, v0

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 51383
    .local v2, "seenPercentage":F
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setProgress(F)V

    .line 51384
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A07:Z

    if-nez v0, :cond_0

    .line 51385
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A07:Z

    .line 51386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarActionMode(I)V

    .line 51387
    :cond_0
    return-void
.end method

.method private A0O(ZI)V
    .locals 4

    .line 51388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    if-eqz v0, :cond_0

    .line 51389
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->removeAllViews()V

    .line 51390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 51391
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A0P()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 51392
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A0Q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51393
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A0B()V

    .line 51394
    return-void

    .line 51395
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Rq;->A07:Z

    .line 51396
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A09()V

    .line 51397
    return-void

    .line 51398
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 51399
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A00()Lcom/facebook/ads/redexgen/X/6Q;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A01:I

    .line 51400
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0e(I)Lcom/facebook/ads/redexgen/X/Eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    .line 51401
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0f()Ljava/lang/String;

    move-result-object v0

    .line 51402
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A8d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 51403
    .local v0, "isLoaded":Z
    if-nez v0, :cond_3

    .line 51404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A40()V

    .line 51405
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A09()V

    .line 51406
    return-void

    .line 51407
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rq;->A07(ZI)Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    .line 51408
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    const/4 v1, 0x0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Rq;->A0K:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rq;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 51409
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A0C()V

    .line 51410
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A01:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A01:I

    .line 51411
    return-void
.end method

.method private A0P()Z
    .locals 2

    .line 51412
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0c()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0Q()Z
    .locals 2

    .line 51413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0b()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0R()Z
    .locals 1

    .line 51414
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A06:Z

    return v0
.end method


# virtual methods
.method public final A92(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51415
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0F:Lcom/facebook/ads/redexgen/X/Lj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Rq;->A0K:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3J(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 51416
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Rq;->A0H(Lcom/facebook/ads/redexgen/X/5F;)V

    .line 51417
    return-void
.end method

.method public final ABw(Z)V
    .locals 1

    .line 51418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    if-eqz v0, :cond_0

    .line 51419
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Nd;->A0R(Z)V

    .line 51420
    :cond_0
    return-void
.end method

.method public final ACM(Z)V
    .locals 1

    .line 51421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    if-eqz v0, :cond_0

    .line 51422
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Nd;->A0S(Z)V

    .line 51423
    :cond_0
    return-void
.end method

.method public final AEZ(Landroid/os/Bundle;)V
    .locals 0

    .line 51424
    return-void
.end method

.method public getContentView()Lcom/facebook/ads/redexgen/X/Nd;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 51425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    return-object v0
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 51426
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 51427
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 51428
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 51429
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A02:I

    .line 51430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    if-eqz v0, :cond_0

    .line 51431
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Nd;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 51432
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 51433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    if-eqz v0, :cond_0

    .line 51434
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A0P()V

    .line 51435
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A00()Lcom/facebook/ads/redexgen/X/6Q;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Lcom/facebook/ads/redexgen/X/Zq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A41(Ljava/lang/String;)V

    .line 51436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0E:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A03()V

    .line 51437
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 51438
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 0

    .line 51439
    return-void
.end method

.method public setServerSideRewardHandler(Lcom/facebook/ads/redexgen/X/P5;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 51440
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A05:Lcom/facebook/ads/redexgen/X/P5;

    .line 51441
    return-void
.end method
