.class public final Lcom/facebook/ads/redexgen/X/JG;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/redexgen/X/Pr;
.implements Lcom/facebook/ads/redexgen/X/Q5;
.implements Lcom/facebook/ads/redexgen/X/Pt;


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

.field public A04:J

.field public A05:J

.field public A06:Landroid/net/Uri;

.field public A07:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Landroid/view/View;

.field public A09:Landroid/widget/MediaController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/Xc;

.field public A0B:Lcom/facebook/ads/redexgen/X/PK;

.field public A0C:Lcom/facebook/ads/redexgen/X/Pu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0D:Lcom/facebook/ads/redexgen/X/Q7;

.field public A0E:Lcom/facebook/ads/redexgen/X/Q7;

.field public A0F:Lcom/facebook/ads/redexgen/X/Q8;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0G:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 39692
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5i34yksohRV8hSvEB2dTOBGqhO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "V2RNkeamXobpzSRVkM4sjlG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1HR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8SLqGCa2wxiVkGjIaPVK9LXerY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SSmTkZgpl4jZsKBndOsNgmbhAq5FKejN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hgMiihLf1lx1lIiVFZ8jC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "euSTtDnbG06q2RqThlQcyR1Es6oMHQDw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iHXqYQoKvaPWKvo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/JG;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/JG;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JG;->A0P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 2

    .line 39693
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 39694
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    .line 39695
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0E:Lcom/facebook/ads/redexgen/X/Q7;

    .line 39696
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0L:Z

    .line 39697
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0M:Z

    .line 39698
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0J:Z

    .line 39699
    iput v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A03:I

    .line 39700
    iput v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A02:I

    .line 39701
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A00:F

    .line 39702
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A01:I

    .line 39703
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0I:Z

    .line 39704
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0H:Z

    .line 39705
    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A03:Lcom/facebook/ads/redexgen/X/PK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    .line 39706
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0K:Z

    .line 39707
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 39708
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;)V
    .locals 2

    .line 39709
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39710
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    .line 39711
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0E:Lcom/facebook/ads/redexgen/X/Q7;

    .line 39712
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0L:Z

    .line 39713
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0M:Z

    .line 39714
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0J:Z

    .line 39715
    iput v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A03:I

    .line 39716
    iput v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A02:I

    .line 39717
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A00:F

    .line 39718
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A01:I

    .line 39719
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0I:Z

    .line 39720
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0H:Z

    .line 39721
    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A03:Lcom/facebook/ads/redexgen/X/PK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    .line 39722
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0K:Z

    .line 39723
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 39724
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 39725
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39726
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    .line 39727
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0E:Lcom/facebook/ads/redexgen/X/Q7;

    .line 39728
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0L:Z

    .line 39729
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0M:Z

    .line 39730
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0J:Z

    .line 39731
    iput v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A03:I

    .line 39732
    iput v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A02:I

    .line 39733
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A00:F

    .line 39734
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A01:I

    .line 39735
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0I:Z

    .line 39736
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0H:Z

    .line 39737
    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A03:Lcom/facebook/ads/redexgen/X/PK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    .line 39738
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0K:Z

    .line 39739
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 39740
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/JG;)Landroid/widget/MediaController;
    .locals 0

    .line 39741
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JG;->A09:Landroid/widget/MediaController;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/JG;)Lcom/facebook/ads/redexgen/X/Pu;
    .locals 0

    .line 39742
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/JG;)Lcom/facebook/ads/redexgen/X/Q8;
    .locals 0

    .line 39743
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0F:Lcom/facebook/ads/redexgen/X/Q8;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JG;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x44

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 5

    .line 39744
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pu;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Pu;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    .line 39745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pu;->A0H(Lcom/facebook/ads/redexgen/X/Pt;)V

    .line 39746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pu;->A0G(Lcom/facebook/ads/redexgen/X/Pr;)V

    .line 39747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Pu;->A0I(Z)V

    .line 39748
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0J:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0I:Z

    if-nez v0, :cond_2

    .line 39749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0D()Landroid/app/Activity;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39750
    .local v0, "activityContext":Landroid/app/Activity;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "kOzpobq3cn2ENPvO1dz11rE9gYrdsM2t"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "XeC6T5eSgweGxN3AGx0qK1AhpVQau6BW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_7

    .line 39751
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, v4}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A09:Landroid/widget/MediaController;

    .line 39752
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A09:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A08:Landroid/view/View;

    if-nez v0, :cond_1

    move-object v0, p0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 39753
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A09:Landroid/widget/MediaController;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pz;-><init>(Lcom/facebook/ads/redexgen/X/JG;)V

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 39754
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A09:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 39755
    .end local v0    # "activityContext":Landroid/app/Activity;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/JG;->A0G:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "7OzxCvlMe7OewOex"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0K:Z

    if-eqz v0, :cond_4

    .line 39756
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A06:Landroid/net/Uri;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pu;->A0F(Lcom/facebook/ads/redexgen/X/Xb;Landroid/net/Uri;)V

    .line 39757
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A08:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 39758
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JG;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39759
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JG;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lcom/facebook/ads/redexgen/X/JG;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 39760
    :cond_5
    return-void

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "NXAVCVHzJxAz58YH1UEgH4PHy83Kp8aQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "f1ODdwAOeVqSGvJpvEMDUKedn4FgojKu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    goto :goto_1

    .line 39761
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A09:Landroid/widget/MediaController;

    goto :goto_0
