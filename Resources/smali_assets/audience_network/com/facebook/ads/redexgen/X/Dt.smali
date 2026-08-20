.class public final Lcom/facebook/ads/redexgen/X/Dt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Dq;,
        Lcom/facebook/ads/redexgen/X/Ds;,
        Lcom/facebook/ads/redexgen/X/Dm;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Z

.field public A02:Z

.field public A03:Z

.field public final A04:I

.field public final A05:I

.field public final A06:Landroid/os/Handler;

.field public final A07:Landroid/os/Handler;

.field public final A08:Landroid/os/HandlerThread;

.field public final A09:Lcom/facebook/ads/redexgen/X/DZ;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Dy;

.field public final A0B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Dq;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Dq;",
            ">;"
        }
    .end annotation
.end field

.field public final A0D:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/Dm;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 29179
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "68X6mTnOwXdfZzYVO84LiBNlITu89iQX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mcCM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SB1U"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GkXNtRrGsWIfNkCQn88aLdXmD8Z6vhvm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Qey5CsRmzWj382X"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "n9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qz1jsOzCfP5BXHleCyslZPCOD1Jlt2Hf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OEfF4KTHhKUz1ci9ksApPyeCZN0rEDYT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dt;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dt;->A0C()V

    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/ads/redexgen/X/Dy;IILjava/io/File;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;)V
    .locals 5

    .line 29180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29181
    array-length v0, p5

    const/4 v4, 0x1

    if-lez v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/16 v2, 0x10

    const/16 v1, 0x26

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dt;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/HD;->A05(ZLjava/lang/Object;)V

    .line 29182
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0A:Lcom/facebook/ads/redexgen/X/Dy;

    .line 29183
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Dt;->A04:I

    .line 29184
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Dt;->A05:I

    .line 29185
    new-instance v0, Lcom/facebook/ads/redexgen/X/DZ;

    invoke-direct {v0, p4}, Lcom/facebook/ads/redexgen/X/DZ;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A09:Lcom/facebook/ads/redexgen/X/DZ;

    .line 29186
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0E:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;

    .line 29187
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Dt;->A01:Z

    .line 29188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0C:Ljava/util/ArrayList;

    .line 29189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0B:Ljava/util/ArrayList;

    .line 29190
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 29191
    .local v0, "looper":Landroid/os/Looper;
    if-nez v1, :cond_0

    .line 29192
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 29193
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A07:Landroid/os/Handler;

    .line 29194
    const/16 v2, 0x36

    const/16 v1, 0x18

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dt;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A08:Landroid/os/HandlerThread;

    .line 29195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A08:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 29196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A08:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A06:Landroid/os/Handler;

    .line 29197
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0D:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 29198
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dt;->A08()V

    .line 29199
    return-void

    .line 29200
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Dt;)Landroid/os/Handler;
    .locals 0

    .line 29201
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A07:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Dt;)Lcom/facebook/ads/redexgen/X/DZ;
    .locals 0

    .line 29202
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A09:Lcom/facebook/ads/redexgen/X/DZ;

    return-object p0
.end method

