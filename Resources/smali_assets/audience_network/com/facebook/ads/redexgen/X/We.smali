.class public abstract Lcom/facebook/ads/redexgen/X/We;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/facebook/ads/redexgen/X/Wg;",
        "O:",
        "Lcom/facebook/ads/redexgen/X/Wf;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/Ao<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/Wg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field public A04:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public A05:Z

.field public A06:Z

.field public final A07:Ljava/lang/Object;

.field public final A08:Ljava/lang/Thread;

.field public final A09:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field public final A0A:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final A0B:[Lcom/facebook/ads/redexgen/X/Wg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field public final A0C:[Lcom/facebook/ads/redexgen/X/Wf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/facebook/ads/redexgen/X/Wg;[Lcom/facebook/ads/redexgen/X/Wf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 64089
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffers":[Lcom/facebook/ads/redexgen/X/Wg;, "[TI;"
    .local p2, "outputBuffers":[Lcom/facebook/ads/redexgen/X/Wf;, "[TO;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64090
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A07:Ljava/lang/Object;

    .line 64091
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A09:Ljava/util/ArrayDeque;

    .line 64092
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A0A:Ljava/util/ArrayDeque;

    .line 64093
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/We;->A0B:[Lcom/facebook/ads/redexgen/X/Wg;

    .line 64094
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/We;->A00:I

    .line 64095
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/We;->A00:I

    if-ge v2, v0, :cond_0

    .line 64096
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/We;->A0B:[Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/We;->A0T()Lcom/facebook/ads/redexgen/X/Wg;

    move-result-object v0

    aput-object v0, v1, v2

    .line 64097
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64098
    .end local v0    # "i":I
    :cond_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/We;->A0C:[Lcom/facebook/ads/redexgen/X/Wf;

    .line 64099
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/We;->A01:I

    .line 64100
    const/4 v2, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/We;->A01:I

    if-ge v2, v0, :cond_1

    .line 64101
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/We;->A0C:[Lcom/facebook/ads/redexgen/X/Wf;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/We;->A0V()Lcom/facebook/ads/redexgen/X/Wf;

    move-result-object v0

    aput-object v0, v1, v2

    .line 64102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 64103
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ar;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ar;-><init>(Lcom/facebook/ads/redexgen/X/We;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A08:Ljava/lang/Thread;

    .line 64104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A08:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 64105
    return-void
.end method

.method private A0K()V
    .locals 1

    .line 64106
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/We;->A0Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 64108
    :cond_0
    return-void
.end method

.method private A0L()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64109
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A04:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 64110
    return-void

    .line 64111
    :cond_0
    throw v0
.end method

.method private A0M()V
    .locals 2

    .line 64112
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/We;->A0R()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64113
    :cond_0
    return-void
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64114
    :catch_0
    move-exception v1

    .line 64115
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/Wg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 64116
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Lcom/facebook/ads/redexgen/X/Wg;, "TI;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wg;->A07()V

    .line 64117
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/We;->A0B:[Lcom/facebook/ads/redexgen/X/Wg;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/We;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/We;->A00:I

    aput-object p1, v2, v1

    .line 64118
    return-void
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/Wf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 64119
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Lcom/facebook/ads/redexgen/X/Wf;, "TO;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ak;->A07()V

    .line 64120
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/We;->A0C:[Lcom/facebook/ads/redexgen/X/Wf;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/We;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/We;->A01:I

    aput-object p1, v2, v1

    .line 64121
    return-void
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/We;)V
    .locals 0

    .line 64122
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/We;->A0M()V

    return-void
.end method

.method private A0Q()Z
    .locals 1

    .line 64123
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/We;->A01:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0R()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64124
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/We;->A07:Ljava/lang/Object;

    monitor-enter v6

    .line 64125
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/We;->A06:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/We;->A0Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 64127
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/We;->A06:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 64128
    monitor-exit v6

    return v3

    .line 64129
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Wg;

    .line 64130
    .local v1, "inputBuffer":Lcom/facebook/ads/redexgen/X/Wg;, "TI;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/We;->A0C:[Lcom/facebook/ads/redexgen/X/Wf;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/We;->A01:I

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/We;->A01:I

    aget-object v1, v1, v0

    .line 64131
    .local v3, "outputBuffer":Lcom/facebook/ads/redexgen/X/Wf;, "TO;"
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/We;->A05:Z

    .line 64132
    .local v4, "resetDecoder":Z
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/We;->A05:Z

    .line 64133
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 64134
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ak;->A04()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64135
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ak;->A00(I)V

    .line 64136
    :cond_2
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/We;->A07:Ljava/lang/Object;

    monitor-enter v4

    goto :goto_2

    .line 64137
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ak;->A03()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64138
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ak;->A00(I)V

    .line 64139
    :cond_4
    :try_start_1
    invoke-virtual {p0, v2, v1, v4}, Lcom/facebook/ads/redexgen/X/We;->A0W(Lcom/facebook/ads/redexgen/X/Wg;Lcom/facebook/ads/redexgen/X/Wf;Z)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A04:Ljava/lang/Exception;

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 64140
    .end local v0
    :catch_0
    move-exception v0

    .line 64141
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/We;->A0X(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A04:Ljava/lang/Exception;

    goto :goto_1

    .line 64142
    :catch_1
    move-exception v0

    .line 64143
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/We;->A0X(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A04:Ljava/lang/Exception;

    .line 64144
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A04:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 64145
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/We;->A07:Ljava/lang/Object;

    monitor-enter v1

    goto :goto_5

    .line 64146
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/We;->A05:Z

    if-eqz v0, :cond_5

    .line 64147
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/We;->A0O(Lcom/facebook/ads/redexgen/X/Wf;)V

    .line 64148
    :goto_3
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/We;->A0N(Lcom/facebook/ads/redexgen/X/Wg;)V

    .line 64149
    monitor-exit v4

    goto :goto_4

    .line 64150
    :cond_5
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ak;->A03()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 64151
    iget v0, p0, Lcom/facebook/ads/redexgen/X/We;->A02:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/We;->A02:I

    .line 64152
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/We;->A0O(Lcom/facebook/ads/redexgen/X/Wf;)V

    goto :goto_3

    .line 64153
    :cond_6
    iget v0, p0, Lcom/facebook/ads/redexgen/X/We;->A02:I

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Wf;->A00:I

    .line 64154
    iput v3, p0, Lcom/facebook/ads/redexgen/X/We;->A02:I

    .line 64155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_3

    .line 64156
    :goto_4
    return v5

    .line 64157
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 64158
    :goto_5
    :try_start_3
    monitor-exit v1

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 64159
    :goto_6
    return v3

    .line 64160
    .end local v1    # "inputBuffer":Lcom/facebook/ads/redexgen/X/Wg;, "TI;"
    .end local v3    # "outputBuffer":Lcom/facebook/ads/redexgen/X/Wf;, "TO;"
    .end local v4    # "resetDecoder":Z
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method


# virtual methods
.method public final A0S()Lcom/facebook/ads/redexgen/X/Wg;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64161
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/We;->A07:Ljava/lang/Object;

    monitor-enter v3

    .line 64162
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/We;->A0L()V

    .line 64163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A03:Lcom/facebook/ads/redexgen/X/Wg;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 64164
    iget v0, p0, Lcom/facebook/ads/redexgen/X/We;->A00:I

    if-nez v0, :cond_1

    .line 64165
    const/4 v0, 0x0

    goto :goto_1

    .line 64166
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/We;->A0B:[Lcom/facebook/ads/redexgen/X/Wg;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/We;->A00:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/We;->A00:I

    aget-object v0, v1, v0

    :goto_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A03:Lcom/facebook/ads/redexgen/X/Wg;

    .line 64167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A03:Lcom/facebook/ads/redexgen/X/Wg;

    monitor-exit v3

    return-object v0

    .line 64168
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract A0T()Lcom/facebook/ads/redexgen/X/Wg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method public final A0U()Lcom/facebook/ads/redexgen/X/Wf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64169
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/We;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 64170
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/We;->A0L()V

    .line 64171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64172
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 64173
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Wf;

    monitor-exit v1

    return-object v0

    .line 64174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract A0V()Lcom/facebook/ads/redexgen/X/Wf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method public abstract A0W(Lcom/facebook/ads/redexgen/X/Wg;Lcom/facebook/ads/redexgen/X/Wf;Z)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public abstract A0X(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method public final A0Y(I)V
    .locals 4

    .line 64175
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/We;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A0B:[Lcom/facebook/ads/redexgen/X/Wg;

    array-length v0, v0

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 64176
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/We;->A0B:[Lcom/facebook/ads/redexgen/X/Wg;

    array-length v1, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v0, v2, v3

    .line 64177
    .local v3, "inputBuffer":Lcom/facebook/ads/redexgen/X/Wg;, "TI;"
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Wg;->A09(I)V

    .line 64178
    .end local v3    # "inputBuffer":Lcom/facebook/ads/redexgen/X/Wg;, "TI;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 64180
    :cond_1
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/Wg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64181
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Lcom/facebook/ads/redexgen/X/Wg;, "TI;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/We;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 64182
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/We;->A0L()V

    .line 64183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A03:Lcom/facebook/ads/redexgen/X/Wg;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 64184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 64185
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/We;->A0K()V

    .line 64186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A03:Lcom/facebook/ads/redexgen/X/Wg;

    .line 64187
    monitor-exit v1

    .line 64188
    return-void

    .line 64189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public A0a(Lcom/facebook/ads/redexgen/X/Wf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 64190
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Lcom/facebook/ads/redexgen/X/Wf;, "TO;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/We;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 64191
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/We;->A0O(Lcom/facebook/ads/redexgen/X/Wf;)V

    .line 64192
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/We;->A0K()V

    .line 64193
    monitor-exit v1

    .line 64194
    return-void

    .line 64195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic A4n()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64196
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/We;->A0S()Lcom/facebook/ads/redexgen/X/Wg;

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

    .line 64197
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/We;->A0U()Lcom/facebook/ads/redexgen/X/Wf;

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

    .line 64198
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    check-cast p1, Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/We;->A0Z(Lcom/facebook/ads/redexgen/X/Wg;)V

    return-void
.end method

.method public final AE4()V
    .locals 2

    .line 64199
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/We;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 64200
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/We;->A06:Z

    .line 64201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 64202
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64203
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A08:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64204
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 64205
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 64206
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final flush()V
    .locals 2

    .line 64207
    .local p0, "this":Lcom/facebook/ads/redexgen/X/We;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/We;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 64208
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/We;->A05:Z

    .line 64209
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/We;->A02:I

    .line 64210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A03:Lcom/facebook/ads/redexgen/X/Wg;

    if-eqz v0, :cond_0

    .line 64211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A03:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/We;->A0N(Lcom/facebook/ads/redexgen/X/Wg;)V

    .line 64212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A03:Lcom/facebook/ads/redexgen/X/Wg;

    .line 64213
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Wg;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/We;->A0N(Lcom/facebook/ads/redexgen/X/Wg;)V

    goto :goto_0

    .line 64215
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/We;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Wf;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/We;->A0O(Lcom/facebook/ads/redexgen/X/Wf;)V

    goto :goto_1

    .line 64217
    :cond_2
    monitor-exit v1

    .line 64218
    return-void

    .line 64219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
