.class public Lcom/bytedance/adsdk/lottie/LottieAnimationView;
.super Landroid/widget/ImageView;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;,
        Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;
    }
.end annotation


# static fields
.field private static final Qhi:Ljava/lang/String; = "LottieAnimationView"

.field private static final cJ:Lcom/bytedance/adsdk/lottie/Gm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/Gm<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ABk:Z

.field private final CJ:Lcom/bytedance/adsdk/lottie/Gm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/Gm<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private Gm:Z

.field private HzH:Lcom/bytedance/adsdk/lottie/ROR;

.field private final ROR:Lcom/bytedance/adsdk/lottie/hm;

.field private Sf:Ljava/lang/String;

.field private Tgh:I

.field private WAv:Lcom/bytedance/adsdk/ugeno/ac;

.field private final ac:Lcom/bytedance/adsdk/lottie/Gm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/Gm<",
            "Lcom/bytedance/adsdk/lottie/ROR;",
            ">;"
        }
    .end annotation
.end field

.field private fl:Lcom/bytedance/adsdk/lottie/Gm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/Gm<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private hm:I

.field private hpZ:Lcom/bytedance/adsdk/lottie/ABk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/ABk<",
            "Lcom/bytedance/adsdk/lottie/ROR;",
            ">;"
        }
    .end annotation
.end field

.field private final iMK:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;",
            ">;"
        }
    .end annotation
.end field