.method private A02(Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;)Lcom/facebook/ads/redexgen/X/Dq;
    .locals 9

    .line 29203
    new-instance v3, Lcom/facebook/ads/redexgen/X/Dq;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Dt;->A00:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A00:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/Dt;->A05:I

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Dq;-><init>(ILcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;ILcom/facebook/ads/redexgen/X/Di;)V

    .line 29204
    .local v0, "task":Lcom/facebook/ads/redexgen/X/Dq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29205
    const/16 v2, 0x4e

    const/16 v1, 0xd

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dt;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Dt;->A0J(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Dq;)V

    .line 29206
    return-object v3
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;)Lcom/facebook/ads/redexgen/X/Dq;
    .locals 0

    .line 29207
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dt;->A02(Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;)Lcom/facebook/ads/redexgen/X/Dq;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Dt;)Lcom/facebook/ads/redexgen/X/Dy;
    .locals 0

    .line 29208
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0A:Lcom/facebook/ads/redexgen/X/Dy;

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dt;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x25

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Dt;)Ljava/util/ArrayList;
    .locals 0

    .line 29209
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0C:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Dt;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 29210
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0D:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private A08()V
    .locals 2

    .line 29211
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dt;->A06:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dk;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Dk;-><init>(Lcom/facebook/ads/redexgen/X/Dt;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29212
    return-void
.end method

.method private A09()V
    .locals 5

    .line 29213
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dt;->A0R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29214
    return-void

    .line 29215
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dt;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dt;->A0G:[Ljava/lang/String;

    const-string v1, "Uj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "M47RheKcpZxFkBs"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dm;

    .line 29216
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/Dm;
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Dm;->AB9(Lcom/facebook/ads/redexgen/X/Dt;)V

    .line 29217
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/Dm;
    goto :goto_0

    .line 29218
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0A()V
    .locals 12

    .line 29219
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A02:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A03:Z

    if-eqz v0, :cond_1

    .line 29220
    .end local v0
    :cond_0
    return-void

    .line 29221
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A01:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0B:Ljava/util/ArrayList;

    .line 29222
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A04:I

    if-ne v1, v0, :cond_a

    :cond_2
    const/4 v0, 0x1

    .line 29223
    .local v0, "skipDownloadActions":Z
    :goto_0
    const/4 v5, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_c

    .line 29224
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/Dq;

    .line 29225
    .local v4, "task":Lcom/facebook/ads/redexgen/X/Dq;
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Dq;->A0H(Lcom/facebook/ads/redexgen/X/Dq;)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dt;->A0G:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v2, v1

    const/4 v1, 0x7

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x5a

    if-eq v2, v1, :cond_b

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dt;->A0G:[Ljava/lang/String;

    const-string v2, "ZZ"

    const/4 v1, 0x5

    aput-object v2, v3, v1

    const-string v2, "k3SOhcJE6F5rWIN"

    const/4 v1, 0x4

    aput-object v2, v3, v1

    if-nez v4, :cond_4

    .line 29226
    .end local v4    # "task":Lcom/facebook/ads/redexgen/X/Dq;
    .end local v5
    .end local v6
    .end local v7
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 29227
    :cond_4
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Dq;->A06(Lcom/facebook/ads/redexgen/X/Dq;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    move-result-object v9

    .line 29228
    .local v5, "action":Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;
    iget-boolean v7, v9, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->A03:Z

    .line 29229
    .local v6, "isRemoveAction":Z
    if-nez v7, :cond_5

    if-eqz v0, :cond_5

    goto :goto_2

    .line 29230
    :cond_5
    const/4 v11, 0x1

    .line 29231
    .local v7, "canStartTask":Z
    const/4 v6, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v6, v5, :cond_8

    .line 29232
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/redexgen/X/Dq;

    .line 29233
    .local v9, "otherTask":Lcom/facebook/ads/redexgen/X/Dq;
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Dq;->A06(Lcom/facebook/ads/redexgen/X/Dq;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->A09(Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 29234
    if-eqz v7, :cond_7

    .line 29235
    const/4 v11, 0x0

    .line 29236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/16 v2, 0xe

    const/4 v1, 0x3

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Dt;->A05(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29237
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Dq;->A0C(Lcom/facebook/ads/redexgen/X/Dq;)V

    .line 29238
    .end local v9    # "otherTask":Lcom/facebook/ads/redexgen/X/Dq;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 29239
    :cond_7
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Dq;->A06(Lcom/facebook/ads/redexgen/X/Dq;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    move-result-object v1

    iget-boolean v1, v1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->A03:Z

    if-eqz v1, :cond_6

    .line 29240
    const/4 v11, 0x0

    .line 29241
    const/4 v0, 0x1

    .line 29242
    .end local v8    # "j":I
    :cond_8
    if-eqz v11, :cond_3

    .line 29243
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Dq;->A0D(Lcom/facebook/ads/redexgen/X/Dq;)V

    .line 29244
    if-nez v7, :cond_3

    .line 29245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A04:I

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 29247
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29248
    .end local v3    # "i":I
    :cond_c
    return-void
.end method

.method private A0B()V
    .locals 3

    .line 29249
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A03:Z

    if-eqz v0, :cond_0

    .line 29250
    return-void

    .line 29251
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    .line 29252
    .local v0, "actions":[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 29253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dq;->A06(Lcom/facebook/ads/redexgen/X/Dq;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    move-result-object v0

    aput-object v0, v2, v1

    .line 29254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29255
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dt;->A06:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dl;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Dl;-><init>(Lcom/facebook/ads/redexgen/X/Dt;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29256
    return-void
.end method

.method public static A0C()V
    .locals 1

    const/16 v0, 0x70

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dt;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x6t
        0x45t
        0x4at
        0x47t
        0x55t
        0x4et
        0x43t
        0x55t
        0x6t
        0x51t
        0x4ft
        0x52t
        0x4et
        0x6t
        0x3et
        0x24t
        0x40t
        0x75t
        0x21t
        0x6dt
        0x64t
        0x60t
        0x72t
        0x75t
        0x21t
        0x6et
        0x6ft
        0x64t
        0x21t
        0x45t
        0x64t
        0x72t
        0x64t
        0x73t
        0x68t
        0x60t
        0x6dt
        0x68t
        0x7bt
        0x64t
        0x73t
        0x21t
        0x68t
        0x72t
        0x21t
        0x73t
        0x64t
        0x70t
        0x74t
        0x68t
        0x73t
        0x64t
        0x65t
        0x2ft
        0x52t
        0x79t
        0x61t
        0x78t
        0x7at
        0x79t
        0x77t
        0x72t
        0x5bt
        0x77t
        0x78t
        0x77t
        0x71t
        0x73t
        0x64t
        0x36t
        0x70t
        0x7ft
        0x7at
        0x73t
        0x36t
        0x7ft
        0x39t
        0x79t
        0x2at
        0x1ft
        0xdt
        0x15t
        0x5et
        0x17t
        0xdt
        0x5et
        0x1ft
        0x1at
        0x1at
        0x1bt
        0x1at
        0x9t
        0x3ct
        0x2et
        0x36t
        0x7dt
        0x2et
        0x29t
        0x3ct
        0x29t
        0x38t
        0x7dt
        0x34t
        0x2et
        0x7dt
        0x3et
        0x35t
        0x3ct
        0x33t
        0x3at
        0x38t
        0x39t
    .end array-data
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Dq;)V
    .locals 6

    .line 29257
    const/16 v2, 0x5b

    const/16 v1, 0x15

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dt;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Dt;->A0J(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Dq;)V

    .line 29258
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Dq;->A0K()Lcom/facebook/ads/redexgen/X/Ds;

    move-result-object v5

    .line 29259
    .local v0, "taskState":Lcom/facebook/ads/redexgen/X/Ds;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dt;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dt;->A0G:[Ljava/lang/String;

    const-string v1, "TUrgn6We5nsrVkZlQG2KUeV0nEHaGaai"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dm;

    .line 29260
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Dm;
    invoke-interface {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/Dm;->ACk(Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/redexgen/X/Ds;)V

    .line 29261
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Dm;
    goto :goto_0

    .line 29262
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/Dq;)V
    .locals 4

    .line 29263
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A03:Z

    if-eqz v0, :cond_0

    .line 29264
    return-void

    .line 29265
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Dq;->A0L()Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    .line 29266
    .local v0, "stopped":Z
    if-eqz v3, :cond_1

    .line 29267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29268
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dt;->A0D(Lcom/facebook/ads/redexgen/X/Dq;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dt;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_4

    .line 29269
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dt;->A0G:[Ljava/lang/String;

    const-string v1, "xCRZPuTuqF5VhljpIGNZbvIN3H6gjFvE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Dq;->A0M()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29271
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dt;->A0B()V

    .line 29272
    :cond_2
    if-eqz v3, :cond_3

    .line 29273
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dt;->A0A()V

    .line 29274
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dt;->A09()V

    .line 29275
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Dt;)V
    .locals 0

    .line 29276
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dt;->A0B()V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Dt;)V
    .locals 0

    .line 29277
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dt;->A0A()V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/redexgen/X/Dq;)V
    .locals 0

    .line 29278
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dt;->A0D(Lcom/facebook/ads/redexgen/X/Dq;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/redexgen/X/Dq;)V
    .locals 0

    .line 29279
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dt;->A0E(Lcom/facebook/ads/redexgen/X/Dq;)V

    return-void
.end method

.method public static A0J(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Dq;)V
    .locals 4

    .line 29280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/4 v1, 0x2

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dt;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29281
    return-void
.end method

.method public static synthetic A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Dq;)V
    .locals 0

    .line 29282
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Dt;->A0J(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Dq;)V

    return-void
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/Dt;)Z
    .locals 0

    .line 29283
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A03:Z

    return p0
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/Dt;Z)Z
    .locals 0

    .line 29284
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Dt;->A02:Z

    return p1
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/Dt;)[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;
    .locals 0

    .line 29285
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0E:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;

    return-object p0
.end method


# virtual methods
.method public final A0O(Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;)I
    .locals 2

    .line 29286
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A03:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 29287
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dt;->A02(Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;)Lcom/facebook/ads/redexgen/X/Dq;

    move-result-object v1

    .line 29288
    .local v0, "task":Lcom/facebook/ads/redexgen/X/Dq;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A02:Z

    if-eqz v0, :cond_0

    .line 29289
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dt;->A0B()V

    .line 29290
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dt;->A0A()V

    .line 29291
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Dq;->A03(Lcom/facebook/ads/redexgen/X/Dq;)I

    move-result v0

    if-nez v0, :cond_0

    .line 29292
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Dt;->A0D(Lcom/facebook/ads/redexgen/X/Dq;)V

    .line 29293
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Dq;->A04(Lcom/facebook/ads/redexgen/X/Dq;)I

    move-result v0

    return v0
.end method

.method public final A0P()V
    .locals 1

    .line 29294
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A03:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 29295
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A01:Z

    if-eqz v0, :cond_0

    .line 29296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A01:Z

    .line 29297
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dt;->A0A()V

    .line 29298
    :cond_0
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/Dm;)V
    .locals 1

    .line 29299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 29300
    return-void
.end method

.method public final A0R()Z
    .locals 4

    .line 29301
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A03:Z

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 29302
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A02:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 29303
    return v2

    .line 29304
    :cond_0
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 29305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dq;->A0L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29306
    return v2

    .line 29307
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29308
    .end local v0    # "i":I
    :cond_2
    return v3
.end method

.method public final A0S()[Lcom/facebook/ads/redexgen/X/Ds;
    .locals 3

    .line 29309
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A03:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 29310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Ds;

    .line 29311
    .local v0, "states":[Lcom/facebook/ads/redexgen/X/Ds;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 29312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dt;->A0C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dq;->A0K()Lcom/facebook/ads/redexgen/X/Ds;

    move-result-object v0

    aput-object v0, v2, v1

    .line 29313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29314
    .end local v1    # "i":I
    :cond_0
    return-object v2
.end method
