.class public final Lcom/facebook/ads/redexgen/X/JP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ph;


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Pg;

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 40099
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Zp1jBMTXyTngXAjRlLP1q6RZbaUI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nHljDkT3i8Wirocu51jroGsoJHOhv1cR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sP6X6aS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "KZL6M4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KoOjzqZIxieUbLbPf8D"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "B1jmqrSafv9jI6Lw73IRSYcL6IlnF6YH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FLN3m70EKIfdw8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ppmNyXlbfQKy53gkSU0tUatt7Y3PBdXb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JP;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;III)V
    .locals 1

    .line 40100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40101
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A05:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A01:Lcom/facebook/ads/redexgen/X/Pg;

    .line 40102
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JP;->A05:Landroid/view/View;

    .line 40103
    iput p2, p0, Lcom/facebook/ads/redexgen/X/JP;->A02:I

    .line 40104
    iput p3, p0, Lcom/facebook/ads/redexgen/X/JP;->A04:I

    .line 40105
    iput p4, p0, Lcom/facebook/ads/redexgen/X/JP;->A03:I

    .line 40106
    return-void
.end method

.method private A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 3

    .line 40107
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput p2, v1, v0

    const/4 v0, 0x1

    aput p3, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 40108
    .local v0, "slideAnimator":Landroid/animation/ValueAnimator;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A02:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 40109
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pq;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Pq;-><init>(Lcom/facebook/ads/redexgen/X/JP;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40110
    return-object v2
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/JP;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 40111
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JP;->A00:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/JP;)Landroid/view/View;
    .locals 0

    .line 40112
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JP;->A05:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/JP;Lcom/facebook/ads/redexgen/X/Pg;)Lcom/facebook/ads/redexgen/X/Pg;
    .locals 0

    .line 40113
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JP;->A01:Lcom/facebook/ads/redexgen/X/Pg;

    return-object p1
.end method

.method private A04()V
    .locals 3

    .line 40114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A00:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 40115
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/JP;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 40116
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/JP;->A06:[Ljava/lang/String;

    const-string v1, "75AaLozsvbqC7RPKNa9MBDOQqsQ1eQ5U"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "oWQ9IgFva7oIaP1s8z2NxAvwjcynmKEe"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A00:Landroid/animation/ValueAnimator;

    .line 40117
    :cond_1
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/JP;)V
    .locals 0

    .line 40118
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JP;->A04()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/JP;Z)V
    .locals 0

    .line 40119
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A08(Z)V

    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/JP;Z)V
    .locals 0

    .line 40120
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A09(Z)V

    return-void
.end method

.method private A08(Z)V
    .locals 3

    .line 40121
    if-eqz p1, :cond_0

    .line 40122
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A06:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A01:Lcom/facebook/ads/redexgen/X/Pg;

    .line 40123
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JP;->A05:Landroid/view/View;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/JP;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A04:I

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A00:Landroid/animation/ValueAnimator;

    .line 40124
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JP;->A00:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pp;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pp;-><init>(Lcom/facebook/ads/redexgen/X/JP;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 40125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 40126
    :goto_0
    return-void

    .line 40127
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JP;->A05:Landroid/view/View;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A04:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 40128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0H(Landroid/view/View;)V

    .line 40129
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A05:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A01:Lcom/facebook/ads/redexgen/X/Pg;

    goto :goto_0
.end method

.method private A09(Z)V
    .locals 4

    .line 40130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0L(Landroid/view/View;)V

    .line 40131
    if-eqz p1, :cond_0

    .line 40132
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A04:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A01:Lcom/facebook/ads/redexgen/X/Pg;

    .line 40133
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JP;->A05:Landroid/view/View;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/JP;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A03:I

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A00:Landroid/animation/ValueAnimator;

    .line 40134
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JP;->A00:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Po;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Po;-><init>(Lcom/facebook/ads/redexgen/X/JP;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 40135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 40136
    :goto_0
    return-void

    .line 40137
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/JP;->A05:Landroid/view/View;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JP;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/JP;->A06:[Ljava/lang/String;

    const-string v1, "CRQ3If4kF9c"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A03:I

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 40138
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A03:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A01:Lcom/facebook/ads/redexgen/X/Pg;

    goto :goto_0
.end method


# virtual methods
.method public final A3N(ZZ)V
    .locals 0

    .line 40139
    if-eqz p2, :cond_0

    .line 40140
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A08(Z)V

    .line 40141
    :goto_0
    return-void

    .line 40142
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A09(Z)V

    goto :goto_0
.end method

.method public final A7j()Lcom/facebook/ads/redexgen/X/Pg;
    .locals 1

    .line 40143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A01:Lcom/facebook/ads/redexgen/X/Pg;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 40144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JP;->A00:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 40145
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 40146
    :cond_0
    return-void
.end method