.end method

.method private A05()V
    .locals 4

    .line 39762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-nez v0, :cond_0

    .line 39763
    return-void

    .line 39764
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pu;->A08()Lcom/facebook/ads/redexgen/X/Ps;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39765
    .local v0, "videoFormat":Lcom/facebook/ads/redexgen/X/Ps;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "yniwio37QFCiL85s5GWvJngxgc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "95HbvmBBNGyB2bovEph22CE4vZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 39766
    iget v1, v3, Lcom/facebook/ads/redexgen/X/Ps;->A01:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Ps;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->A08(II)V

    .line 39767
    :cond_2
    return-void
.end method

.method private A06()V
    .locals 4

    .line 39768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A07:Landroid/view/Surface;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 39769
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 39770
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/JG;->A07:Landroid/view/Surface;

    .line 39771
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-eqz v0, :cond_2

    .line 39772
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pu;->A09()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39773
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "he0jjWxzFB8qDestWT3k7cDZmQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "YQusGxI3ZRGEiRLtvLIlZ3cCdg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    .line 39774
    :cond_2
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/JG;->A09:Landroid/widget/MediaController;

    .line 39775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0M:Z

    .line 39776
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 39777
    return-void
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0xe2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JG;->A0N:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "4Rjqxy3w03hT2rk3wOaPN94qCv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "J56YrdEaTg6GnpCj3tljjm9xxp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x56t
        0x7et
        0x7et
        0x76t
        0x7dt
        0x74t
        0x31t
        0x70t
        0x7dt
        0x66t
        0x70t
        0x68t
        0x62t
        0x31t
        0x65t
        0x79t
        0x63t
        0x7et
        0x66t
        0x31t
        0x70t
        0x7ft
        0x31t
        0x74t
        0x69t
        0x72t
        0x74t
        0x61t
        0x65t
        0x78t
        0x7et
        0x7ft
        0x31t
        0x66t
        0x78t
        0x65t
        0x79t
        0x31t
        0x62t
        0x74t
        0x65t
        0x53t
        0x70t
        0x72t
        0x7at
        0x76t
        0x63t
        0x7et
        0x64t
        0x7ft
        0x75t
        0x55t
        0x63t
        0x70t
        0x66t
        0x70t
        0x73t
        0x7dt
        0x74t
        0x31t
        0x7et
        0x7ft
        0x31t
        0x5ft
        0x7et
        0x64t
        0x76t
        0x70t
        0x65t
        0x31t
        0x70t
        0x73t
        0x7et
        0x67t
        0x74t
        0x3ft
        0x31t
        0x62t
        0x7et
        0x31t
        0x66t
        0x74t
        0x31t
        0x62t
        0x78t
        0x7dt
        0x74t
        0x7ft
        0x65t
        0x7dt
        0x68t
        0x31t
        0x78t
        0x76t
        0x7ft
        0x7et
        0x63t
        0x74t
        0x31t
        0x78t
        0x65t
        0x3ft
        0x4ct
        0x64t
        0x64t
        0x6ct
        0x67t
        0x6et
        0x2bt
        0x6at
        0x67t
        0x7ct
        0x6at
        0x72t
        0x78t
        0x2bt
        0x7ft
        0x63t
        0x79t
        0x64t
        0x7ct
        0x2bt
        0x6at
        0x65t
        0x2bt
        0x6et
        0x73t
        0x68t
        0x6et
        0x7bt
        0x7ft
        0x62t
        0x64t
        0x65t
        0x2bt
        0x7ct
        0x62t
        0x7ft
        0x63t
        0x2bt
        0x78t
        0x6et
        0x7ft
        0x4dt
        0x64t
        0x79t
        0x6et
        0x6ct
        0x79t
        0x64t
        0x7et
        0x65t
        0x6ft
        0x2bt
        0x64t
        0x65t
        0x2bt
        0x45t
        0x64t
        0x7et
        0x6ct
        0x6at
        0x7ft
        0x2bt
        0x6at
        0x69t
        0x64t
        0x7dt
        0x6et
        0x25t
        0x2bt
        0x78t
        0x64t
        0x2bt
        0x7ct
        0x6et
        0x2bt
        0x78t
        0x62t
        0x67t
        0x6et
        0x65t
        0x7ft
        0x67t
        0x72t
        0x2bt
        0x62t
        0x6ct
        0x65t
        0x64t
        0x79t
        0x6et
        0x2bt
        0x62t
        0x7ft
        0x25t
        0x21t
        0x1et
        0x13t
        0x12t
        0x18t
        0x57t
        0x4t
        0x3t
        0x16t
        0x3t
        0x12t
        0x57t
        0x14t
        0x1ft
        0x16t
        0x19t
        0x10t
        0x12t
        0x13t
        0x57t
        0x3t
        0x18t
        0x57t
        0x5ft
        0x5dt
        0x56t
        0x5dt
        0x4at
        0x51t
        0x5bt
    .end array-data
