.class public final Lcom/facebook/ads/redexgen/X/De;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wv;
.implements Lcom/facebook/ads/redexgen/X/9h;
.implements Lcom/facebook/ads/redexgen/X/9f;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Wt;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/SimpleExoPlayer$VideoListener;
    }
.end annotation


# static fields
.field public static A0O:[B

.field public static A0P:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Landroid/view/SurfaceHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Landroid/view/TextureView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A08:Lcom/facebook/ads/redexgen/X/A6;

.field public A09:Lcom/facebook/ads/redexgen/X/Ap;

.field public A0A:Lcom/facebook/ads/redexgen/X/Ap;

.field public A0B:Lcom/facebook/ads/redexgen/X/ET;

.field public A0C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FQ;",
            ">;"
        }
    .end annotation
.end field

.field public A0D:Z

.field public final A0E:Landroid/os/Handler;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Wv;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Wt;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Wr;

.field public final A0I:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/AM;",
            ">;"
        }
    .end annotation
.end field

.field public final A0J:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/DC;",
            ">;"
        }
    .end annotation
.end field

.field public final A0K:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/FU;",
            ">;"
        }
    .end annotation
.end field

.field public final A0L:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/IG;",
            ">;"
        }
    .end annotation
.end field

.field public final A0M:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/I7;",
            ">;"
        }
    .end annotation
.end field

