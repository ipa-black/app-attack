.class public final Lcom/facebook/ads/redexgen/X/6o;
.super Lcom/facebook/ads/redexgen/X/PR;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/PO;

.field public final A02:Lcom/facebook/ads/redexgen/X/NY;

.field public final A03:Lcom/facebook/ads/redexgen/X/Mt;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 16046
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1cdJmqZo5JmjBSz3V6iIBc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "b5mtsG63LfUTmVo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "v7pUKp70YLsspQnihAQa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8RT4D0PvYsYuyNKYG0J"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LG3ePim6beoWq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NyBn7Ghd81GFryl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6ZzG2MB7DBeQL6nfhWDwO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "j693JmATHJpRsHF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6o;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6o;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 1

    .line 16047
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PR;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 16048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6o;->A00:Ljava/lang/ref/WeakReference;

    .line 16049
    new-instance v0, Lcom/facebook/ads/redexgen/X/6s;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6s;-><init>(Lcom/facebook/ads/redexgen/X/6o;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6o;->A01:Lcom/facebook/ads/redexgen/X/PO;

    .line 16050
    new-instance v0, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Lcom/facebook/ads/redexgen/X/6o;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6o;->A02:Lcom/facebook/ads/redexgen/X/NY;

    .line 16051
    new-instance v0, Lcom/facebook/ads/redexgen/X/6q;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6q;-><init>(Lcom/facebook/ads/redexgen/X/6o;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6o;->A03:Lcom/facebook/ads/redexgen/X/Mt;

    .line 16052
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/6o;)Lcom/facebook/ads/redexgen/X/RA;
    .locals 0

    .line 16053
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/6o;)Lcom/facebook/ads/redexgen/X/RA;
    .locals 0

    .line 16054
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object p0

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6o;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x60

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/6o;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 16055
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6o;->A00:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/6o;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 16056
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6o;->A00:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public static A05()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6o;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x45t
        0x51t
        0x40t
        0x4dt
        0x4bt
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 16057
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/PR;->A07()V

    .line 16058
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16059
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    .line 16060
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8V;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6o;->A03:Lcom/facebook/ads/redexgen/X/Mt;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6o;->A01:Lcom/facebook/ads/redexgen/X/PO;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6o;->A02:Lcom/facebook/ads/redexgen/X/NY;

    aput-object v0, v2, v1

    .line 16061
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8U;->A03([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 16062
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 16063
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16064
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    .line 16065
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8V;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6o;->A02:Lcom/facebook/ads/redexgen/X/NY;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6o;->A01:Lcom/facebook/ads/redexgen/X/PO;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6o;->A03:Lcom/facebook/ads/redexgen/X/Mt;

    aput-object v0, v2, v1

    .line 16066
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8U;->A04([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 16067
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/PR;->A08()V

    .line 16068
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .line 16069
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 16070
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6o;->A00:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 16071
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/PR;->onDetachedFromWindow()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/6o;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 16072
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0

    .line 16073
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6o;->A05:[Ljava/lang/String;

    const-string v1, "22FJBjB3Y4dWSYUEkMs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void
.end method