.end method

.method private A08(II)V
    .locals 1

    .line 39778
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A03:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A02:I

    if-eq p2, v0, :cond_1

    .line 39779
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A03:I

    .line 39780
    iput p2, p0, Lcom/facebook/ads/redexgen/X/JG;->A02:I

    .line 39781
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A03:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A02:I

    if-eqz v0, :cond_1

    .line 39782
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JG;->requestLayout()V

    .line 39783
    :cond_1
    return-void
.end method

.method public static A09()Z
    .locals 1

    .line 39784
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pu;->A03()Z

    move-result v0

    return v0
.end method

.method private setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V
    .locals 4

    .line 39956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq p1, v0, :cond_2

    .line 39957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A04()Lcom/facebook/ads/redexgen/X/7S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7S;->A8f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39958
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc4

    const/16 v1, 0x17

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39959
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    .line 39960
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_1

    .line 39961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0M:Z

    .line 39962
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0F:Lcom/facebook/ads/redexgen/X/Q8;

    if-eqz v0, :cond_2

    .line 39963
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q8;->ADB(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 39964
    :cond_2
    return-void
.end method


# virtual methods
.method public final A87()V
    .locals 2

    .line 39785
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0H:Z

    if-nez v0, :cond_0

    .line 39786
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->ADO(ZI)V

    .line 39787
    :cond_0
    return-void
.end method

.method public final A8I()Z
    .locals 1

    .line 39788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pu;->A0K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A8J()Z
    .locals 1

    .line 39789
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0M:Z

    return v0
.end method

.method public final A8q()Z
    .locals 1

    .line 39790
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0L:Z

    return v0
.end method

.method public final AC4(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    .line 39791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A9o(Ljava/lang/String;)V

    .line 39792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 39793
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    .line 39794
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2w(I)V

    .line 39795
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 39796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 39797
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A1N:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, p2}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/Throwable;)V

    .line 39798
    const/16 v2, 0xdb

    const/4 v1, 0x7

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 39799
    return-void
.end method

