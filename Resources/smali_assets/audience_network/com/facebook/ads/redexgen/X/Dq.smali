.class public final Lcom/facebook/ads/redexgen/X/Dq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadManager$Task$InternalState;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/Thread;

.field public A01:Ljava/lang/Throwable;

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

.field public final A05:Lcom/facebook/ads/redexgen/X/Dt;

.field public volatile A06:I

.field public volatile A07:Lcom/facebook/ads/redexgen/X/Dx;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 29088
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vVdME5rGh6jSklOQZDzF1wgb5E3MLtgZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZAtMYOp2u1lL6JeMNrwaP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "R18DWjYCOUcwxBcB68CkhMZleZUfd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BgSMbGv4hkjr6jVDXXRQz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8IjXA2dWofepF8Qtj8uDFWU0DRTFdV8D"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LaDUpssn4K5d6zhWjZjBpYiMi3dPH9K8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ss5K9h"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rXtGh46sDhfXdpwUsizJp86LtKfpJH2Z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dq;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dq;->A0B()V

    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;I)V
    .locals 1

    .line 29089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29090
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Dq;->A02:I

    .line 29091
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Dq;->A05:Lcom/facebook/ads/redexgen/X/Dt;

    .line 29092
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Dq;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    .line 29093
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    .line 29094
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Dq;->A03:I

    .line 29095
    return-void
.end method

.method public synthetic constructor <init>(ILcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;ILcom/facebook/ads/redexgen/X/Di;)V
    .locals 0

    .line 29096
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Dq;-><init>(ILcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;I)V

    return-void
.end method

.method private final A00()F
    .locals 1

    .line 29097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A07:Lcom/facebook/ads/redexgen/X/Dx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A07:Lcom/facebook/ads/redexgen/X/Dx;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Dx;->A6V()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method private A01()I
    .locals 2

    .line 29098
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    .line 29099
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    return v0

    .line 29100
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 29101
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private A02(I)I
    .locals 2

    .line 29102
    add-int/lit8 v0, p1, -0x1

    mul-int/lit16 v1, v0, 0x3e8

    const/16 v0, 0x1388

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Dq;)I
    .locals 0

    .line 29103
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Dq;)I
    .locals 0

    .line 29104
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A02:I

    return p0
.end method

