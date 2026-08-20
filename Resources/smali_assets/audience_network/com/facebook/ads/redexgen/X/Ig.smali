.class public final Lcom/facebook/ads/redexgen/X/Ig;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/redexgen/X/Q5;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;

.field public static final A0P:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Landroid/net/Uri;

.field public A08:Landroid/view/Surface;

.field public A09:Landroid/view/View;

.field public A0A:Landroid/widget/MediaController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0B:Lcom/facebook/ads/redexgen/X/PK;

.field public A0C:Lcom/facebook/ads/redexgen/X/Q7;

.field public A0D:Lcom/facebook/ads/redexgen/X/Q7;

.field public A0E:Lcom/facebook/ads/redexgen/X/Q8;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public final A0K:J

.field public final A0L:Landroid/widget/MediaController$MediaPlayerControl;

.field public final A0M:Lcom/facebook/ads/redexgen/X/Xc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 38732
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "w6W1Pn4pGSy1veXw7fNic4Q20vJelJ2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "acNB2lhq8cVPZLtYghlcj8euurSBcqdx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "I2BPPFoGG3lXsTKKPy2FKKasdsM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uMMu8699SI696vicAGdUyhB1Kjcnsg5D"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "S7aPtd9QGtmzyQ9VrNW20IwmaDF5p1Ml"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zS648UlhjTBJXulz7NmFsyAIwaw2iCpI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZyXsHo9oibpczWLkt42IpHWLTZevRgPI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "euMEykkwaXnS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ig;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Ig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ig;->A0P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 2

    .line 38733
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 38734
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    .line 38735
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    .line 38736
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0I:Z

    .line 38737
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    .line 38738
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A05:I

    .line 38739
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A04:I

    .line 38740
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A00:F

    .line 38741
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0H:Z

    .line 38742
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A01:I

    .line 38743
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0F:Z

    .line 38744
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0J:Z

    .line 38745
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A02:I

    .line 38746
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0G:Z

    .line 38747
    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A03:Lcom/facebook/ads/redexgen/X/PK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    .line 38748
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q2;-><init>(Lcom/facebook/ads/redexgen/X/Ig;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    .line 38749
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    .line 38750
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;)V
    .locals 2

    .line 38751
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38752
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    .line 38753
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    .line 38754
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0I:Z

    .line 38755
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    .line 38756
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A05:I

    .line 38757
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A04:I

    .line 38758
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A00:F

    .line 38759
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0H:Z

    .line 38760
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A01:I

    .line 38761
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0F:Z

    .line 38762
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0J:Z

    .line 38763
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A02:I

    .line 38764
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0G:Z

    .line 38765
    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A03:Lcom/facebook/ads/redexgen/X/PK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    .line 38766
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q2;-><init>(Lcom/facebook/ads/redexgen/X/Ig;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    .line 38767
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    .line 38768
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 38769
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38770
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    .line 38771
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    .line 38772
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0I:Z

    .line 38773
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    .line 38774
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A05:I

    .line 38775
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A04:I

    .line 38776
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A00:F

    .line 38777
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0H:Z

    .line 38778
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A01:I

    .line 38779
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0F:Z

    .line 38780
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0J:Z

    .line 38781
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A02:I

    .line 38782
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0G:Z

    .line 38783
    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A03:Lcom/facebook/ads/redexgen/X/PK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    .line 38784
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q2;-><init>(Lcom/facebook/ads/redexgen/X/Ig;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    .line 38785
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    .line 38786
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ig;)Landroid/media/MediaPlayer;
    .locals 0

    .line 38787
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ig;)Landroid/widget/MediaController;
    .locals 0

    .line 38788
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0A:Landroid/widget/MediaController;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ig;)Lcom/facebook/ads/redexgen/X/Q8;
    .locals 0

    .line 38789
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0E:Lcom/facebook/ads/redexgen/X/Q8;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ig;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x72

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x17a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ig;->A0N:[B

    return-void

    :array_0
    .array-data 1
        0x59t
        0x57t
        0x5bt
        0x59t
        0x1et
        0x3t
        0xft
        0x9t
        0x1at
        0x59t
        0x5bt
        0x41t
        0x5bt
        0x59t
        0x39t
        0x66t
        0x69t
        0x4bt
        0x44t
        0x44t
        0x45t
        0x5et
        0xat
        0x5at
        0x58t
        0x4ft
        0x5at
        0x4bt
        0x58t
        0x4ft
        0xat
        0x47t
        0x4ft
        0x4et
        0x43t
        0x4bt
        0xat
        0x5at
        0x46t
        0x4bt
        0x53t
        0x4ft
        0x58t
        0xat
        0x5dt
        0x43t
        0x5et
        0x42t
        0xat
        0x79t
        0x5ft
        0x58t
        0x4ct
        0x4bt
        0x49t
        0x4ft
        0x7et
        0x4ft
        0x52t
        0x5et
        0x5ft
        0x58t
        0x4ft
        0x10t
        0xat
        0x2dt
        0x1t
        0x1bt
        0x2t
        0xat
        0x0t
        0x49t
        0x1at
        0x4et
        0x1ct
        0xbt
        0x1at
        0x1ct
        0x7t
        0xbt
        0x18t
        0xbt
        0x4et
        0x18t
        0x7t
        0xat
        0xbt
        0x1t
        0x4et
        0x7t
        0x0t
        0x8t
        0x1t
        0x1ct
        0x3t
        0xft
        0x1at
        0x7t
        0x1t
        0x0t
        0x5dt
        0x7at
        0x72t
        0x77t
        0x7et
        0x7ft
        0x3bt
        0x6ft
        0x74t
        0x3bt
        0x74t
        0x6bt
        0x7et
        0x75t
        0x3bt
        0x7at
        0x68t
        0x68t
        0x7et
        0x6ft
        0x68t
        0x3bt
        0xft
        0x27t
        0x27t
        0x2ft
        0x24t
        0x2dt
        0x68t
        0x29t
        0x24t
        0x3ft
        0x29t
        0x31t
        0x3bt
        0x68t
        0x3ct
        0x20t
        0x3at
        0x27t
        0x3ft
        0x68t
        0x29t
        0x26t
        0x68t
        0x2dt
        0x30t
        0x2bt
        0x2dt
        0x38t
        0x3ct
        0x21t
        0x27t
        0x26t
        0x68t
        0x3ft
        0x21t
        0x3ct
        0x20t
        0x68t
        0x3bt
        0x2dt
        0x3ct
        0xat
        0x29t
        0x2bt
        0x23t
        0x2ft
        0x3at
        0x27t
        0x3dt
        0x26t
        0x2ct
        0xct
        0x3at
        0x29t
        0x3ft
        0x29t
        0x2at
        0x24t
        0x2dt
        0x68t
        0x27t
        0x26t
        0x68t
        0x6t
        0x27t
        0x3dt
        0x2ft
        0x29t
        0x3ct
        0x68t
        0x29t
        0x2at
        0x27t
        0x3et
        0x2dt
        0x66t
        0x68t
        0x3bt
        0x27t
        0x68t
        0x3ft
        0x2dt
        0x68t
        0x3bt
        0x21t
        0x24t
        0x2dt
        0x26t
        0x3ct
        0x24t
        0x31t
        0x68t
        0x21t
        0x2ft
        0x26t
        0x27t
        0x3at
        0x2dt
        0x68t
        0x21t
        0x3ct
        0x66t
        0x32t
        0x1at
        0x1at
        0x12t
        0x19t
        0x10t
        0x55t
        0x14t
        0x19t
        0x2t
        0x14t
        0xct
        0x6t
        0x55t
        0x1t
        0x1dt
        0x7t
        0x1at
        0x2t
        0x55t
        0x14t
        0x1bt
        0x55t
        0x10t
        0xdt
        0x16t
        0x10t
        0x5t
        0x1t
        0x1ct
        0x1at
        0x1bt
        0x55t
        0x2t
        0x1ct
        0x1t
        0x1dt
        0x55t
        0x6t
        0x10t
        0x1t
        0x33t
        0x1at
        0x7t
        0x10t
        0x12t
        0x7t
        0x1at
        0x0t
        0x1bt
        0x11t
        0x55t
        0x1at
        0x1bt
        0x55t
        0x3bt
        0x1at
        0x0t
        0x12t
        0x14t
        0x1t
        0x55t
        0x14t
        0x17t
        0x1at
        0x3t
        0x10t
        0x5bt
        0x55t
        0x6t
        0x1at
        0x55t
        0x2t
        0x10t
        0x55t
        0x6t
        0x1ct
        0x19t
        0x10t
        0x1bt
        0x1t
        0x19t
        0xct
        0x55t
        0x1ct
        0x12t
        0x1bt
        0x1at
        0x7t
        0x10t
        0x55t
        0x1ct
        0x1t
        0x5bt
        0x2t
        0x39t
        0x36t
        0x35t
        0x3bt
        0x32t
        0x77t
        0x23t
        0x38t
        0x77t
        0x34t
        0x3bt
        0x38t
        0x24t
        0x32t
        0x15t
        0x2at
        0x27t
        0x26t
        0x2ct
        0x63t
        0x30t
        0x37t
        0x22t
        0x37t
        0x26t
        0x63t
        0x20t
        0x2bt
        0x22t
        0x2dt
        0x24t
        0x26t
        0x27t
        0x63t
        0x37t
        0x2ct
        0x63t
        0x2t
        0x10t
        0x10t
        0x6t
        0x17t
        0x70t
        0x6ct
        0x61t
        0x79t
        0x65t
        0x72t
        0x58t
        0x1t
        0x54t
        0x4bt
        0x42t
        0x57t
        0x1t
        0x3t
        0x19t
        0x3t
        0x1t
    .end array-data
.end method

.method private A05()Z
    .locals 2

    .line 38790
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A08:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A07:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A06()Z
    .locals 2

    .line 38791
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A07:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A06:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A07()Z
    .locals 2

    .line 38792
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A08:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A07:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A08()Z
    .locals 7

    .line 38793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 38794
    return v6

    .line 38795
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 38796
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38797
    :catch_0
    move-exception v1

    .line 38798
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    .line 38799
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A2G:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/Throwable;)V

    .line 38800
    const/16 v2, 0x169

    const/4 v1, 0x6

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 38801
    return v6