.method public final AC5(ZI)V
    .locals 7

    .line 39800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-nez v0, :cond_0

    .line 39801
    return-void

    .line 39802
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_d

    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_6

    .line 39803
    :cond_1
    :goto_0
    return-void

    .line 39804
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JG;->A05()V

    .line 39805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A04:J

    .line 39806
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A00:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setRequestedVolume(F)V

    .line 39807
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/JG;->A05:J

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pu;->A07()J

    move-result-wide v1

    cmp-long v0, v5, v1

    if-gez v0, :cond_3

    .line 39808
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A05:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Pu;->A0D(J)V

    .line 39809
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/JG;->A05:J

    .line 39810
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pu;->A06()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0M:Z

    if-eqz v0, :cond_4

    .line 39811
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    goto :goto_0

    .line 39812
    :cond_4
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A06:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_1

    .line 39813
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A07:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 39814
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/JG;->A0E:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "QOwsd8cFgtBxhwq2W5mYjt9JcX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "NiYGjjh9hUScPgNoOA1xOqSddN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v3, v0, :cond_1

    .line 39815
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->AFM(Lcom/facebook/ads/redexgen/X/PK;I)V

    .line 39816
    sget-object v3, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v3, v0, :cond_1

    goto :goto_1

    .line 39817
    :cond_6
    if-eqz p1, :cond_7

    .line 39818
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A06:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 39819
    :cond_7
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_8

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "KLjUXng8f5n9djrrPXv2F"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_9

    .line 39820
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Pu;->A0I(Z)V

    .line 39821
    if-nez p1, :cond_9

    .line 39822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pu;->A0A()V

    .line 39823
    :cond_9
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/JG;->A0M:Z

    goto/16 :goto_0

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "yetXNvPdXumqVjXfCpilY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/JG;->A0E:Lcom/facebook/ads/redexgen/X/Q7;

    goto/16 :goto_0

    .line 39824
    :cond_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JG;->A05()V

    .line 39825
    iget v3, p0, Lcom/facebook/ads/redexgen/X/JG;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "9yr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "mKFyaVoRgsxwFz3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ltz v3, :cond_1

    .line 39826
    iget v5, p0, Lcom/facebook/ads/redexgen/X/JG;->A01:I

    .line 39827
    .local v0, "seekFrom":I
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A01:I

    .line 39828
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/JG;->A0F:Lcom/facebook/ads/redexgen/X/Q8;

    if-eqz v4, :cond_1

    .line 39829
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JG;->getCurrentPosition()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    invoke-interface {v4, v5, v3}, Lcom/facebook/ads/redexgen/X/Q8;->ACV(II)V

    goto/16 :goto_0

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "bt2gfLOq6VYcjgDmYUS3R"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v4, v5, v3}, Lcom/facebook/ads/redexgen/X/Q8;->ACV(II)V

    goto/16 :goto_0

    .line 39830
    :cond_d
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 39831
    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AD9(IIIF)V
    .locals 0

    .line 39832
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/JG;->A08(II)V

    .line 39833
    return-void
.end method

.method public final ADO(ZI)V
    .locals 2

    .line 39834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2s(I)V

    .line 39835
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0E:Lcom/facebook/ads/redexgen/X/Q7;

    .line 39836
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0L:Z

    .line 39837
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-eqz v1, :cond_0

    .line 39838
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pu;->A0I(Z)V

    .line 39839
    :goto_0
    return-void

    .line 39840
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    goto :goto_0
.end method

.method public final AFH(I)V
    .locals 2

    .line 39841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A9p(I)V

    .line 39842
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A09:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 39843
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->AFT(I)V

    .line 39844
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A05:J

    .line 39845
    return-void
.end method

.method public final AFM(Lcom/facebook/ads/redexgen/X/PK;I)V
    .locals 2

    .line 39846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A33(I)V

    .line 39847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0L:Z

    .line 39848
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0E:Lcom/facebook/ads/redexgen/X/Q7;

    .line 39849
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    .line 39850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-nez v0, :cond_1

    .line 39851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A06:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setup(Landroid/net/Uri;)V

    .line 39852
    :cond_0
    :goto_0
    return-void

    .line 39853
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A07:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A06:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_0

    .line 39854
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pu;->A0I(Z)V

    .line 39855
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    goto :goto_0
.end method

.method public final AFT(I)V
    .locals 1

    .line 39856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A35(I)V

    .line 39857
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0E:Lcom/facebook/ads/redexgen/X/Q7;

    .line 39858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-eqz v0, :cond_0

    .line 39859
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pu;->A0B()V

    .line 39860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pu;->A09()V

    .line 39861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    .line 39862
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 39863
    return-void
.end method

.method public final destroy()V
    .locals 0

    .line 39864
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JG;->A06()V

    .line 39865
    return-void
.end method

.method public getCurrentPosition()I
    .locals 3

    .line 39866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pu;->A06()J

    move-result-wide v1

    long-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 3

    .line 39867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-nez v0, :cond_0

    .line 39868
    const/4 v0, 0x0

    return v0

    .line 39869
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pu;->A07()J

    move-result-wide v1

    long-to-int v0, v1

    return v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 39870
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A04:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/redexgen/X/PK;
    .locals 1

    .line 39871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/Q7;
    .locals 1

    .line 39872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/redexgen/X/Q7;
    .locals 1

    .line 39873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0E:Lcom/facebook/ads/redexgen/X/Q7;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 39874
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A02:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 39875
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A03:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 39876
    return-object p0
.end method

