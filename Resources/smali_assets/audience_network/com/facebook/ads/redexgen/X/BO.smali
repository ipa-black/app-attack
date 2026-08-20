.class public final Lcom/facebook/ads/redexgen/X/BO;
.super Lcom/facebook/ads/redexgen/X/VH;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/EO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/ExtractorMediaSource$EventListenerWrapper;,
        Lcom/facebook/ads/redexgen/X/VC;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/ExtractorMediaSource$EventListener;
    }
.end annotation


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:I

.field public final A03:I

.field public final A04:Landroid/net/Uri;

.field public final A05:Lcom/facebook/ads/redexgen/X/BY;

.field public final A06:Lcom/facebook/ads/redexgen/X/GW;

.field public final A07:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/BY;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 2
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23275
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VH;-><init>()V

    .line 23276
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BO;->A04:Landroid/net/Uri;

    .line 23277
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/BO;->A06:Lcom/facebook/ads/redexgen/X/GW;

    .line 23278
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/BO;->A05:Lcom/facebook/ads/redexgen/X/BY;

    .line 23279
    iput p4, p0, Lcom/facebook/ads/redexgen/X/BO;->A03:I

    .line 23280
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/BO;->A08:Ljava/lang/String;

    .line 23281
    iput p6, p0, Lcom/facebook/ads/redexgen/X/BO;->A02:I

    .line 23282
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BO;->A00:J

    .line 23283
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/BO;->A07:Ljava/lang/Object;

    .line 23284
    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/BY;ILjava/lang/String;ILjava/lang/Object;Lcom/facebook/ads/redexgen/X/EP;)V
    .locals 0

    .line 23285
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/BO;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/BY;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private A00(JZ)V
    .locals 7

    .line 23286
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BO;->A00:J

    .line 23287
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/BO;->A01:Z

    .line 23288
    new-instance v1, Lcom/facebook/ads/redexgen/X/V8;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/BO;->A00:J

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/BO;->A01:Z

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/BO;->A07:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/V8;-><init>(JZZLjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/VH;->A01(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;)V

    .line 23289
    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 0

    .line 23290
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Wv;Z)V
    .locals 3

    .line 23291
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BO;->A00:J

    const/4 v0, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/BO;->A00(JZ)V

    .line 23292
    return-void
.end method

.method public final A4T(Lcom/facebook/ads/redexgen/X/ER;Lcom/facebook/ads/redexgen/X/GP;)Lcom/facebook/ads/redexgen/X/VA;
    .locals 11

    .line 23293
    iget v0, p1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 23294
    new-instance v1, Lcom/facebook/ads/redexgen/X/BR;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BO;->A04:Landroid/net/Uri;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BO;->A06:Lcom/facebook/ads/redexgen/X/GW;

    .line 23295
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GW;->A4H()Lcom/facebook/ads/redexgen/X/GX;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BO;->A05:Lcom/facebook/ads/redexgen/X/BY;

    .line 23296
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BY;->A4L()[Lcom/facebook/ads/redexgen/X/BV;

    move-result-object v4

    iget v5, p0, Lcom/facebook/ads/redexgen/X/BO;->A03:I

    .line 23297
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/VH;->A00(Lcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/Ee;

    move-result-object v6

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/BO;->A08:Ljava/lang/String;

    iget v10, p0, Lcom/facebook/ads/redexgen/X/BO;->A02:I

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/BR;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/GX;[Lcom/facebook/ads/redexgen/X/BV;ILcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/EO;Lcom/facebook/ads/redexgen/X/GP;Ljava/lang/String;I)V

    .line 23298
    return-object v1

    .line 23299
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A9l()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23300
    return-void
.end method

.method public final ACa(JZ)V
    .locals 3

    .line 23301
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    iget-wide p1, p0, Lcom/facebook/ads/redexgen/X/BO;->A00:J

    .line 23302
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BO;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BO;->A01:Z

    if-ne v0, p3, :cond_1

    .line 23303
    return-void

    .line 23304
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/BO;->A00(JZ)V

    .line 23305
    return-void
.end method

.method public final AE9(Lcom/facebook/ads/redexgen/X/VA;)V
    .locals 0

    .line 23306
    check-cast p1, Lcom/facebook/ads/redexgen/X/BR;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/BR;->A0R()V

    .line 23307
    return-void
.end method
