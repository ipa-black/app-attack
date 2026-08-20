.class public final Lcom/facebook/ads/redexgen/X/AU;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/AS;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/audio/AudioTimestampPoller$State;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/AS;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 21710
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tMW2fkMpy5HihKk0yN3j3FySApib3JSJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DmNw9hS4nxXBj6Mr2INd4L8q1xMEyvKq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0eqkaL3Dsezuu4pOs0MDPfwpckzWpND4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "49OOFjFtCxl3f3ujLPMCOchIYt8uEQEa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MWNNllbG7VNHRaURq2pyYfck8pAxQtjw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ldwZ0eJIezAamtWPjZLM2iroOhc1OYkS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "11ihmkQKk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Tg3NlfrAQ4uSsG9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AU;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 2

    .line 21711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21712
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 21713
    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AU;->A05:Lcom/facebook/ads/redexgen/X/AS;

    .line 21714
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AU;->A05()V

    .line 21715
    :goto_0
    return-void

    .line 21716
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AU;->A05:Lcom/facebook/ads/redexgen/X/AS;

    .line 21717
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AU;->A00(I)V

    goto :goto_0
.end method

.method private A00(I)V
    .locals 6

    .line 21718
    iput p1, p0, Lcom/facebook/ads/redexgen/X/AU;->A00:I

    .line 21719
    const-wide/16 v4, 0x1388

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 21720
    const-wide/32 v3, 0x7a120

    sget-object v1, Lcom/facebook/ads/redexgen/X/AU;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/AU;->A06:[Ljava/lang/String;

    const-string v1, "I3kIT2QQI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/AU;->A04:J

    .line 21721
    goto :goto_0

    .line 21722
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 21723
    :cond_2
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/AU;->A04:J

    .line 21724
    goto :goto_0

    .line 21725
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AU;->A03:J

    .line 21726
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AU;->A01:J

    .line 21727
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/AU;->A02:J

    .line 21728
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/AU;->A04:J

    .line 21729
    goto :goto_0

    .line 21730
    :cond_4
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AU;->A04:J

    .line 21731
    :goto_0
    return-void
.end method


# virtual methods
.method public final A01()J
    .locals 2

    .line 21732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AU;->A05:Lcom/facebook/ads/redexgen/X/AS;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AS;->A00()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final A02()J
    .locals 2

    .line 21733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AU;->A05:Lcom/facebook/ads/redexgen/X/AS;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AS;->A01()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public final A03()V
    .locals 2

    .line 21734
    iget v1, p0, Lcom/facebook/ads/redexgen/X/AU;->A00:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    .line 21735
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AU;->A05()V

    .line 21736
    :cond_0
    return-void
.end method

.method public final A04()V
    .locals 1

    .line 21737
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AU;->A00(I)V

    .line 21738
    return-void
.end method

.method public final A05()V
    .locals 1

    .line 21739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AU;->A05:Lcom/facebook/ads/redexgen/X/AS;

    if-eqz v0, :cond_0

    .line 21740
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AU;->A00(I)V

    .line 21741
    :cond_0
    return-void
.end method

.method public final A06()Z
    .locals 3

    .line 21742
    iget v2, p0, Lcom/facebook/ads/redexgen/X/AU;->A00:I

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A07()Z
    .locals 2

    .line 21743
    iget v1, p0, Lcom/facebook/ads/redexgen/X/AU;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A08(J)Z
    .locals 8

    .line 21744
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/AU;->A05:Lcom/facebook/ads/redexgen/X/AS;

    if-eqz v5, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AU;->A03:J

    sub-long v3, p1, v0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/AU;->A04:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    .line 21745
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 21746
    :cond_1
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/AU;->A03:J

    .line 21747
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/AS;->A02()Z

    move-result v7

    .line 21748
    .local v0, "updatedTimestamp":Z
    iget v1, p0, Lcom/facebook/ads/redexgen/X/AU;->A00:I

    const/4 v3, 0x3

    const/4 v6, 0x1

    if-eqz v1, :cond_7

    const/4 v5, 0x2

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v0, 0x4

    if-ne v1, v0, :cond_a

    .line 21749
    :cond_2
    :goto_0
    return v7

    .line 21750
    :cond_3
    if-eqz v7, :cond_2

    .line 21751
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AU;->A05()V

    goto :goto_0

    .line 21752
    :cond_4
    if-nez v7, :cond_2

    .line 21753
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AU;->A05()V

    goto :goto_0

    .line 21754
    :cond_5
    if-eqz v7, :cond_6

    .line 21755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AU;->A05:Lcom/facebook/ads/redexgen/X/AS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AS;->A00()J

    move-result-wide v3

    .line 21756
    .local v1, "timestampPositionFrames":J
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/AU;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 21757
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/AU;->A00(I)V

    goto :goto_0

    .line 21758
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AU;->A05()V

    .line 21759
    goto :goto_0

    .line 21760
    :cond_7
    if-eqz v7, :cond_9

    .line 21761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AU;->A05:Lcom/facebook/ads/redexgen/X/AS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AS;->A01()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/AU;->A02:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_8

    .line 21762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AU;->A05:Lcom/facebook/ads/redexgen/X/AS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AS;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AU;->A01:J

    .line 21763
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/AU;->A00(I)V

    goto :goto_0

    .line 21764
    :cond_8
    const/4 v7, 0x0

    goto :goto_0

    .line 21765
    :cond_9
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AU;->A02:J

    sub-long/2addr p1, v0

    const-wide/32 v1, 0x7a120

    cmp-long v0, p1, v1

    if-lez v0, :cond_2

    .line 21766
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/AU;->A00(I)V

    goto :goto_0

    .line 21767
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