.method private final A05()J
    .locals 2

    .line 29105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A07:Lcom/facebook/ads/redexgen/X/Dx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A07:Lcom/facebook/ads/redexgen/X/Dx;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Dx;->A6W()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Dq;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;
    .locals 0

    .line 29106
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dq;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v3, v0, -0x6a

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dq;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dq;->A09:[Ljava/lang/String;

    const-string v1, "SxpsrgoFQf8yDU92Sremp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "hhSclg15fgRacyt55sjc8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A08()V
    .locals 2

    .line 29107
    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A0F(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A05:Lcom/facebook/ads/redexgen/X/Dt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dt;->A00(Lcom/facebook/ads/redexgen/X/Dt;)Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Dn;-><init>(Lcom/facebook/ads/redexgen/X/Dq;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29109
    :cond_0
    :goto_0
    return-void

    .line 29110
    :cond_1
    const/4 v1, 0x1

    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A0F(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29111
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dq;->A09()V

    goto :goto_0
.end method

.method private A09()V
    .locals 1

    .line 29112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A07:Lcom/facebook/ads/redexgen/X/Dx;

    if-eqz v0, :cond_0

    .line 29113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A07:Lcom/facebook/ads/redexgen/X/Dx;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Dx;->cancel()V

    .line 29114
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A00:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 29115
    return-void
.end method

.method private A0A()V
    .locals 2

    .line 29116
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A0F(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29117
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A00:Ljava/lang/Thread;

    .line 29118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A00:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 29119
    :cond_0
    return-void
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dq;->A08:[B

    return-void

    :array_0
    .array-data 1
        -0x31t
        -0x6t
        0x2t
        -0x7t
        -0x9t
        -0x6t
        -0x14t
        -0x11t
        -0x55t
        -0x10t
        -0x3t
        -0x3t
        -0x6t
        -0x3t
        -0x47t
        -0x55t
        -0x23t
        -0x10t
        -0x1t
        -0x3t
        0x4t
        -0x55t
        -0x29t
        -0x16t
        -0x8t
        -0x16t
        -0x7t
        -0x5bt
        -0x16t
        -0x9t
        -0x9t
        -0xct
        -0x9t
        -0x5bt
        -0x18t
        -0xct
        -0x6t
        -0xdt
        -0x7t
        -0x4dt
        -0x5bt
        -0x17t
        -0xct
        -0x4t
        -0xdt
        -0xft
        -0xct
        -0x1at
        -0x17t
        -0x16t
        -0x17t
        -0x39t
        -0x2t
        -0x7t
        -0x16t
        -0x8t
        -0x5bt
        -0x3et
        -0x5bt
        -0x10t
        -0x3t
        0xft
        0x7t
        -0x44t
        0x5t
        0xft
        -0x44t
        0xft
        0x10t
        -0x3t
        0xet
        0x10t
        0x1t
        0x0t
    .end array-data
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Dq;)V
    .locals 0

    .line 29120
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dq;->A08()V

    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/Dq;)V
    .locals 0

    .line 29121
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dq;->A0A()V

    return-void
.end method

.method private A0E()Z
    .locals 1

    .line 29122
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0F(II)Z
    .locals 1

    .line 29123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A0G(IILjava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method private A0G(IILjava/lang/Throwable;)Z
    .locals 4

    .line 29124
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    const/4 v3, 0x0

    if-eq v0, p1, :cond_0

    .line 29125
    return v3

    .line 29126
    :cond_0
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    .line 29127
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Dq;->A01:Ljava/lang/Throwable;

    .line 29128
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dq;->A01()I

    move-result v0

    const/4 v1, 0x1

    if-eq v2, v0, :cond_1

    const/4 v3, 0x1

    .line 29129
    .local v0, "isInternalState":Z
    :cond_1
    if-nez v3, :cond_2

    .line 29130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A05:Lcom/facebook/ads/redexgen/X/Dt;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Dt;->A0I(Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/redexgen/X/Dq;)V

    .line 29131
    :cond_2
    return v1
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/Dq;)Z
    .locals 0

    .line 29132
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dq;->A0E()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/Dq;II)Z
    .locals 0

    .line 29133
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dq;->A0F(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/Dq;IILjava/lang/Throwable;)Z
    .locals 0

    .line 29134
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Dq;->A0G(IILjava/lang/Throwable;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0K()Lcom/facebook/ads/redexgen/X/Ds;
    .locals 9

    .line 29135
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dq;->A01()I

    move-result v3

    .line 29136
    .local p0, "externalState":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ds;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dq;->A02:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dq;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    .line 29137
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dq;->A00()F

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dq;->A05()J

    move-result-wide v5

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Dq;->A01:Ljava/lang/Throwable;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Ds;-><init>(ILcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;IFJLjava/lang/Throwable;Lcom/facebook/ads/redexgen/X/Di;)V

    .line 29138
    return-object v0
.end method

.method public final A0L()Z
    .locals 3

    .line 29139
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    const/4 v2, 0x1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    if-eq v0, v2, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    const/4 v0, 0x6

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final A0M()Z
    .locals 2

    .line 29140
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final run()V
    .locals 11

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v5, p0

    .line 29141
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Dq;
    :try_start_0
    const/16 v2, 0x3b

    const/16 v1, 0xf

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Dt;->A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Dq;)V

    .line 29142
    const/4 v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29143
    .local v1, "error":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Dq;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dq;->A05:Lcom/facebook/ads/redexgen/X/Dt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dt;->A04(Lcom/facebook/ads/redexgen/X/Dt;)Lcom/facebook/ads/redexgen/X/Dy;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->A07(Lcom/facebook/ads/redexgen/X/Dy;)Lcom/facebook/ads/redexgen/X/Dx;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Dq;->A07:Lcom/facebook/ads/redexgen/X/Dx;

    .line 29144
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dq;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->A03:Z

    if-eqz v0, :cond_1

    .line 29145
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dq;->A07:Lcom/facebook/ads/redexgen/X/Dx;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Dx;->remove()V

    goto :goto_1

    .line 29146
    :cond_1
    const/4 v6, 0x0

    .line 29147
    .local v2, "errorCount":I
    const-wide/16 v9, -0x1

    .line 29148
    .local v3, "errorPosition":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29149
    :try_start_2
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dq;->A07:Lcom/facebook/ads/redexgen/X/Dx;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Dx;->A4v()V

    goto :goto_1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29150
    :catch_0
    move-exception v8

    .line 29151
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dq;->A07:Lcom/facebook/ads/redexgen/X/Dx;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Dx;->A6W()J

    move-result-wide v3

    .line 29152
    .local v6, "downloadedBytes":J
    cmp-long v0, v3, v9

    if-eqz v0, :cond_2

    .line 29153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x16

    const/16 v1, 0x25

    const/16 v0, 0x1b

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Dt;->A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Dq;)V

    .line 29154
    move-wide v9, v3

    .line 29155
    const/4 v6, 0x0

    .line 29156
    :cond_2
    iget v1, v5, Lcom/facebook/ads/redexgen/X/Dq;->A06:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    add-int/lit8 v6, v6, 0x1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Dq;->A03:I

    if-gt v6, v0, :cond_3

    .line 29157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x21

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Dt;->A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Dq;)V

    .line 29158
    invoke-direct {v5, v6}, Lcom/facebook/ads/redexgen/X/Dq;->A02(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 29159
    .restart local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "downloadedBytes":J
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Dq;
    .end local v1    # "error":Ljava/lang/Throwable;
    :cond_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29160
    :catchall_0
    move-exception v2

    .line 29161
    .local v2, "e":Ljava/lang/Throwable;
    .local v2, "finalError":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    :try_start_4
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dq;->A05:Lcom/facebook/ads/redexgen/X/Dt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dt;->A00(Lcom/facebook/ads/redexgen/X/Dt;)Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Do;

    invoke-direct {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/Do;-><init>(Lcom/facebook/ads/redexgen/X/Dq;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29162
    return-void
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0
    .end local v1
    .end local v2    # "finalError":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 29163
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