.end method

.method private A09(Landroid/view/Surface;)Z
    .locals 7
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 38803
    return v6

    .line 38804
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 38805
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38806
    :catch_0
    move-exception v1

    .line 38807
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    .line 38808
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A2H:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/Throwable;)V

    .line 38809
    const/16 v2, 0x169

    const/4 v1, 0x6

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 38810
    return v6
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Ig;)Z
    .locals 0

    .line 38811
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0G:Z

    return p0
.end method

.method private setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V
    .locals 4

    .line 39043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq p1, v0, :cond_1

    .line 39044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A04()Lcom/facebook/ads/redexgen/X/7S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7S;->A8f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39045
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14d

    const/16 v1, 0x17

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39046
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    .line 39047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0E:Lcom/facebook/ads/redexgen/X/Q8;

    if-eqz v0, :cond_1

    .line 39048
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q8;->ADB(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 39049
    :cond_1
    return-void
.end method


# virtual methods
.method public final A87()V
    .locals 2

    .line 38812
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0F:Z

    if-nez v0, :cond_0

    .line 38813
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->ADO(ZI)V

    .line 38814
    :cond_0
    return-void
.end method

.method public final A8I()Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 38815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge v1, v0, :cond_1

    .line 38816
    .end local v1
    :cond_0
    return v9

    .line 38817
    :cond_1
    const/4 v8, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v7

    array-length v6, v7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v0, v7, v5

    .line 38818
    .local v5, "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v0}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v3, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const-string v1, "iSqF26gJBktCMb0RObgKl91oEThpz7Z0"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_3

    .line 38819
    return v8

    .line 38820
    .end local v5    # "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 38821
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 38822
    :cond_4
    return v9

    .line 38823
    :catch_0
    move-exception v4

    .line 38824
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ig;->A0P:Ljava/lang/String;

    const/16 v2, 0x41

    const/16 v1, 0x23

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38825
    return v8
.end method

.method public final A8J()Z
    .locals 1

    .line 38826
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0J:Z

    return v0
.end method

.method public final A8q()Z
    .locals 1

    .line 38827
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0I:Z

    return v0
.end method

.method public final ADO(ZI)V
    .locals 2

    .line 38828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2s(I)V

    .line 38829
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    .line 38830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 38831
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ig;->A05()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38832
    return-void

    .line 38833
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    goto :goto_0

    .line 38834
    :cond_1
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0I:Z

    .line 38835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 38836
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A06:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_2

    .line 38837
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 38838
    :cond_2
    :goto_0
    return-void
.end method

.method public final AFH(I)V
    .locals 1

    .line 38839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A9p(I)V

    .line 38840
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A09:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 38841
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->AFT(I)V

    .line 38842
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    .line 38843
    return-void
.end method

.method public final AFM(Lcom/facebook/ads/redexgen/X/PK;I)V
    .locals 5

    .line 38844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A33(I)V

    .line 38845
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0I:Z

    .line 38846
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    .line 38847
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    .line 38848
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A07:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_0

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const-string v1, "NTKGPTGyq7PSuZ6pDxSrkOD3BAS3oRMw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v4, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A06:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_1

    .line 38849
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    if-nez v1, :cond_4

    .line 38850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A07:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setup(Landroid/net/Uri;)V

    .line 38851
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38852
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const-string v1, "Wn6W9Nu3dNfA4pP49CdphRQGwehyl3Rd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3, v3}, Lcom/facebook/ads/redexgen/X/Ig;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 38853
    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const-string v1, "pXleF17jKjib"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3, v3}, Lcom/facebook/ads/redexgen/X/Ig;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_1

    .line 38854
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    if-lez v0, :cond_5

    .line 38855
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 38856
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 38857
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A07:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0J:Z

    if-eqz v0, :cond_1

    .line 38858
    :cond_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AFT(I)V
    .locals 3

    .line 38859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A35(I)V

    .line 38860
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    .line 38861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 38862
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 38863
    .local v0, "currentPosition":I
    if-lez v0, :cond_0

    .line 38864
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    .line 38865
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_2

    .line 38866
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const-string v1, "KulxFUFqA4xnUTvaQLfyg7cstmOjzycv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ig;->A08()Z

    .line 38867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 38868
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    .line 38869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0A:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 38870
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 38871
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0A:Landroid/widget/MediaController;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 38872
    .end local v0    # "currentPosition":I
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 38873
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final destroy()V
    .locals 2

    .line 38874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 38875
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ig;->A09(Landroid/view/Surface;)Z

    .line 38876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 38877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 38878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 38879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 38880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 38881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 38882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 38883
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ig;->A08()Z

    .line 38884
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    .line 38885
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 38886
    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 38887
    const/4 v1, 0x0

    .line 38888
    .local v0, "position":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ig;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 38890
    :cond_0
    return v1
