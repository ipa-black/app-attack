.class public abstract Lcom/facebook/ads/redexgen/X/MH;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/2F;

.field public A02:Lcom/facebook/ads/redexgen/X/2G;

.field public A03:Lcom/facebook/ads/redexgen/X/2H;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/2D;

.field public final A05:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A06:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A07:Lcom/facebook/ads/redexgen/X/Lj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Lcom/facebook/ads/redexgen/X/Lk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A09:Ljava/lang/String;

.field public final A0A:Lcom/facebook/ads/redexgen/X/1V;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0B:Lcom/facebook/ads/redexgen/X/MJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;)V
    .locals 7

    .line 44363
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/MH;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1V;Lcom/facebook/ads/redexgen/X/Lk;Lcom/facebook/ads/redexgen/X/Lj;)V

    .line 44364
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1V;Lcom/facebook/ads/redexgen/X/Lk;Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 1
    .param p4    # Lcom/facebook/ads/redexgen/X/1V;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/ads/redexgen/X/Lk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/ads/redexgen/X/Lj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44365
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44366
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A00:I

    .line 44367
    sget-object v0, Lcom/facebook/ads/redexgen/X/2F;->A04:Lcom/facebook/ads/redexgen/X/2F;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/2F;

    .line 44368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Lcom/facebook/ads/redexgen/X/2H;

    .line 44369
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Lcom/facebook/ads/redexgen/X/MH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A0B:Lcom/facebook/ads/redexgen/X/MJ;

    .line 44370
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MH;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    .line 44371
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MH;->A06:Lcom/facebook/ads/redexgen/X/Ia;

    .line 44372
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/MH;->A08:Lcom/facebook/ads/redexgen/X/Lk;

    .line 44373
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/MH;->A07:Lcom/facebook/ads/redexgen/X/Lj;

    .line 44374
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/MH;->A09:Ljava/lang/String;

    .line 44375
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/MH;->A0A:Lcom/facebook/ads/redexgen/X/1V;

    .line 44376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2E;->A00(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A04:Lcom/facebook/ads/redexgen/X/2D;

    .line 44377
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/MH;)I
    .locals 2

    .line 44378
    iget v1, p0, Lcom/facebook/ads/redexgen/X/MH;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A00:I

    return v1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/MH;)I
    .locals 2

    .line 44379
    iget v1, p0, Lcom/facebook/ads/redexgen/X/MH;->A00:I

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A00:I

    return v1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/MH;)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 44380
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MH;->A04:Lcom/facebook/ads/redexgen/X/2D;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/MH;)Lcom/facebook/ads/redexgen/X/2F;
    .locals 0

    .line 44381
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/2F;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/MH;Lcom/facebook/ads/redexgen/X/2F;)Lcom/facebook/ads/redexgen/X/2F;
    .locals 0

    .line 44382
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/2F;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/MH;)Lcom/facebook/ads/redexgen/X/2G;
    .locals 0

    .line 44383
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MH;->A02:Lcom/facebook/ads/redexgen/X/2G;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/MH;)Lcom/facebook/ads/redexgen/X/2H;
    .locals 0

    .line 44384
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Lcom/facebook/ads/redexgen/X/2H;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/MH;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 44385
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MH;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/MH;)Lcom/facebook/ads/redexgen/X/Lj;
    .locals 0

    .line 44386
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MH;->A07:Lcom/facebook/ads/redexgen/X/Lj;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/MH;)Lcom/facebook/ads/redexgen/X/Lk;
    .locals 0

    .line 44387
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MH;->A08:Lcom/facebook/ads/redexgen/X/Lk;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/MH;)Ljava/lang/String;
    .locals 0

    .line 44388
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MH;->A09:Ljava/lang/String;

    return-object p0
.end method

.method private A0B()V
    .locals 3

    .line 44389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A02:Lcom/facebook/ads/redexgen/X/2G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2G;->A0A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44390
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MH;->A06:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MH;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A02:Lcom/facebook/ads/redexgen/X/2G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2G;->A02()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A95(Ljava/lang/String;Ljava/util/Map;)V

    .line 44391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A02:Lcom/facebook/ads/redexgen/X/2G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2G;->A03()V

    .line 44392
    :cond_0
    return-void
.end method

.method private A0C()V
    .locals 1

    .line 44393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Lcom/facebook/ads/redexgen/X/2H;

    .line 44394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A02:Lcom/facebook/ads/redexgen/X/2G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2G;->A05()V

    .line 44395
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MH;->A0L()V

    .line 44396
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/2H;)V
    .locals 2

    .line 44397
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MH;->A02:Lcom/facebook/ads/redexgen/X/2G;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/2F;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2G;->A08(Lcom/facebook/ads/redexgen/X/2F;)V

    .line 44398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/2F;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/MH;->A0N(Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/2F;)V

    .line 44399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/0u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0u;->A0L()V

    .line 44400
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MH;->A0P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44401
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MH;->A0B()V

    .line 44402
    :cond_0
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/2H;)V
    .locals 3

    .line 44403
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Lcom/facebook/ads/redexgen/X/2H;

    .line 44404
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MH;->A02:Lcom/facebook/ads/redexgen/X/2G;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/2F;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A00:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2G;->A09(Lcom/facebook/ads/redexgen/X/2F;I)V

    .line 44405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/2F;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/MH;->A0O(Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/2F;)V

    .line 44406
    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/MH;)V
    .locals 0

    .line 44407
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MH;->A0B()V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/MH;)V
    .locals 0

    .line 44408
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MH;->A0C()V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/MH;Lcom/facebook/ads/redexgen/X/2H;)V
    .locals 0

    .line 44409
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MH;->A0E(Lcom/facebook/ads/redexgen/X/2H;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/MH;Lcom/facebook/ads/redexgen/X/2H;)V
    .locals 0

    .line 44410
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MH;->A0D(Lcom/facebook/ads/redexgen/X/2H;)V

    return-void
.end method


# virtual methods
.method public final A0J()V
    .locals 0

    .line 44411
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MH;->A0B()V

    .line 44412
    return-void
.end method

.method public final A0K()V
    .locals 3

    .line 44413
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MH;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A06:Lcom/facebook/ads/redexgen/X/Ia;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/2G;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2G;-><init>(Lcom/facebook/ads/redexgen/X/Ii;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A02:Lcom/facebook/ads/redexgen/X/2G;

    .line 44414
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MH;->A08:Lcom/facebook/ads/redexgen/X/Lk;

    if-eqz v1, :cond_0

    .line 44415
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lk;->ABw(Z)V

    .line 44416
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MH;->A0C()V

    .line 44417
    return-void
.end method

.method public abstract A0L()V
.end method

.method public abstract A0M()V
.end method

.method public abstract A0N(Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/2F;)V
.end method

.method public abstract A0O(Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/2F;)V
.end method

.method public abstract A0P()Z
.end method
