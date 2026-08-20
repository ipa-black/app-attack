.class public abstract Lcom/facebook/ads/redexgen/X/Dh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wu;
.implements Lcom/facebook/ads/redexgen/X/9n;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/9o;

.field public A04:Lcom/facebook/ads/redexgen/X/Eo;

.field public A05:Z

.field public A06:Z

.field public A07:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public final A08:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 28812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28813
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A08:I

    .line 28814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Z

    .line 28815
    return-void
.end method

.method public static A0x(Lcom/facebook/ads/redexgen/X/BF;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Z
    .locals 0
    .param p0    # Lcom/facebook/ads/redexgen/X/BF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/BF<",
            "*>;",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;",
            ")Z"
        }
    .end annotation

    .line 28816
    .local p1, "drmSessionManager":Lcom/facebook/ads/redexgen/X/BF;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmSessionManager<*>;"
    if-nez p1, :cond_0

    .line 28817
    const/4 p0, 0x1

    return p0

    .line 28818
    :cond_0
    if-nez p0, :cond_1

    .line 28819
    const/4 p0, 0x0

    return p0

    .line 28820
    :cond_1
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/BF;->A3y(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0y()I
    .locals 1

    .line 28821
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:I

    return v0
.end method

.method public final A0z(J)I
    .locals 3

    .line 28822
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Lcom/facebook/ads/redexgen/X/Eo;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A02:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/Eo;->AFI(J)I

    move-result v0

    return v0
.end method

.method public final A10(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;Z)I
    .locals 7

    .line 28823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Lcom/facebook/ads/redexgen/X/Eo;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Eo;->ADs(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;Z)I

    move-result v6

    .line 28824
    .local v0, "result":I
    const/4 v1, -0x4

    if-ne v6, v1, :cond_2

    .line 28825
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ak;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Z

    .line 28827
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Z

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x3

    goto :goto_0

    .line 28828
    :cond_1
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/Wg;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A02:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lcom/facebook/ads/redexgen/X/Wg;->A00:J

    goto :goto_1

    .line 28829
    :cond_2
    const/4 v0, -0x5

    if-ne v6, v0, :cond_3

    .line 28830
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/9S;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 28831
    .local v1, "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    iget-wide v3, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    .line 28832
    iget-wide v2, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A02:J

    add-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H(J)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    .line 28833
    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/9S;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 28834
    .end local v1    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    :cond_3
    :goto_1
    return v6
.end method

.method public final A11()Lcom/facebook/ads/redexgen/X/9o;
    .locals 1

    .line 28835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A03:Lcom/facebook/ads/redexgen/X/9o;

    return-object v0
.end method

.method public A12()V
    .locals 0

    .line 28836
    return-void
.end method

.method public A13()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28837
    return-void
.end method

.method public A14()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28838
    return-void
.end method

.method public A15(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28839
    return-void
.end method

.method public A16(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28840
    return-void
.end method

.method public A17([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28841
    return-void
.end method

.method public final A18()Z
    .locals 1

    .line 28842
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Lcom/facebook/ads/redexgen/X/Eo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Eo;->A8r()Z

    move-result v0

    goto :goto_0
.end method

.method public final A19()[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .locals 1

    .line 28843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A07:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    return-object v0
.end method

.method public final A4q()V
    .locals 3

    .line 28844
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 28845
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    .line 28846
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Lcom/facebook/ads/redexgen/X/Eo;

    .line 28847
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A07:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 28848
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Z

    .line 28849
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A12()V

    .line 28850
    return-void

    .line 28851
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A5D(Lcom/facebook/ads/redexgen/X/9o;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/Eo;JZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28852
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 28853
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A03:Lcom/facebook/ads/redexgen/X/9o;

    .line 28854
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    .line 28855
    invoke-virtual {p0, p6}, Lcom/facebook/ads/redexgen/X/Dh;->A16(Z)V

    .line 28856
    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/facebook/ads/redexgen/X/Dh;->AEJ([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/Eo;J)V

    .line 28857
    invoke-virtual {p0, p4, p5, p6}, Lcom/facebook/ads/redexgen/X/Dh;->A15(JZ)V

    .line 28858
    return-void

    .line 28859
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A61()Lcom/facebook/ads/redexgen/X/9n;
    .locals 0

    .line 28860
    return-object p0
.end method

.method public A74()Lcom/facebook/ads/redexgen/X/HT;
    .locals 1

    .line 28861
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A7i()I
    .locals 1

    .line 28862
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    return v0
.end method

.method public final A7n()Lcom/facebook/ads/redexgen/X/Eo;
    .locals 1

    .line 28863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Lcom/facebook/ads/redexgen/X/Eo;

    return-object v0
.end method

.method public final A7u()I
    .locals 1

    .line 28864
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A08:I

    return v0
.end method

.method public A8C(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28865
    return-void
.end method

.method public final A8H()Z
    .locals 1

    .line 28866
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Z

    return v0
.end method

.method public final A8e()Z
    .locals 1

    .line 28867
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Z

    return v0
.end method

.method public final A9m()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Lcom/facebook/ads/redexgen/X/Eo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Eo;->A9j()V

    .line 28869
    return-void
.end method

.method public final AEJ([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/Eo;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28870
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 28871
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Lcom/facebook/ads/redexgen/X/Eo;

    .line 28872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Z

    .line 28873
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A07:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 28874
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Dh;->A02:J

    .line 28875
    invoke-virtual {p0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/Dh;->A17([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;J)V

    .line 28876
    return-void
.end method

.method public final AET(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28877
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Z

    .line 28878
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Z

    .line 28879
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A15(JZ)V

    .line 28880
    return-void
.end method

.method public final AEt()V
    .locals 1

    .line 28881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Z

    .line 28882
    return-void
.end method

.method public final AEw(I)V
    .locals 0

    .line 28883
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:I

    .line 28884
    return-void
.end method

.method public AFa()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28885
    const/4 v0, 0x0

    return v0
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28886
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 28887
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    .line 28888
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A13()V

    .line 28889
    return-void

    .line 28890
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28891
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    const/4 v1, 0x1

    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 28892
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    .line 28893
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A14()V

    .line 28894
    return-void

    .line 28895
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
