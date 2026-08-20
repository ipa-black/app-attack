.class public abstract Lcom/facebook/ads/redexgen/X/BI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/V6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/35;,
        Lcom/facebook/ads/redexgen/X/36;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/36;

.field public final A03:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/36;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/BJ;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/facebook/ads/redexgen/X/36;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 23173
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "KcRMvDVLZNgc0ooVkhN4ahdKcengok4t"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7pRgSHJJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GNHbGuKbKosn0JAz4xkib8iBcGb5WNz5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hJNyShuwv1tZ2cTKHVoLW9isLSOVhBhj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "H7WHQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6cZmXLfi2DPGYj7ZmxIdQ5A"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "b2Hmg2LD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cSsJl4a3bVOvbO76ENMD9MAL1lcw3B"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BI;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 23174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23175
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A03:Ljava/util/ArrayDeque;

    .line 23176
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v0, 0xa

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 23177
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A03:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/36;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/36;-><init>(Lcom/facebook/ads/redexgen/X/Fa;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23179
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:Ljava/util/ArrayDeque;

    .line 23180
    const/4 v2, 0x0

    .restart local v0    # "i":I
    :goto_1
    const/4 v0, 0x2

    if-ge v2, v0, :cond_1

    .line 23181
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/35;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/35;-><init>(Lcom/facebook/ads/redexgen/X/BI;Lcom/facebook/ads/redexgen/X/Fa;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23182
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23183
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:Ljava/util/PriorityQueue;

    .line 23184
    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/36;)V
    .locals 1

    .line 23185
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wg;->A07()V

    .line 23186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23187
    return-void
.end method


# virtual methods
.method public abstract A0L()Lcom/facebook/ads/redexgen/X/FR;
.end method

.method public A0M()Lcom/facebook/ads/redexgen/X/BK;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FS;
        }
    .end annotation

    .line 23188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/36;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 23189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/BI;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A06:[Ljava/lang/String;

    const-string v1, "MSCQz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 23191
    const/4 v0, 0x0

    return-object v0

    .line 23192
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/36;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/36;

    .line 23193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/36;

    return-object v0
.end method

.method public A0N()Lcom/facebook/ads/redexgen/X/BJ;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FS;
        }
    .end annotation

    .line 23194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 23195
    return-object v5

    .line 23196
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:Ljava/util/PriorityQueue;

    .line 23197
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/36;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/Wg;->A00:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_4

    .line 23198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/36;

    .line 23199
    .local v0, "inputBuffer":Lcom/facebook/ads/redexgen/X/36;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ak;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/BJ;

    .line 23201
    .local v1, "outputBuffer":Lcom/facebook/ads/redexgen/X/BJ;
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ak;->A00(I)V

    .line 23202
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0K(Lcom/facebook/ads/redexgen/X/36;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23203
    .end local v1    # "outputBuffer":Lcom/facebook/ads/redexgen/X/BJ;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0P(Lcom/facebook/ads/redexgen/X/BK;)V

    .line 23204
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->A0R()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23205
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->A0L()Lcom/facebook/ads/redexgen/X/FR;

    move-result-object v6

    .line 23206
    .local v2, "subtitle":Lcom/facebook/ads/redexgen/X/FR;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ak;->A03()Z

    move-result v0

    if-nez v0, :cond_2

    .line 23207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/BJ;

    .line 23208
    .restart local v1    # "outputBuffer":Lcom/facebook/ads/redexgen/X/BJ;
    iget-wide v4, v1, Lcom/facebook/ads/redexgen/X/Wg;->A00:J

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/BJ;->A09(JLcom/facebook/ads/redexgen/X/FR;J)V

    .line 23209
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0K(Lcom/facebook/ads/redexgen/X/36;)V

    .line 23210
    return-object v3

    .line 23211
    .end local v1    # "outputBuffer":Lcom/facebook/ads/redexgen/X/BJ;
    .end local v2    # "subtitle":Lcom/facebook/ads/redexgen/X/FR;
    :cond_2
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/BI;->A0K(Lcom/facebook/ads/redexgen/X/36;)V

    .line 23212
    .end local v0    # "inputBuffer":Lcom/facebook/ads/redexgen/X/36;
    goto :goto_0

    .line 23213
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A06:[Ljava/lang/String;

    const-string v1, "Z7l20gfPvvtRCAhrDUNIN8ivECfXDju3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "MHWMj6Fd4O5yELPFkyyjrniha9DdnabU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    .line 23214
    :cond_4
    return-object v5
.end method

.method public A0O(Lcom/facebook/ads/redexgen/X/BK;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FS;
        }
    .end annotation

    .line 23215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/36;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/BI;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 23216
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/BI;->A06:[Ljava/lang/String;

    const-string v1, "h6rCbn8hi0Qg5CvGAi8vHFDPjl0uqV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "6Me2Lvii1P8K0tFjrCRJacm"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ak;->A03()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/36;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BI;->A0K(Lcom/facebook/ads/redexgen/X/36;)V

    .line 23218
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/36;

    .line 23219
    return-void

    .line 23220
    :cond_2
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/36;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/BI;->A01:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A01:J

    invoke-static {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/36;->A01(Lcom/facebook/ads/redexgen/X/36;J)J

    .line 23221
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:Ljava/util/PriorityQueue;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/36;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public abstract A0P(Lcom/facebook/ads/redexgen/X/BK;)V
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/BJ;)V
    .locals 1

    .line 23222
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/BJ;->A07()V

    .line 23223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23224
    return-void
.end method

.method public abstract A0R()Z
.end method

.method public final bridge synthetic A4n()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23225
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->A0M()Lcom/facebook/ads/redexgen/X/BK;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A4o()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23226
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->A0N()Lcom/facebook/ads/redexgen/X/BJ;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ADo(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23227
    check-cast p1, Lcom/facebook/ads/redexgen/X/BK;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/BI;->A0O(Lcom/facebook/ads/redexgen/X/BK;)V

    return-void
.end method

.method public AE4()V
    .locals 0

    .line 23228
    return-void
.end method

.method public AF5(J)V
    .locals 0

    .line 23229
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:J

    .line 23230
    return-void
.end method

.method public flush()V
    .locals 2

    .line 23231
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A01:J

    .line 23232
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:J

    .line 23233
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/36;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BI;->A0K(Lcom/facebook/ads/redexgen/X/36;)V

    goto :goto_0

    .line 23235
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/36;

    if-eqz v0, :cond_1

    .line 23236
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BI;->A0K(Lcom/facebook/ads/redexgen/X/36;)V

    .line 23237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A02:Lcom/facebook/ads/redexgen/X/36;

    .line 23238
    :cond_1
    return-void
.end method