.field public final A0N:[Lcom/facebook/ads/redexgen/X/Wu;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 27582
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lFtWnCG46R5C0jFE4zUJTczpshBUtUUT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lFOjdTcG38zZaGgojgc5eL5kqXnhZEZM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "wiGcXWoorOPZSjIllCfsaL8Ty45qvpEz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HHU7rub9nESY9ymWNpU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JQeT3oVWTWkCraIQT5Bxb1arMPILFYIY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gEu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qio0MMI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OwWxnbSWAOR1YegRtIWYLQC56lcDaoDA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/De;->A0P:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/De;->A0F()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9p;Lcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/BF;)V
    .locals 6
    .param p4    # Lcom/facebook/ads/redexgen/X/BF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/9p;",
            "Lcom/facebook/ads/redexgen/X/GM;",
            "Lcom/facebook/ads/redexgen/X/9U;",
            "Lcom/facebook/ads/redexgen/X/BF<",
            "Lcom/facebook/ads/redexgen/X/Wa;",
            ">;)V"
        }
    .end annotation

    .line 27583
    .local p4, "drmSessionManager":Lcom/facebook/ads/redexgen/X/BF;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/FrameworkMediaCrypto;>;"
    new-instance v5, Lcom/facebook/ads/redexgen/X/9v;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/9v;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/De;-><init>(Lcom/facebook/ads/redexgen/X/9p;Lcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/BF;Lcom/facebook/ads/redexgen/X/9v;)V

    .line 27584
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9p;Lcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/BF;Lcom/facebook/ads/redexgen/X/9v;)V
    .locals 7
    .param p4    # Lcom/facebook/ads/redexgen/X/BF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/9p;",
            "Lcom/facebook/ads/redexgen/X/GM;",
            "Lcom/facebook/ads/redexgen/X/9U;",
            "Lcom/facebook/ads/redexgen/X/BF<",
            "Lcom/facebook/ads/redexgen/X/Wa;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/9v;",
            ")V"
        }
    .end annotation

    .line 27585
    .local p4, "drmSessionManager":Lcom/facebook/ads/redexgen/X/BF;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/FrameworkMediaCrypto;>;"
    sget-object v6, Lcom/facebook/ads/redexgen/X/HG;->A00:Lcom/facebook/ads/redexgen/X/HG;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/De;-><init>(Lcom/facebook/ads/redexgen/X/9p;Lcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/BF;Lcom/facebook/ads/redexgen/X/9v;Lcom/facebook/ads/redexgen/X/HG;)V

    .line 27586
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9p;Lcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/BF;Lcom/facebook/ads/redexgen/X/9v;Lcom/facebook/ads/redexgen/X/HG;)V
    .locals 7
    .param p4    # Lcom/facebook/ads/redexgen/X/BF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/9p;",
            "Lcom/facebook/ads/redexgen/X/GM;",
            "Lcom/facebook/ads/redexgen/X/9U;",
            "Lcom/facebook/ads/redexgen/X/BF<",
            "Lcom/facebook/ads/redexgen/X/Wa;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/9v;",
            "Lcom/facebook/ads/redexgen/X/HG;",
            ")V"
        }
    .end annotation

    .line 27587
    .local p6, "drmSessionManager":Lcom/facebook/ads/redexgen/X/BF;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/FrameworkMediaCrypto;>;"
    move-object v6, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27588
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wt;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Wt;-><init>(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/redexgen/X/9r;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0G:Lcom/facebook/ads/redexgen/X/Wt;

    .line 27589
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0M:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27590
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27591
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27592
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27593
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27594
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 27595
    .local v0, "eventLooper":Landroid/os/Looper;
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0E:Landroid/os/Handler;

    .line 27596
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A0E:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/De;->A0G:Lcom/facebook/ads/redexgen/X/Wt;

    .line 27597
    move-object v3, v2

    move-object v4, v2

    move-object v0, p1

    move-object v5, v2

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/9p;->A4U(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/IG;Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/FU;Lcom/facebook/ads/redexgen/X/DC;Lcom/facebook/ads/redexgen/X/BF;)[Lcom/facebook/ads/redexgen/X/Wu;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0N:[Lcom/facebook/ads/redexgen/X/Wu;

    .line 27598
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:F

    .line 27599
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:I

    .line 27600
    sget-object v0, Lcom/facebook/ads/redexgen/X/A6;->A04:Lcom/facebook/ads/redexgen/X/A6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A08:Lcom/facebook/ads/redexgen/X/A6;

    .line 27601
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/De;->A02:I

    .line 27602
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0C:Ljava/util/List;

    .line 27603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0N:[Lcom/facebook/ads/redexgen/X/Wu;

    invoke-direct {p0, v0, p2, p3, p6}, Lcom/facebook/ads/redexgen/X/De;->A02([Lcom/facebook/ads/redexgen/X/Wu;Lcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/HG;)Lcom/facebook/ads/redexgen/X/Wv;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    .line 27604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-virtual {p5, v0, p6}, Lcom/facebook/ads/redexgen/X/9v;->A00(Lcom/facebook/ads/redexgen/X/9i;Lcom/facebook/ads/redexgen/X/HG;)Lcom/facebook/ads/redexgen/X/Wr;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0H:Lcom/facebook/ads/redexgen/X/Wr;

    .line 27605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0H:Lcom/facebook/ads/redexgen/X/Wr;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A3F(Lcom/facebook/ads/redexgen/X/9d;)V

    .line 27606
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0H:Lcom/facebook/ads/redexgen/X/Wr;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 27607
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0H:Lcom/facebook/ads/redexgen/X/Wr;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 27608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0H:Lcom/facebook/ads/redexgen/X/Wr;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->A0I(Lcom/facebook/ads/redexgen/X/DC;)V

    .line 27609
    instance-of v0, v6, Lcom/facebook/ads/redexgen/X/Wc;

    if-eqz v0, :cond_0

    .line 27610
    check-cast v6, Lcom/facebook/ads/redexgen/X/Wc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A0E:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0H:Lcom/facebook/ads/redexgen/X/Wr;

    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Wc;->A04(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/B3;)V

    .line 27611
    :cond_0
    return-void

    .line 27612
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/De;I)I
    .locals 0

    .line 27613
    iput p1, p0, Lcom/facebook/ads/redexgen/X/De;->A01:I

    return p1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/De;)Landroid/view/Surface;
    .locals 0

    .line 27614
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/De;->A03:Landroid/view/Surface;

    return-object p0
.end method

.method private final A02([Lcom/facebook/ads/redexgen/X/Wu;Lcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/HG;)Lcom/facebook/ads/redexgen/X/Wv;
    .locals 1

    .line 27615
    new-instance v0, Lcom/facebook/ads/redexgen/X/Dg;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Dg;-><init>([Lcom/facebook/ads/redexgen/X/Wu;Lcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/HG;)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .locals 0

    .line 27616
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/De;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .locals 0

    .line 27617
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/De;->A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/redexgen/X/Ap;)Lcom/facebook/ads/redexgen/X/Ap;
    .locals 0

    .line 27618
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/De;->A0A:Lcom/facebook/ads/redexgen/X/Ap;

    return-object p1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/redexgen/X/Ap;)Lcom/facebook/ads/redexgen/X/Ap;
    .locals 0

    .line 27619
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/De;->A09:Lcom/facebook/ads/redexgen/X/Ap;

    return-object p1
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/De;->A0O:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/De;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 27620
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/De;->A0C:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 27621
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/De;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 27622
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/De;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 27623
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/De;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 27624
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/De;->A0M:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 27625
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/De;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private A0E()V
    .locals 6

    .line 27626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A05:Landroid/view/TextureView;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 27627
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0G:Lcom/facebook/ads/redexgen/X/Wt;

    if-eq v1, v0, :cond_2

    .line 27628
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf

    const/16 v1, 0x31

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27629
    :goto_0
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/De;->A05:Landroid/view/TextureView;

    .line 27630
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/De;->A04:Landroid/view/SurfaceHolder;

    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A0P:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A0P:[Ljava/lang/String;

    const-string v1, "ra3xydJ7kWhmMtg1TaM66w1JFa1gUTH7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "B2AnWPBfK4McGvg4VvevfKURx5PgHrL6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v5, :cond_1

    .line 27631
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/De;->A0G:Lcom/facebook/ads/redexgen/X/Wt;

    sget-object v1, Lcom/facebook/ads/redexgen/X/De;->A0P:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A0P:[Ljava/lang/String;

    const-string v1, "TkNVmSJ94eiWQtufXtm52Md27gR86DeI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v5, v3}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 27632
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/De;->A04:Landroid/view/SurfaceHolder;

    .line 27633
    :cond_1
    return-void

    .line 27634
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A05:Landroid/view/TextureView;

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0F()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/De;->A0O:[B

    return-void

    :array_0
    .array-data 1
        0x7et
        -0x6ct
        -0x68t
        -0x65t
        -0x69t
        -0x70t
        0x70t
        -0x5dt
        -0x66t
        0x7bt
        -0x69t
        -0x74t
        -0x5ct
        -0x70t
        -0x63t
        -0x65t
        -0x43t
        -0x46t
        -0x52t
        -0x57t
        -0x55t
        -0x53t
        -0x64t
        -0x53t
        -0x40t
        -0x44t
        -0x43t
        -0x46t
        -0x53t
        -0x6ct
        -0x4ft
        -0x45t
        -0x44t
        -0x53t
        -0x4at
        -0x53t
        -0x46t
        0x68t
        -0x57t
        -0x4ct
        -0x46t
        -0x53t
        -0x57t
        -0x54t
        -0x3ft
        0x68t
        -0x43t
        -0x4at
        -0x45t
        -0x53t
        -0x44t
        0x68t
        -0x49t
        -0x46t
        0x68t
        -0x46t
        -0x53t
        -0x48t
        -0x4ct
        -0x57t
        -0x55t
        -0x53t
        -0x54t
        0x76t
    .end array-data
.end method

.method private A0G(Landroid/view/Surface;Z)V
    .locals 7
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 27635
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 27636
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/PlayerMessage;>;"
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/De;->A0N:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v4, v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v6, v3

    .line 27637
    .local v4, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Wu;->A7u()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 27638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    .line 27639
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Wv;->A4O(Lcom/facebook/ads/redexgen/X/9k;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9l;->A06(I)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9l;->A07(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A05()Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    .line 27640
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27641
    .end local v4    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27642
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A03:Landroid/view/Surface;

    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 27643
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9l;

    .line 27644
    .local v2, "message":Lcom/facebook/ads/redexgen/X/9l;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A0C()Z

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27645
    .local v1, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 27646
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0D:Z

    if-eqz v0, :cond_3

    .line 27647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A03:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 27648
    :cond_3
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/De;->A03:Landroid/view/Surface;

    .line 27649
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/De;->A0D:Z

    .line 27650
    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/De;Landroid/view/Surface;Z)V
    .locals 0

    .line 27651
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/De;->A0G(Landroid/view/Surface;Z)V

    return-void
.end method

.method private final A0I(Lcom/facebook/ads/redexgen/X/DC;)V
    .locals 1

    .line 27652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 27653
    return-void
.end method


# virtual methods
.method public final A0J()I
    .locals 1

    .line 27654
    iget v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:I

    return v0
.end method

.method public final A0K()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .locals 1

    .line 27655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 27656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    return-object v0
.end method

.method public final A0M()V
    .locals 1

    .line 27657
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/De;->AFU(Z)V

    .line 27658
    return-void
.end method

.method public final A0N(F)V
    .locals 6

    .line 27659
    iput p1, p0, Lcom/facebook/ads/redexgen/X/De;->A00:F

    .line 27660
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/De;->A0N:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v5, v3

    .line 27661
    .local v3, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Wu;->A7u()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 27662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Wv;->A4O(Lcom/facebook/ads/redexgen/X/9k;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9l;->A06(I)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9l;->A07(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A05()Lcom/facebook/ads/redexgen/X/9l;

    .line 27663
    .end local v3    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27664
    :cond_1
    return-void
.end method

.method public final A0O(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 27665
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/De;->A0E()V

    .line 27666
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/De;->A0G(Landroid/view/Surface;Z)V

    .line 27667
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/ET;)V
    .locals 1

    .line 27668
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/De;->ADZ(Lcom/facebook/ads/redexgen/X/ET;ZZ)V

    .line 27669
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/I7;)V
    .locals 1

    .line 27670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0M:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 27671
    return-void
.end method

.method public final A3F(Lcom/facebook/ads/redexgen/X/9d;)V
    .locals 1

    .line 27672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/9i;->A3F(Lcom/facebook/ads/redexgen/X/9d;)V

    .line 27673
    return-void
.end method

.method public final A4O(Lcom/facebook/ads/redexgen/X/9k;)Lcom/facebook/ads/redexgen/X/9l;
    .locals 1

    .line 27674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Wv;->A4O(Lcom/facebook/ads/redexgen/X/9k;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    return-object v0
.end method

.method public final A5u()I
    .locals 1

    .line 27675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A5u()I

    move-result v0

    return v0
.end method

.method public final A5v()J
    .locals 2

    .line 27676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A5v()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6G()J
    .locals 2

    .line 27677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6G()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6I()I
    .locals 1

    .line 27678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6I()I

    move-result v0

    return v0
.end method

.method public final A6J()I
    .locals 1

    .line 27679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6J()I

    move-result v0

    return v0
.end method

.method public final A6L()J
    .locals 2

    .line 27680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6N()Lcom/facebook/ads/redexgen/X/9u;
    .locals 1

    .line 27681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6N()Lcom/facebook/ads/redexgen/X/9u;

    move-result-object v0

    return-object v0
.end method

.method public final A6O()I
    .locals 1

    .line 27682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6O()I

    move-result v0

    return v0
.end method

.method public final A6X()J
    .locals 2

    .line 27683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6X()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7N()Z
    .locals 1

    .line 27684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A7N()Z

    move-result v0

    return v0
.end method

.method public final ADZ(Lcom/facebook/ads/redexgen/X/ET;ZZ)V
    .locals 4

    .line 27685
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A0B:Lcom/facebook/ads/redexgen/X/ET;

    if-eq v1, p1, :cond_1

    .line 27686
    if-eqz v1, :cond_0

    .line 27687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0H:Lcom/facebook/ads/redexgen/X/Wr;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/ET;->AED(Lcom/facebook/ads/redexgen/X/Eh;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A0P:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    .line 27688
    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A0P:[Ljava/lang/String;

    const-string v1, "neQjHr0c3Z22xWgcFsXV6yKpgIjCxRiM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "AZ8qNXqb66h1W9gn2ceQeQQ6zfm9Ofoh"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0H:Lcom/facebook/ads/redexgen/X/Wr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wr;->A07()V

    .line 27689
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/De;->A0E:Landroid/os/Handler;

    sget-object v1, Lcom/facebook/ads/redexgen/X/De;->A0P:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A0P:[Ljava/lang/String;

    const-string v1, "hi3Z2rNIRXiwDW9NFTlP7K1BOJYRm9rY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0H:Lcom/facebook/ads/redexgen/X/Wr;

    invoke-interface {p1, v3, v0}, Lcom/facebook/ads/redexgen/X/ET;->A3D(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Eh;)V

    .line 27690
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/De;->A0B:Lcom/facebook/ads/redexgen/X/ET;

    .line 27691
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Wv;->ADZ(Lcom/facebook/ads/redexgen/X/ET;ZZ)V

    .line 27692
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AE4()V
    .locals 4

    .line 27693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->AE4()V

    .line 27694
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/De;->A0E()V

    .line 27695
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A03:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 27696
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0D:Z

    if-eqz v0, :cond_0

    .line 27697
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 27698
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A03:Landroid/view/Surface;

    .line 27699
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/De;->A0B:Lcom/facebook/ads/redexgen/X/ET;

    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A0P:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/De;->A0P:[Ljava/lang/String;

    const-string v1, "3XPFavn3G5vCuxghg4tFItjGBt49wsdt"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "vQrNoD9lPBn1b9gsSKOopZ1BvxRWCtpJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 27700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0H:Lcom/facebook/ads/redexgen/X/Wr;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/ET;->AED(Lcom/facebook/ads/redexgen/X/Eh;)V

    .line 27701
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0C:Ljava/util/List;

    .line 27702
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEe(J)V
    .locals 1

    .line 27703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0H:Lcom/facebook/ads/redexgen/X/Wr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wr;->A06()V

    .line 27704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9i;->AEe(J)V

    .line 27705
    return-void
.end method

.method public final AEf()V
    .locals 1

    .line 27706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0H:Lcom/facebook/ads/redexgen/X/Wr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wr;->A06()V

    .line 27707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->AEf()V

    .line 27708
    return-void
.end method

.method public final AF3(Z)V
    .locals 1

    .line 27709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/9i;->AF3(Z)V

    .line 27710
    return-void
.end method

.method public final AFU(Z)V
    .locals 2

    .line 27711
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0F:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/9i;->AFU(Z)V

    .line 27712
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/De;->A0B:Lcom/facebook/ads/redexgen/X/ET;

    if-eqz v1, :cond_0

    .line 27713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0H:Lcom/facebook/ads/redexgen/X/Wr;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/ET;->AED(Lcom/facebook/ads/redexgen/X/Eh;)V

    .line 27714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0B:Lcom/facebook/ads/redexgen/X/ET;

    .line 27715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0H:Lcom/facebook/ads/redexgen/X/Wr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wr;->A07()V

    .line 27716
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A0C:Ljava/util/List;

    .line 27717
    return-void
.end method