.method public getVolume()F
    .locals 1

    .line 39877
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A00:F

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 39878
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 39879
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JG;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A22(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39880
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JG;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39881
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setVideoState(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 39882
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->AFT(I)V

    .line 39883
    :cond_0
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 39884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A07:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 39885
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 39886
    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A07:Landroid/view/Surface;

    .line 39887
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-nez v1, :cond_1

    .line 39888
    return-void

    .line 39889
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A07:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pu;->A0E(Landroid/view/Surface;)V

    .line 39890
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0L:Z

    if-nez v0, :cond_2

    .line 39891
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->AFM(Lcom/facebook/ads/redexgen/X/PK;I)V

    .line 39892
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .line 39893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A07:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 39894
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 39895
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A07:Landroid/view/Surface;

    .line 39896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-eqz v0, :cond_0

    .line 39897
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pu;->A0E(Landroid/view/Surface;)V

    .line 39898
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_2

    .line 39899
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "TScQzo9LVHiM3saFvXTgi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x5

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/JG;->ADO(ZI)V

    .line 39900
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 39901
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 10

    .line 39902
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1R(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39903
    return-void

    .line 39904
    :cond_0
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A08:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_1

    .line 39905
    return-void

    .line 39906
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JG;->getCurrentPosition()I

    move-result v0

    int-to-long v3, v0

    .line 39907
    .local p0, "encoding_pts":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JG;->getCurrentPosition()I

    move-result v0

    int-to-long v5, v0

    .line 39908
    .local p2, "playback_pts":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 39909
    .local p4, "unix_pts":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JG;->getVolume()F

    move-result v9

    .line 39910
    .local v1, "volume":F
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/JG;->A0F:Lcom/facebook/ads/redexgen/X/Q8;

    if-eqz v2, :cond_2

    .line 39911
    invoke-interface/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/Q8;->AB3(JJJF)V

    .line 39912
    :cond_2
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 39913
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    .line 39914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-nez v0, :cond_0

    .line 39915
    return-void

    .line 39916
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A09:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39917
    return-void

    .line 39918
    :cond_1
    if-nez p1, :cond_3

    .line 39919
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_2

    .line 39920
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JG;->A87()V

    .line 39921
    :cond_2
    :goto_0
    return-void

    .line 39922
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0L:Z

    if-nez v0, :cond_2

    .line 39923
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    const/16 v0, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->AFM(Lcom/facebook/ads/redexgen/X/PK;I)V

    goto :goto_0
.end method

.method public final seekTo(I)V
    .locals 5

    .line 39924
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-eqz v0, :cond_0

    .line 39925
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JG;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A01:I

    .line 39926
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    int-to-long v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Pu;->A0D(J)V

    .line 39927
    :goto_0
    return-void

    .line 39928
    :cond_0
    int-to-long v3, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "kfjJwAtkK1UY2s6fcoM3d"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/JG;->A05:J

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 39929
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 39930
    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39931
    :cond_0
    :goto_0
    return-void

    .line 39932
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "HF5JdwiOlRNKOfaOH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 39933
    sget-object v3, Lcom/facebook/ads/redexgen/X/JG;->A0P:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x66

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .locals 0

    .line 39934
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0H:Z

    .line 39935
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 39936
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A08:Landroid/view/View;

    .line 39937
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q1;-><init>(Lcom/facebook/ads/redexgen/X/JG;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 39938
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 39939
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 39940
    invoke-super {p0, p1}, Landroid/view/TextureView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 39941
    :cond_0
    :goto_0
    return-void

    .line 39942
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39943
    sget-object v3, Lcom/facebook/ads/redexgen/X/JG;->A0P:Ljava/lang/String;

    const/16 v4, 0x66

    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0O:[Ljava/lang/String;

    const-string v1, "adR4uJi1AjYNmamYU7fKdN8LPQzpuqJY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "LCKmfGi2Ka9VnYBnqFwdGZK0MZJmec2m"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v1, 0x5e

    const/16 v0, 0x4f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 39944
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0J:Z

    .line 39945
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0I:Z

    if-nez v0, :cond_0

    .line 39946
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q0;-><init>(Lcom/facebook/ads/redexgen/X/JG;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/JG;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 39947
    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 2

    .line 39948
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A00:F

    .line 39949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A08:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0D:Lcom/facebook/ads/redexgen/X/Q7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A04:Lcom/facebook/ads/redexgen/X/Q7;

    if-eq v1, v0, :cond_0

    .line 39950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pu;->A0C(F)V

    .line 39951
    :cond_0
    return-void
.end method

.method public setTestMode(Z)V
    .locals 0

    .line 39952
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0K:Z

    .line 39953
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39954
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0G:Ljava/lang/String;

    .line 39955
    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/Q8;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Q8;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39965
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0F:Lcom/facebook/ads/redexgen/X/Q8;

    .line 39966
    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 1

    .line 39967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2v()V

    .line 39968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0C:Lcom/facebook/ads/redexgen/X/Pu;

    if-eqz v0, :cond_0

    .line 39969
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JG;->A06()V

    .line 39970
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A06:Landroid/net/Uri;

    .line 39971
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/JG;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 39972
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JG;->A04()V

    .line 39973
    return-void
.end method
