.class public final Lcom/facebook/ads/redexgen/X/Jq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PL;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/PX;
    }
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/RA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/PX;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/redexgen/X/PO;

.field public final A06:Lcom/facebook/ads/redexgen/X/NY;

.field public final A07:Lcom/facebook/ads/redexgen/X/Mt;

.field public final A08:Lcom/facebook/ads/redexgen/X/LE;

.field public final A09:Z

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 40829
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "82Zz8oCZg8zkkbzw8opl2Yz4CtrF2SDp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9Qv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sj5N5SmrmBRQmWue5o8rJw6ys3alFtJa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lBA7odrZYL425"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CSSBUKaIJSWMhqfJuWGnuyX4cipoTk5I"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IDQP5gLMbSSnC18VVbdsGZXvkzghwpNg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Yf1MSxzKxHs57zUlY7hI2xykX4pHUq1P"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "T3bn0lMwtbok5v0PvXD6574OGDOrX6LS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jq;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PX;Z)V
    .locals 1

    .line 40830
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Jq;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PX;ZZ)V

    .line 40831
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PX;ZZ)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/PX;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40833
    new-instance v0, Lcom/facebook/ads/redexgen/X/6n;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6n;-><init>(Lcom/facebook/ads/redexgen/X/Jq;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A06:Lcom/facebook/ads/redexgen/X/NY;

    .line 40834
    new-instance v0, Lcom/facebook/ads/redexgen/X/6k;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6k;-><init>(Lcom/facebook/ads/redexgen/X/Jq;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A07:Lcom/facebook/ads/redexgen/X/Mt;

    .line 40835
    new-instance v0, Lcom/facebook/ads/redexgen/X/6j;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6j;-><init>(Lcom/facebook/ads/redexgen/X/Jq;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A05:Lcom/facebook/ads/redexgen/X/PO;

    .line 40836
    new-instance v0, Lcom/facebook/ads/redexgen/X/6i;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6i;-><init>(Lcom/facebook/ads/redexgen/X/Jq;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A08:Lcom/facebook/ads/redexgen/X/LE;

    .line 40837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A03:Z

    .line 40838
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A04:Landroid/os/Handler;

    .line 40839
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Jq;->A09:Z

    .line 40840
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/Jq;->A0A:Z

    .line 40841
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Jq;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PX;)V

    .line 40842
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Jq;)Landroid/os/Handler;
    .locals 0

    .line 40843
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A04:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Jq;)Landroid/view/View;
    .locals 0

    .line 40844
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Jq;)Lcom/facebook/ads/redexgen/X/RA;
    .locals 0

    .line 40845
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A01:Lcom/facebook/ads/redexgen/X/RA;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Jq;)Lcom/facebook/ads/redexgen/X/PX;
    .locals 0

    .line 40846
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A02:Lcom/facebook/ads/redexgen/X/PX;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Jq;Lcom/facebook/ads/redexgen/X/PX;)Lcom/facebook/ads/redexgen/X/PX;
    .locals 0

    .line 40847
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A02:Lcom/facebook/ads/redexgen/X/PX;

    return-object p1
.end method

.method private A05()V
    .locals 3

    .line 40848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Landroid/view/View;

    .line 40849
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 40850
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 40851
    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/PW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PW;-><init>(Lcom/facebook/ads/redexgen/X/Jq;)V

    .line 40852
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 40853
    return-void
.end method

.method private A06(II)V
    .locals 2

    .line 40854
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A04:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 40856
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Landroid/view/View;

    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 40857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 40858
    return-void
.end method

.method private A07(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3

    .line 40859
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 40861
    return-void
.end method

.method private final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PX;)V
    .locals 3

    .line 40862
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jq;->A02:Lcom/facebook/ads/redexgen/X/PX;

    .line 40863
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Landroid/view/View;

    .line 40864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 40865
    sget-object v0, Lcom/facebook/ads/redexgen/X/PX;->A04:Lcom/facebook/ads/redexgen/X/PX;

    if-ne p2, v0, :cond_0

    .line 40866
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jq;->A0B:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 40867
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jq;->A0B:[Ljava/lang/String;

    const-string v1, "3OWa54Sl5zOXBo6RskK22JrE4LW5JWKj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "lt7hksMEFpJVhV2333OBcIopOVPW9bfy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40868
    :goto_0
    return-void

    .line 40869
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 40870
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Jq;)V
    .locals 0

    .line 40871
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jq;->A05()V

    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Jq;II)V
    .locals 0

    .line 40872
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Jq;->A06(II)V

    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Jq;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 40873
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Jq;->A07(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Jq;)Z
    .locals 0

    .line 40874
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A03:Z

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/Jq;)Z
    .locals 0

    .line 40875
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A09:Z

    return p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Jq;)Z
    .locals 0

    .line 40876
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A0A:Z

    return p0
.end method


# virtual methods
.method public final A93(Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 4

    .line 40877
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A01:Lcom/facebook/ads/redexgen/X/RA;

    .line 40878
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8V;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A06:Lcom/facebook/ads/redexgen/X/NY;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A07:Lcom/facebook/ads/redexgen/X/Mt;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A08:Lcom/facebook/ads/redexgen/X/LE;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A05:Lcom/facebook/ads/redexgen/X/PO;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 40879
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8U;->A03([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 40880
    return-void
.end method

.method public final AFf(Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 5

    .line 40881
    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v4}, Lcom/facebook/ads/redexgen/X/Jq;->A06(II)V

    .line 40882
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8V;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A05:Lcom/facebook/ads/redexgen/X/PO;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A08:Lcom/facebook/ads/redexgen/X/LE;

    aput-object v0, v2, v1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A07:Lcom/facebook/ads/redexgen/X/Mt;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A06:Lcom/facebook/ads/redexgen/X/NY;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 40883
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8U;->A04([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 40884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A01:Lcom/facebook/ads/redexgen/X/RA;

    .line 40885
    return-void
.end method
