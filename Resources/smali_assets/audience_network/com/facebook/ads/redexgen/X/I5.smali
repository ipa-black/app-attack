.class public final Lcom/facebook/ads/redexgen/X/I5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/I6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VSyncSampler"
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Lcom/facebook/ads/redexgen/X/I5;


# instance fields
.field public A00:I

.field public A01:Landroid/view/Choreographer;

.field public final A02:Landroid/os/Handler;

.field public final A03:Landroid/os/HandlerThread;

.field public volatile A04:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 37851
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "L0xICluY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YyqJkLEow6IpGdDAcJTIFuORNDEj98sW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JrGolTruxktIU3jCjKgpkMNOgzAemigl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lnMR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Uem1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dhrVPEv6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OHOp8E3R"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YRgnGRfNPhnRlIW3Svm0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/I5;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/I5;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/I5;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/I5;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/I5;->A07:Lcom/facebook/ads/redexgen/X/I5;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 37852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37853
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A04:J

    .line 37854
    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I5;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A03:Landroid/os/HandlerThread;

    .line 37855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A03:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A03:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A02:Landroid/os/Handler;

    .line 37857
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I5;->A02:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37858
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/I5;
    .locals 1

    .line 37859
    sget-object v0, Lcom/facebook/ads/redexgen/X/I5;->A07:Lcom/facebook/ads/redexgen/X/I5;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/I5;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 2

    .line 37860
    iget v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A00:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A00:I

    .line 37861
    iget v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A00:I

    if-ne v0, v1, :cond_0

    .line 37862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A01:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 37863
    :cond_0
    return-void
.end method

.method private A03()V
    .locals 1

    .line 37864
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A01:Landroid/view/Choreographer;

    .line 37865
    return-void
.end method

.method private A04()V
    .locals 2

    .line 37866
    iget v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A00:I

    .line 37867
    iget v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A00:I

    if-nez v0, :cond_0

    .line 37868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A01:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 37869
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A04:J

    .line 37870
    :cond_0
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/I5;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x69t
        0x42t
        0x45t
        0x58t
        0x4ft
        0x45t
        0x4dt
        0x58t
        0x4bt
        0x5at
        0x42t
        0x4ft
        0x58t
        0x65t
        0x5dt
        0x44t
        0x4ft
        0x58t
        0x10t
        0x62t
        0x4bt
        0x44t
        0x4et
        0x46t
        0x4ft
        0x58t
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 37871
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I5;->A02:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37872
    return-void
.end method

.method public final A07()V
    .locals 2

    .line 37873
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I5;->A02:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37874
    return-void
.end method

.method public final doFrame(J)V
    .locals 3

    .line 37875
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/I5;->A04:J

    .line 37876
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/I5;->A01:Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 37877
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 37878
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 37879
    const/4 v0, 0x0

    return v0

    .line 37880
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/I5;->A04()V

    .line 37881
    return v3

    .line 37882
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/I5;->A02()V

    .line 37883
    return v3

    .line 37884
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/I5;->A03()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/I5;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_3

    .line 37885
    sget-object v2, Lcom/facebook/ads/redexgen/X/I5;->A06:[Ljava/lang/String;

    const-string v1, "7gxKFzGBfIFRzt2a"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
