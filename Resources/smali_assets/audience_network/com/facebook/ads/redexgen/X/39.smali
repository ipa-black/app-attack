.class public final Lcom/facebook/ads/redexgen/X/39;
.super Lcom/facebook/ads/redexgen/X/Dh;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/TextRenderer$ReplacementState;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/TextRenderer$Output;
    }
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A03:Lcom/facebook/ads/redexgen/X/V6;

.field public A04:Lcom/facebook/ads/redexgen/X/BK;

.field public A05:Lcom/facebook/ads/redexgen/X/BJ;

.field public A06:Lcom/facebook/ads/redexgen/X/BJ;

.field public A07:Z

.field public A08:Z

.field public final A09:Landroid/os/Handler;

.field public final A0A:Lcom/facebook/ads/redexgen/X/9S;

.field public final A0B:Lcom/facebook/ads/redexgen/X/FT;

.field public final A0C:Lcom/facebook/ads/redexgen/X/FU;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 8001
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gjDhtLri4FaGEAWjRmzGOIMLbPPteIUr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gp3Mr1PqMY6rayIsxO9yJntmkSBHR7UD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5ZPDaEp5A16UYvNfALSoSfbuhC4Pwik1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uAQVQjgSUgDp2O8dWeXQS6qYbl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Gm3ZCOzsQkh90YHushfajnERb16f"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RaSLUB1F0sju8CZYqMhotlzh76Y2FLCY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ujo7akDRrtwDl4IVTi3qcCtKoi2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/39;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FU;Landroid/os/Looper;)V
    .locals 1

    .line 8002
    sget-object v0, Lcom/facebook/ads/redexgen/X/FT;->A00:Lcom/facebook/ads/redexgen/X/FT;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/39;-><init>(Lcom/facebook/ads/redexgen/X/FU;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/FT;)V

    .line 8003
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FU;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/FT;)V
    .locals 1

    .line 8004
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dh;-><init>(I)V

    .line 8005
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0C:Lcom/facebook/ads/redexgen/X/FU;

    .line 8006
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Landroid/os/Handler;

    .line 8007
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/39;->A0B:Lcom/facebook/ads/redexgen/X/FT;

    .line 8008
    new-instance v0, Lcom/facebook/ads/redexgen/X/9S;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9S;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/9S;

    .line 8009
    return-void

    .line 8010
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private A00()J
    .locals 2

    .line 8011
    iget v1, p0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Lcom/facebook/ads/redexgen/X/BJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BJ;->A6j()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 8012
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 8013
    :goto_0
    return-wide v0

    .line 8014
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Lcom/facebook/ads/redexgen/X/BJ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BJ;->A6i(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private A01()V
    .locals 1

    .line 8015
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/39;->A06(Ljava/util/List;)V

    .line 8016
    return-void
.end method

.method private A02()V
    .locals 2

    .line 8017
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A04:Lcom/facebook/ads/redexgen/X/BK;

    .line 8018
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    .line 8019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Lcom/facebook/ads/redexgen/X/BJ;

    if-eqz v0, :cond_0

    .line 8020
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BJ;->A08()V

    .line 8021
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Lcom/facebook/ads/redexgen/X/BJ;

    .line 8022
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A05:Lcom/facebook/ads/redexgen/X/BJ;

    if-eqz v0, :cond_1

    .line 8023
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BJ;->A08()V

    .line 8024
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A05:Lcom/facebook/ads/redexgen/X/BJ;

    .line 8025
    :cond_1
    return-void
.end method

.method private A03()V
    .locals 1

    .line 8026
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A02()V

    .line 8027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A03:Lcom/facebook/ads/redexgen/X/V6;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ao;->AE4()V

    .line 8028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A03:Lcom/facebook/ads/redexgen/X/V6;

    .line 8029
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/39;->A00:I

    .line 8030
    return-void
.end method

.method private A04()V
    .locals 2

    .line 8031
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A03()V

    .line 8032
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0B:Lcom/facebook/ads/redexgen/X/FT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FT;->A4J(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Lcom/facebook/ads/redexgen/X/V6;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A03:Lcom/facebook/ads/redexgen/X/V6;

    .line 8033
    return-void
.end method

.method private A05(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FQ;",
            ">;)V"
        }
    .end annotation

    .line 8034
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/Cue;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0C:Lcom/facebook/ads/redexgen/X/FU;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/FU;->AAf(Ljava/util/List;)V

    .line 8035
    return-void
.end method

.method private A06(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FQ;",
            ">;)V"
        }
    .end annotation

    .line 8036
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/Cue;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 8037
    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8038
    :goto_0
    return-void

    .line 8039
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/39;->A05(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final A12()V
    .locals 1

    .line 8040
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 8041
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A01()V

    .line 8042
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A03()V

    .line 8043
    return-void
.end method

.method public final A15(JZ)V
    .locals 1

    .line 8044
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A01()V

    .line 8045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Z

    .line 8046
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Z

    .line 8047
    iget v0, p0, Lcom/facebook/ads/redexgen/X/39;->A00:I

    if-eqz v0, :cond_0

    .line 8048
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A04()V

    .line 8049
    :goto_0
    return-void

    .line 8050
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A02()V

    .line 8051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A03:Lcom/facebook/ads/redexgen/X/V6;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ao;->flush()V

    goto :goto_0
.end method

.method public final A17([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8052
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 8053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A03:Lcom/facebook/ads/redexgen/X/V6;

    if-eqz v0, :cond_0

    .line 8054
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/39;->A00:I

    .line 8055
    :goto_0
    return-void

    .line 8056
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0B:Lcom/facebook/ads/redexgen/X/FT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FT;->A4J(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Lcom/facebook/ads/redexgen/X/V6;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A03:Lcom/facebook/ads/redexgen/X/V6;

    goto :goto_0
.end method

.method public final A8h()Z
    .locals 1

    .line 8057
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Z

    return v0
.end method

.method public final A8r()Z
    .locals 1

    .line 8058
    const/4 v0, 0x1

    return v0
.end method

.method public final AEH(JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8059
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Z

    if-eqz v0, :cond_0

    .line 8060
    return-void

    .line 8061
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A05:Lcom/facebook/ads/redexgen/X/BJ;

    if-nez v0, :cond_1

    .line 8062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A03:Lcom/facebook/ads/redexgen/X/V6;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/V6;->AF5(J)V

    .line 8063
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A03:Lcom/facebook/ads/redexgen/X/V6;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A4o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A05:Lcom/facebook/ads/redexgen/X/BJ;

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/FS; {:try_start_0 .. :try_end_0} :catch_0

    .line 8064
    :catch_0
    move-exception v1

    .line 8065
    .local v0, "e":Lcom/facebook/ads/redexgen/X/FS;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    throw v0

    .line 8066
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/FS;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A7i()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    .line 8067
    return-void

    .line 8068
    :cond_2
    const/4 v9, 0x0

    .line 8069
    .local v0, "textRendererNeedsUpdate":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Lcom/facebook/ads/redexgen/X/BJ;

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 8070
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A00()J

    move-result-wide v1

    .line 8071
    .local v4, "subtitleNextEventTimeUs":J
    :goto_1
    cmp-long v0, v1, p1

    if-gtz v0, :cond_3

    .line 8072
    iget v0, p0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    .line 8073
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A00()J

    move-result-wide v1

    .line 8074
    const/4 v9, 0x1

    goto :goto_1

    .line 8075
    .end local v4    # "subtitleNextEventTimeUs":J
    :cond_3
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/39;->A05:Lcom/facebook/ads/redexgen/X/BJ;

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/39;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0D:[Ljava/lang/String;

    const-string v1, "KD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v6, :cond_4

    .line 8076
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ak;->A04()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8077
    if-nez v9, :cond_4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A00()J

    move-result-wide v7

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v6, v7, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0D:[Ljava/lang/String;

    const-string v1, "xJP4O1R5iBehlF3gjm9oxj2d0if1stmE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "mrFlrw4gjycn3JZxSawox6A5ZMqGzaMP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v6, :cond_4

    .line 8078
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/39;->A00:I

    if-ne v0, v5, :cond_6

    .line 8079
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A04()V

    .line 8080
    :cond_4
    :goto_3
    if-eqz v9, :cond_5

    .line 8081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Lcom/facebook/ads/redexgen/X/BJ;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/BJ;->A6H(J)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/39;->A06(Ljava/util/List;)V

    .line 8082
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/39;->A00:I

    if-ne v0, v5, :cond_a

    .line 8083
    return-void

    .line 8084
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A02()V

    .line 8085
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Z

    goto :goto_3

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0D:[Ljava/lang/String;

    const-string v1, "j9HNvuqeLVtstiy16y9LH7E8URqfplUR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "4Jhirnf8T6FRv4glusNGUbVI8l7wWqUm"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v6, :cond_4

    goto :goto_2

    .line 8086
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A05:Lcom/facebook/ads/redexgen/X/BJ;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Wf;->A01:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_4

    .line 8087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Lcom/facebook/ads/redexgen/X/BJ;

    if-eqz v0, :cond_9

    .line 8088
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BJ;->A08()V

    .line 8089
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A05:Lcom/facebook/ads/redexgen/X/BJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Lcom/facebook/ads/redexgen/X/BJ;

    .line 8090
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A05:Lcom/facebook/ads/redexgen/X/BJ;

    .line 8091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Lcom/facebook/ads/redexgen/X/BJ;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/BJ;->A7A(J)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    .line 8092
    const/4 v9, 0x1

    goto :goto_3

    .line 8093
    :cond_a
    :goto_4
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Z

    if-nez v0, :cond_10

    .line 8094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A04:Lcom/facebook/ads/redexgen/X/BK;

    if-nez v0, :cond_b

    .line 8095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A03:Lcom/facebook/ads/redexgen/X/V6;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A4n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A04:Lcom/facebook/ads/redexgen/X/BK;

    .line 8096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A04:Lcom/facebook/ads/redexgen/X/BK;

    if-nez v0, :cond_b

    goto :goto_6

    .line 8097
    :cond_b
    iget v0, p0, Lcom/facebook/ads/redexgen/X/39;->A00:I

    if-ne v0, v4, :cond_c

    .line 8098
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A04:Lcom/facebook/ads/redexgen/X/BK;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ak;->A02(I)V

    .line 8099
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A03:Lcom/facebook/ads/redexgen/X/V6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A04:Lcom/facebook/ads/redexgen/X/BK;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->ADo(Ljava/lang/Object;)V

    .line 8100
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A04:Lcom/facebook/ads/redexgen/X/BK;

    .line 8101
    iput v5, p0, Lcom/facebook/ads/redexgen/X/39;->A00:I

    goto :goto_7

    .line 8102
    :cond_c
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/9S;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A04:Lcom/facebook/ads/redexgen/X/BK;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A10(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;Z)I
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/FS; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 8103
    .local v2, "result":I
    const/4 v6, -0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/39;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_d

    goto :goto_8

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0D:[Ljava/lang/String;

    const-string v1, "w0qgeVmaHT9zi92RU59iiGmHeY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v7, v6, :cond_f

    .line 8104
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A04:Lcom/facebook/ads/redexgen/X/BK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ak;->A04()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8105
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Z

    .line 8106
    :goto_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A03:Lcom/facebook/ads/redexgen/X/V6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A04:Lcom/facebook/ads/redexgen/X/BK;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->ADo(Ljava/lang/Object;)V

    .line 8107
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A04:Lcom/facebook/ads/redexgen/X/BK;

    goto :goto_4

    .line 8108
    :cond_e
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/39;->A04:Lcom/facebook/ads/redexgen/X/BK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/9S;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9S;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-wide v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G:J

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/BK;->A00:J

    .line 8109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A04:Lcom/facebook/ads/redexgen/X/BK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wg;->A08()V

    goto :goto_5

    .line 8110
    :cond_f
    const/4 v0, -0x3

    if-ne v7, v0, :cond_a

    .line 8111
    return-void

    .line 8112
    :goto_6
    return-void

    .line 8113
    :goto_7
    return-void
    :try_end_2
    .catch Lcom/facebook/ads/redexgen/X/FS; {:try_start_2 .. :try_end_2} :catch_1

    :goto_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8114
    :cond_10
    return-void

    .line 8115
    :catch_1
    move-exception v1

    .line 8116
    .local v1, "e":Lcom/facebook/ads/redexgen/X/FS;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AFY(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .locals 2

    .line 8117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0B:Lcom/facebook/ads/redexgen/X/FT;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/FT;->AFZ(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8118
    const/4 v1, 0x0

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A0x(Lcom/facebook/ads/redexgen/X/BF;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 8119
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HV;->A0A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8120
    const/4 v0, 0x1

    return v0

    .line 8121
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 8122
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 8123
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0D:[Ljava/lang/String;

    const-string v1, "l6TDTpt99EyMX5wDtgW8ykbRvyz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "JTJkXOfBS96AZaGW1FTj7RQLpJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/39;->A05(Ljava/util/List;)V

    .line 8124
    const/4 v0, 0x1

    return v0

    .line 8125
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