.end method

.method public getDuration()I
    .locals 4

    .line 38891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ig;->A06()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const-string v1, "tqb6wmVqQGZxPylUtz2fkCIx7Bf2WilJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 38892
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 38893
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 38894
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0K:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/redexgen/X/PK;
    .locals 1

    .line 38895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/Q7;
    .locals 1

    .line 38896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/redexgen/X/Q7;
    .locals 1

    .line 38897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 38898
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A04:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 38899
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A05:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 38900
    return-object p0
.end method

.method public getVolume()F
    .locals 1

    .line 38901
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A00:F

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 38902
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 38903
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38904
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 38905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    .line 38906
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x5

    .line 38907
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2w(I)V

    .line 38908
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->AFT(I)V

    .line 38909
    :cond_0
    return-void
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 38910
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 38911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 38912
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 38913
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A06:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 38914
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->seekTo(I)V

    .line 38915
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    .line 38916
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .line 38917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    .line 38918
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16f

    const/16 v1, 0xb

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/4 v1, 0x2

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38919
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A9o(Ljava/lang/String;)V

    .line 38920
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A01:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->getState()Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_0

    .line 38921
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A01:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A01:I

    .line 38922
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->AFT(I)V

    .line 38923
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    const/16 v0, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->AFM(Lcom/facebook/ads/redexgen/X/PK;I)V

    .line 38924
    :goto_0
    return v2

    .line 38925
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 38926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    .line 38927
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    .line 38928
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/0R;->A2w(I)V

    .line 38929
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->AFT(I)V

    goto :goto_0
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .line 38930
    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    const/16 v0, 0x2bd

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2be

    if-eq p2, v0, :cond_1

    .line 38931
    :cond_0
    :goto_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 38932
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ig;->A07()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38933
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    goto :goto_0

    .line 38934
    :cond_2
    sget-object v3, Lcom/facebook/ads/redexgen/X/Q7;->A02:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const-string v1, "iL0L5EQxu2M5tvy2sZDjl5tOkB9wsg4Q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "qEr4cYtmjtQdjlZthk5xBRgssZbq5gW6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 38935
    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const-string v1, "BctcOQJYgBcKf8RdBMRoW9O8jkER1gO3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "NFF5b4NOHp1wMQpQtAU8ibXMpYWuxgZg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    .line 38936
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0J:Z

    .line 38937
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_6

    .line 38938
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 38939
    :cond_6
    return v2
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 38940
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A07:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 38941
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0H:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0G:Z

    if-nez v0, :cond_3

    .line 38942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0D()Landroid/app/Activity;

    move-result-object v1

    .line 38943
    .local v0, "activityContext":Landroid/app/Activity;
    if-eqz v1, :cond_2

    .line 38944
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0A:Landroid/widget/MediaController;

    .line 38945
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0A:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A09:Landroid/view/View;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 38946
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0A:Landroid/widget/MediaController;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const-string v1, "fPjFRSSzuUrY85KdwEQXHAUI7gq3zgJX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "QlnNj2Zi0n3XZkktRetea07zoE6PUgNL"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 38947
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0A:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    goto :goto_0

    .line 38948
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0A:Landroid/widget/MediaController;

    .line 38949
    .end local v0    # "activityContext":Landroid/app/Activity;
    :cond_3
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A00:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setRequestedVolume(F)V

    .line 38950
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A05:I

    .line 38951
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A04:I

    .line 38952
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    if-lez v1, :cond_5

    .line 38953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    const/4 v2, 0x0

    if-lt v1, v0, :cond_4

    .line 38954
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    .line 38955
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 38956
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    .line 38957
    :cond_5
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const-string v1, "i4HMjCzdRtS7Zf5jyUfqsJgJBFC3Hgk3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "nPyigXhxANl12gOwrMulZJ84NGYQcgH1"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_6

    .line 38958
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->AFM(Lcom/facebook/ads/redexgen/X/PK;I)V

    .line 38959
    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 38960
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0E:Lcom/facebook/ads/redexgen/X/Q8;

    if-nez v2, :cond_0

    .line 38961
    return-void

    .line 38962
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q8;->ACV(II)V

    .line 38963
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    .line 38964
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 38965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A08:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 38966
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A08:Landroid/view/Surface;

    .line 38967
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A08:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A09(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38968
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 38969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    .line 38970
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x4

    .line 38971
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2w(I)V

    .line 38972
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->destroy()V

    .line 38973
    return-void

    .line 38974
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0I:Z

    if-nez v0, :cond_2

    .line 38975
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->AFM(Lcom/facebook/ads/redexgen/X/PK;I)V

    .line 38976
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .line 38977
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ig;->A09(Landroid/view/Surface;)Z

    .line 38978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A08:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 38979
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 38980
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A08:Landroid/view/Surface;

    .line 38981
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_1

    .line 38982
    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->ADO(ZI)V

    .line 38983
    :cond_1
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const-string v1, "wJEag4Up5dB02EoPbWjrYUJlPYnnpJPt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 38984
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 11

    .line 38985
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1R(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38986
    return-void

    .line 38987
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ig;->A06()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const-string v1, "zsAx7U2aKSd2GPuux6v5Um4uWviEPJCj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v4, :cond_3

    .line 38988
    .end local v1
    .end local v10
    .end local p1    # null:Landroid/graphics/SurfaceTexture;
    .end local p3
    :cond_2
    return-void

    .line 38989
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->getCurrentPosition()I

    move-result v0

    int-to-long v4, v0

    .line 38990
    .local v10, "encoding_pts":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->getCurrentPosition()I

    move-result v0

    int-to-long v6, v0

    .line 38991
    .local p1, "playback_pts":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 38992
    .local p3, "unix_pts":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->getVolume()F

    move-result v10

    .line 38993
    .local v1, "volume":F
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Ig;->A0E:Lcom/facebook/ads/redexgen/X/Q8;

    if-eqz v3, :cond_4

    .line 38994
    invoke-interface/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/Q8;->AB3(JJJF)V

    .line 38995
    :cond_4
    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 38996
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A05:I

    .line 38997
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A04:I

    .line 38998
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A05:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A04:I

    if-eqz v0, :cond_0

    .line 38999
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->requestLayout()V

    .line 39000
    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 39001
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    .line 39002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 39003
    return-void

    .line 39004
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0A:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39005
    return-void

    .line 39006
    :cond_1
    if-nez p1, :cond_3

    .line 39007
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_2

    .line 39008
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->A87()V

    .line 39009
    :cond_2
    :goto_0
    return-void

    .line 39010
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0I:Z

    if-nez v0, :cond_2

    .line 39011
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    const/16 v0, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->AFM(Lcom/facebook/ads/redexgen/X/PK;I)V

    goto :goto_0
.end method

.method public final seekTo(I)V
    .locals 1

    .line 39012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ig;->A06()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39013
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->getDuration()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 39014
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A02:I

    .line 39015
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    .line 39016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 39017
    :cond_0
    :goto_0
    return-void

    .line 39018
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A03:I

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 39019
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 39020
    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39021
    :cond_0
    :goto_0
    return-void

    .line 39022
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39023
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ig;->A0P:Ljava/lang/String;

    const/16 v2, 0x7a

    const/16 v1, 0x66

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .locals 0

    .line 39024
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0F:Z

    .line 39025
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 39026
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A09:Landroid/view/View;

    .line 39027
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q4;-><init>(Lcom/facebook/ads/redexgen/X/Ig;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 39028
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 39029
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 39030
    invoke-super {p0, p1}, Landroid/view/TextureView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 39031
    :cond_0
    :goto_0
    return-void

    .line 39032
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39033
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ig;->A0P:Ljava/lang/String;

    const/16 v2, 0xe0

    const/16 v1, 0x5e

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 39034
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0H:Z

    .line 39035
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0G:Z

    if-nez v0, :cond_0

    .line 39036
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q3;-><init>(Lcom/facebook/ads/redexgen/X/Ig;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 39037
    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 2

    .line 39038
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A00:F

    .line 39039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A08:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0C:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_0

    .line 39040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 39041
    :cond_0
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39042
    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/Q8;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Q8;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39050
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0E:Lcom/facebook/ads/redexgen/X/Q8;

    .line 39051
    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 15

    .line 39052
    const/16 v2, 0x13e

    const/16 v1, 0xf

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A03(III)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2v()V

    .line 39053
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0J:Z

    .line 39054
    move-object/from16 v6, p1

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/Ig;->A07:Landroid/net/Uri;

    .line 39055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 39056
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ig;->A08()Z

    .line 39057
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A09(Landroid/view/Surface;)Z

    .line 39058
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    .line 39059
    .local v2, "mMediaPlayer":Landroid/media/MediaPlayer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    goto :goto_0

    .line 39060
    .end local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    :cond_0
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V

    .line 39061
    .restart local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x164

    const/4 v1, 0x5

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39062
    const/4 v8, 0x0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 39063
    .local v3, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39064
    .end local v3    # "fd":Landroid/content/res/AssetFileDescriptor;
    .local v9, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_2
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v11

    .line 39065
    .local v5, "start":J
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v13

    .line 39066
    .local v7, "end":J
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual/range {v9 .. v14}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39067
    :try_start_3
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto/16 :goto_6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 39068
    :catch_0
    move-exception v2

    goto/16 :goto_5

    .line 39069
    :catchall_0
    move-exception v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const-string v1, "jmeNgRjQ2jv"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    goto :goto_3

    .line 39070
    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v7

    :goto_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ig;->A0O:[Ljava/lang/String;

    const-string v1, "vDexTJGknhfX1yfKKY4uPeWNY7BUXXsv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_2

    :catch_4
    move-exception v7

    .line 39071
    .local v4, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    sget-object v6, Lcom/facebook/ads/redexgen/X/Ig;->A0P:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x64

    const/16 v1, 0x16

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39072
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 39073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    .line 39074
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x2

    .line 39075
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2w(I)V

    .line 39076
    .end local v4    # "ex":Ljava/lang/Exception;
    if-eqz v8, :cond_5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 39077
    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 39078
    :catch_5
    move-exception v2

    .line 39079
    .local v4, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ig;->A0P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 39080
    .end local v9    # "fd":Landroid/content/res/AssetFileDescriptor;
    .local v3, "fd":Landroid/content/res/AssetFileDescriptor;
    :catchall_1
    move-exception v5

    .restart local v3    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_3
    if-eqz v8, :cond_3

    .line 39081
    :try_start_7
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 39082
    :catch_6
    move-exception v2

    .line 39083
    .local v5, "e":Ljava/io/IOException;
    :try_start_8
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ig;->A0P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39084
    .end local v5    # "e":Ljava/io/IOException;
    .end local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    .end local v11
    :cond_3
    :goto_4
    throw v5

    .line 39085
    .end local v3    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    .restart local v11
    :cond_4
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_6

    .line 39086
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ig;->A0P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39087
    :cond_5
    :goto_6
    invoke-virtual {v9, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 39088
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 39089
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 39090
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 39091
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 39092
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 39093
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 39094
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 39095
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 39096
    iput-object v9, p0, Lcom/facebook/ads/redexgen/X/Ig;->A06:Landroid/media/MediaPlayer;

    .line 39097
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A08:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    goto :goto_7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 39098
    :catch_7
    move-exception v6

    .line 39099
    .local v0, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ig;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 39100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ig;->A0M:Lcom/facebook/ads/redexgen/X/Xc;

    .line 39101
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x3

    .line 39102
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2w(I)V

    .line 39103
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V

    .line 39104
    sget-object v5, Lcom/facebook/ads/redexgen/X/Ig;->A0P:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    const/16 v1, 0x31

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39105
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/Ig;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 39106
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39107
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ig;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v4}, Lcom/facebook/ads/redexgen/X/Ig;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 39108
    :cond_6
    return-void
.end method
