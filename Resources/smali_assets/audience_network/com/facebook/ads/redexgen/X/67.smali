.class public final Lcom/facebook/ads/redexgen/X/67;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/68;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A01:Z

.field public static A02:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 15141
    invoke-static {}, Lcom/facebook/ads/redexgen/X/67;->A02()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/67;->A01:Z

    .line 15142
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/67;->A00:Lcom/facebook/ads/redexgen/X/68;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/67;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x19

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 6

    .line 15144
    const-class v1, Lcom/facebook/ads/redexgen/X/67;

    monitor-enter v1

    .line 15145
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/67;->A00:Lcom/facebook/ads/redexgen/X/68;

    if-nez v0, :cond_0

    .line 15146
    monitor-exit v1

    return-void

    .line 15147
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15148
    sget-object v0, Lcom/facebook/ads/redexgen/X/67;->A00:Lcom/facebook/ads/redexgen/X/68;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/68;->AEK()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;)V

    .line 15149
    .local v0, "e":Lcom/facebook/ads/redexgen/X/7t;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/7t;->A03(I)V

    .line 15150
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7M;->A00()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    .line 15151
    .local v1, "sdkContext":Lcom/facebook/ads/redexgen/X/Xb;
    if-eqz v0, :cond_1

    .line 15152
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v4

    const/16 v3, 0xd49

    .line 15153
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/67;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 15154
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/67;->A00:Lcom/facebook/ads/redexgen/X/68;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/68;->reset()V

    .line 15155
    return-void

    .line 15156
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/7t;
    .end local v1    # "sdkContext":Lcom/facebook/ads/redexgen/X/Xb;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/67;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x18t
        -0x15t
        -0xct
        -0x17t
        -0x12t
        -0xdt
        -0x19t
        -0x8t
        -0xft
    .end array-data
.end method

.method public static A03(J)V
    .locals 3

    .line 15157
    const-wide/16 v1, 0x0

    cmp-long v0, p0, v1

    if-lez v0, :cond_0

    .line 15158
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xl;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Xl;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/67;->A00:Lcom/facebook/ads/redexgen/X/68;

    .line 15159
    new-instance v0, Lcom/facebook/ads/redexgen/X/69;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/69;-><init>(J)V

    .line 15160
    :cond_0
    return-void
.end method