.field private final pA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/bytedance/adsdk/lottie/LottieAnimationView$1;

    invoke-direct {v0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView$1;-><init>()V

    sput-object v0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->cJ:Lcom/bytedance/adsdk/lottie/Gm;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 132
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance p1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$2;

    invoke-direct {p1, p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView$2;-><init>(Lcom/bytedance/adsdk/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ac:Lcom/bytedance/adsdk/lottie/Gm;

    .line 90
    new-instance p1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$3;

    invoke-direct {p1, p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView$3;-><init>(Lcom/bytedance/adsdk/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->CJ:Lcom/bytedance/adsdk/lottie/Gm;

    const/4 p1, 0x0

    .line 102
    iput p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Tgh:I

    .line 104
    new-instance v0, Lcom/bytedance/adsdk/lottie/hm;

    invoke-direct {v0}, Lcom/bytedance/adsdk/lottie/hm;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    .line 113
    iput-boolean p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Gm:Z

    .line 115
    iput-boolean p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->zc:Z

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ABk:Z

    .line 120
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->iMK:Ljava/util/Set;

    .line 121
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->pA:Ljava/util/Set;

    .line 133
    invoke-direct {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Tgh()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/adsdk/lottie/LottieAnimationView;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Tgh:I

    return p0
.end method

.method private Qhi(I)Lcom/bytedance/adsdk/lottie/ABk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bytedance/adsdk/lottie/ABk<",
            "Lcom/bytedance/adsdk/lottie/ROR;",
            ">;"
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Lcom/bytedance/adsdk/lottie/ABk;

    new-instance v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$4;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView$4;-><init>(Lcom/bytedance/adsdk/lottie/LottieAnimationView;I)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/adsdk/lottie/ABk;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    .line 389
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ABk:Z

    if-eqz v0, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/adsdk/lottie/Sf;->Qhi(Landroid/content/Context;I)Lcom/bytedance/adsdk/lottie/ABk;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bytedance/adsdk/lottie/Sf;->Qhi(Landroid/content/Context;ILjava/lang/String;)Lcom/bytedance/adsdk/lottie/ABk;

    move-result-object p1

    return-object p1
.end method

.method private Qhi(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ABk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/adsdk/lottie/ABk<",
            "Lcom/bytedance/adsdk/lottie/ROR;",
            ">;"
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Lcom/bytedance/adsdk/lottie/ABk;

    new-instance v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$5;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView$5;-><init>(Lcom/bytedance/adsdk/lottie/LottieAnimationView;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/adsdk/lottie/ABk;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    .line 409
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ABk:Z

    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/adsdk/lottie/Sf;->cJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ABk;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bytedance/adsdk/lottie/Sf;->cJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ABk;

    move-result-object p1

    return-object p1
.end method

.method private Qhi(FZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1009
    iget-object p2, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->iMK:Ljava/util/Set;

    sget-object v0, Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;->cJ:Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1011
    :cond_0
    iget-object p2, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/lottie/hm;->CJ(F)V

    return-void
.end method

.method private ROR()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->hpZ:Lcom/bytedance/adsdk/lottie/ABk;

    if-eqz v0, :cond_0

    .line 522
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ac:Lcom/bytedance/adsdk/lottie/Gm;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/lottie/ABk;->cJ(Lcom/bytedance/adsdk/lottie/Gm;)Lcom/bytedance/adsdk/lottie/ABk;

    .line 523
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->hpZ:Lcom/bytedance/adsdk/lottie/ABk;

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->CJ:Lcom/bytedance/adsdk/lottie/Gm;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/lottie/ABk;->CJ(Lcom/bytedance/adsdk/lottie/Gm;)Lcom/bytedance/adsdk/lottie/ABk;

    :cond_0
    return-void
.end method

.method private Sf()V
    .locals 1

    const/4 v0, 0x0

    .line 1033
    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->HzH:Lcom/bytedance/adsdk/lottie/ROR;

    .line 1034
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->Sf()V

    return-void
.end method

.method private Tgh()V
    .locals 5

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setSaveEnabled(Z)V

    const/4 v1, 0x1

    .line 153
    iput-boolean v1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ABk:Z

    .line 154
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setFallbackResource(I)V

    .line 155
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 156
    invoke-direct {p0, v2, v0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Qhi(FZ)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Qhi(Z)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setIgnoreDisabledSystemAnimations(Z)V

    .line 159
    iget-object v3, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/adsdk/lottie/Tgh/ROR;->Qhi(Landroid/content/Context;)F

    move-result v4

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/adsdk/lottie/hm;->Qhi(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic ac(Lcom/bytedance/adsdk/lottie/LottieAnimationView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ABk:Z

    return p0
.end method

.method static synthetic cJ(Lcom/bytedance/adsdk/lottie/LottieAnimationView;)Lcom/bytedance/adsdk/lottie/Gm;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->fl:Lcom/bytedance/adsdk/lottie/Gm;

    return-object p0
.end method

.method static synthetic fl()Lcom/bytedance/adsdk/lottie/Gm;
    .locals 1

    .line 68
    sget-object v0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->cJ:Lcom/bytedance/adsdk/lottie/Gm;

    return-object v0
.end method

.method private hm()V
    .locals 2

    .line 1122
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->cJ()Z

    move-result v0

    const/4 v1, 0x0

    .line 1125
    invoke-virtual {p0, v1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1126
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {p0, v1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->Gm()V

    :cond_0
    return-void
.end method

.method private setCompositionTask(Lcom/bytedance/adsdk/lottie/ABk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/lottie/ABk<",
            "Lcom/bytedance/adsdk/lottie/ROR;",
            ">;)V"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->iMK:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;->Qhi:Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-direct {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Sf()V

    .line 514
    invoke-direct {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR()V

    .line 515
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ac:Lcom/bytedance/adsdk/lottie/Gm;

    .line 516
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/lottie/ABk;->Qhi(Lcom/bytedance/adsdk/lottie/Gm;)Lcom/bytedance/adsdk/lottie/ABk;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->CJ:Lcom/bytedance/adsdk/lottie/Gm;

    .line 517
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/lottie/ABk;->ac(Lcom/bytedance/adsdk/lottie/Gm;)Lcom/bytedance/adsdk/lottie/ABk;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->hpZ:Lcom/bytedance/adsdk/lottie/ABk;

    return-void
.end method


# virtual methods
.method public CJ()V
    .locals 1

    const/4 v0, 0x0

    .line 981
    iput-boolean v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->zc:Z

    .line 982
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->Dww()V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/lottie/hm;->Qhi(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public Qhi()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->iMK:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;->Tgh:Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->hm()V

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/ac;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->WAv:Lcom/bytedance/adsdk/ugeno/ac;

    return-void
.end method

.method public Qhi(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 439
    invoke-static {p1, p2}, Lcom/bytedance/adsdk/lottie/Sf;->Qhi(Ljava/io/InputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ABk;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setCompositionTask(Lcom/bytedance/adsdk/lottie/ABk;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 428
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Qhi(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(Z)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->Qhi(Z)V

    return-void
.end method

.method public ac()V
    .locals 2

    .line 975
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->iMK:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;->Tgh:Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 976
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->bxS()V

    return-void
.end method

.method public cJ(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->fl(I)V

    return-void
.end method

.method public cJ()Z
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->kYc()Z

    move-result v0

    return v0
.end method

.method public getClipToCompositionBounds()Z
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->cJ()Z

    move-result v0

    return v0
.end method

.method public getComposition()Lcom/bytedance/adsdk/lottie/ROR;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->HzH:Lcom/bytedance/adsdk/lottie/ROR;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1020
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->HzH:Lcom/bytedance/adsdk/lottie/ROR;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ROR;->fl()F

    move-result v0

    float-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->pA()I

    move-result v0

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->ac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaintainOriginalImageBounds()Z
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->CJ()Z

    move-result v0

    return v0
.end method

.method public getMaxFrame()F
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->ABk()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->zc()F

    move-result v0

    return v0
.end method

.method public getPerformanceTracker()Lcom/bytedance/adsdk/lottie/kYc;
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->Tgh()Lcom/bytedance/adsdk/lottie/kYc;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->CQU()F

    move-result v0

    return v0
.end method

.method public getRenderMode()Lcom/bytedance/adsdk/lottie/tP;
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->fl()Lcom/bytedance/adsdk/lottie/tP;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->HzH()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->hpZ()I

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->iMK()F

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 2

    .line 192
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 193
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 194
    instance-of v1, v0, Lcom/bytedance/adsdk/lottie/hm;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->fl()Lcom/bytedance/adsdk/lottie/tP;

    move-result-object v0

    sget-object v1, Lcom/bytedance/adsdk/lottie/tP;->ac:Lcom/bytedance/adsdk/lottie/tP;

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 206
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    if-ne v0, v1, :cond_0

    .line 209
    invoke-super {p0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 212
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 266
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 267
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->zc:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->hm()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->WAv:Lcom/bytedance/adsdk/ugeno/ac;

    if-eqz v0, :cond_1

    .line 271
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/ac;->Tgh()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 277
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 278
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->WAv:Lcom/bytedance/adsdk/ugeno/ac;

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/ac;->Tgh()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 232
    instance-of v0, p1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;

    if-nez v0, :cond_0

    .line 233
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 237
    :cond_0
    check-cast p1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;

    .line 238
    invoke-virtual {p1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 239
    iget-object v0, p1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->Qhi:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Sf:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->iMK:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;->Qhi:Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Sf:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Sf:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 243
    :cond_1
    iget v0, p1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->cJ:I

    iput v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->hm:I

    .line 244
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->iMK:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;->Qhi:Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->hm:I

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setAnimation(I)V

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->iMK:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;->cJ:Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 248
    iget v0, p1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->ac:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Qhi(FZ)V

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->iMK:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;->Tgh:Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->CJ:Z

    if-eqz v0, :cond_4

    .line 251
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Qhi()V

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->iMK:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;->fl:Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 254
    iget-object v0, p1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->fl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 256
    :cond_5
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->iMK:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;->ac:Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 257
    iget v0, p1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->Tgh:I

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 259
    :cond_6
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->iMK:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;->CJ:Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 260
    iget p1, p1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->ROR:I

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setRepeatCount(I)V

    :cond_7
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 218
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 219
    new-instance v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;

    invoke-direct {v1, v0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;-><init>(Landroid/os/Parcelable;)V

    .line 220
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Sf:Ljava/lang/String;

    iput-object v0, v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->Qhi:Ljava/lang/String;

    .line 221
    iget v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->hm:I

    iput v0, v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->cJ:I

    .line 222
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->CQU()F

    move-result v0

    iput v0, v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->ac:F

    .line 223
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->tP()Z

    move-result v0

    iput-boolean v0, v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->CJ:Z

    .line 224
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->ac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->fl:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->hpZ()I

    move-result v0

    iput v0, v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->Tgh:I

    .line 226
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->HzH()I

    move-result v0

    iput v0, v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$Qhi;->ROR:I

    return-object v1
.end method

.method public setAnimation(I)V
    .locals 1

    .line 373
    iput p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->hm:I

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Sf:Ljava/lang/String;

    .line 375
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Qhi(I)Lcom/bytedance/adsdk/lottie/ABk;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setCompositionTask(Lcom/bytedance/adsdk/lottie/ABk;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1

    .line 395
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Sf:Ljava/lang/String;

    const/4 v0, 0x0

    .line 396
    iput v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->hm:I

    .line 397
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Qhi(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ABk;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setCompositionTask(Lcom/bytedance/adsdk/lottie/ABk;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 419
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 2

    .line 457
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ABk:Z

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/adsdk/lottie/Sf;->Qhi(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ABk;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bytedance/adsdk/lottie/Sf;->Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ABk;

    move-result-object p1

    .line 459
    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->setCompositionTask(Lcom/bytedance/adsdk/lottie/ABk;)V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->Tgh(Z)V

    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0

    .line 355
    iput-boolean p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ABk:Z

    return-void
.end method

.method public setClipToCompositionBounds(Z)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->cJ(Z)V

    return-void
.end method

.method public setComposition(Lcom/bytedance/adsdk/lottie/ROR;)V
    .locals 3

    .line 533
    sget-boolean v0, Lcom/bytedance/adsdk/lottie/Tgh;->Qhi:Z

    if-eqz v0, :cond_0

    .line 534
    sget-object v0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Qhi:Ljava/lang/String;

    const-string v1, "Set Composition \n"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/lottie/hm;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 538
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->HzH:Lcom/bytedance/adsdk/lottie/ROR;

    const/4 v0, 0x1

    .line 539
    iput-boolean v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Gm:Z

    .line 540
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->Qhi(Lcom/bytedance/adsdk/lottie/ROR;)Z

    move-result p1

    const/4 v0, 0x0

    .line 541
    iput-boolean v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Gm:Z

    .line 542
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 548
    invoke-direct {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->hm()V

    .line 554
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p0, p1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 556
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->requestLayout()V

    .line 558
    iget-object p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->pA:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->ROR(Ljava/lang/String;)V

    return-void
.end method

.method public setFailureListener(Lcom/bytedance/adsdk/lottie/Gm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/lottie/Gm<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 496
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->fl:Lcom/bytedance/adsdk/lottie/Gm;

    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0

    .line 508
    iput p1, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Tgh:I

    return-void
.end method

.method public setFontAssetDelegate(Lcom/bytedance/adsdk/lottie/ac;)V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->Qhi(Lcom/bytedance/adsdk/lottie/ac;)V

    return-void
.end method

.method public setFontMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->Qhi(Ljava/util/Map;)V

    return-void
.end method

.method public setFrame(I)V
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->ac(I)V

    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->Sf(Z)V

    return-void
.end method

.method public setImageAssetDelegate(Lcom/bytedance/adsdk/lottie/fl;)V
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->Qhi(Lcom/bytedance/adsdk/lottie/fl;)V

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->Qhi(Ljava/lang/String;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR()V

    .line 177
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR()V

    .line 171
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR()V

    .line 165
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaintainOriginalImageBounds(Z)V
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->ac(Z)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->cJ(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->ac(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->cJ(F)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->CJ(Ljava/lang/String;)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->Qhi(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->cJ(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->Qhi(F)V

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->fl(Z)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->CJ(Z)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x1

    .line 1002
    invoke-direct {p0, p1, v0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Qhi(FZ)V

    return-void
.end method

.method public setRenderMode(Lcom/bytedance/adsdk/lottie/tP;)V
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->Qhi(Lcom/bytedance/adsdk/lottie/tP;)V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->iMK:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;->CJ:Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->fl(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->iMK:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;->ac:Lcom/bytedance/adsdk/lottie/LottieAnimationView$cJ;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 782
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->CJ(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->ROR(Z)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->ac(F)V

    return-void
.end method

.method public setTextDelegate(Lcom/bytedance/adsdk/lottie/MQ;)V
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->Qhi(Lcom/bytedance/adsdk/lottie/MQ;)V

    return-void
.end method

.method public setUseCompositionFrameRate(Z)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/hm;->hm(Z)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 182
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Gm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->ROR:Lcom/bytedance/adsdk/lottie/hm;

    if-ne p1, v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->kYc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->CJ()V

    goto :goto_0

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Gm:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/bytedance/adsdk/lottie/hm;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->kYc()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/hm;->Dww()V

    .line 187
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
