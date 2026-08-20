.class public Lcom/criteo/publisher/m0/d;
.super Ljava/lang/Object;
.source "InterstitialListenerNotifier.kt"


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Lcom/criteo/publisher/CriteoInterstitial;

.field private final c:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/CriteoInterstitialAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/criteo/publisher/e0/c;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/CriteoInterstitial;Lcom/criteo/publisher/CriteoInterstitialAdListener;Lcom/criteo/publisher/e0/c;)V
    .locals 1

    const-string v0, "interstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runOnUiThreadExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0, p1, v0, p3}, Lcom/criteo/publisher/m0/d;-><init>(Lcom/criteo/publisher/CriteoInterstitial;Ljava/lang/ref/Reference;Lcom/criteo/publisher/e0/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/criteo/publisher/CriteoInterstitial;Ljava/lang/ref/Reference;Lcom/criteo/publisher/e0/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/CriteoInterstitial;",
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/CriteoInterstitialAdListener;",
            ">;",
            "Lcom/criteo/publisher/e0/c;",
            ")V"
        }
    .end annotation

    const-string v0, "interstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenerRef"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runOnUiThreadExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/m0/d;->b:Lcom/criteo/publisher/CriteoInterstitial;

    iput-object p2, p0, Lcom/criteo/publisher/m0/d;->c:Ljava/lang/ref/Reference;

    iput-object p3, p0, Lcom/criteo/publisher/m0/d;->d:Lcom/criteo/publisher/e0/c;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object p1

    const-string p2, "LoggerFactory.getLogger(javaClass)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/criteo/publisher/m0/d;->a:Lcom/criteo/publisher/logging/g;

    return-void
.end method

.method public static final synthetic a(Lcom/criteo/publisher/m0/d;)Ljava/lang/ref/Reference;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/criteo/publisher/m0/d;->c:Ljava/lang/ref/Reference;

    return-object p0
.end method

.method private a(Lcom/criteo/publisher/CriteoInterstitialAdListener;Lcom/criteo/publisher/p;)V
    .locals 1

    .line 71
    sget-object v0, Lcom/criteo/publisher/m0/c;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    invoke-interface {p1}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdClicked()V

    .line 79
    invoke-interface {p1}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdLeftApplication()V

    goto :goto_0

    .line 76
    :pswitch_1
    invoke-interface {p1}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdClosed()V

    goto :goto_0

    .line 75
    :pswitch_2
    invoke-interface {p1}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdOpened()V

    goto :goto_0

    .line 74
    :pswitch_3
    sget-object p2, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NETWORK_ERROR:Lcom/criteo/publisher/CriteoErrorCode;

    invoke-interface {p1, p2}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V

    goto :goto_0

    .line 73
    :pswitch_4
    sget-object p2, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NO_FILL:Lcom/criteo/publisher/CriteoErrorCode;

    invoke-interface {p1, p2}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V

    goto :goto_0

    .line 72
    :pswitch_5
    iget-object p2, p0, Lcom/criteo/publisher/m0/d;->b:Lcom/criteo/publisher/CriteoInterstitial;

    invoke-interface {p1, p2}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdReceived(Lcom/criteo/publisher/CriteoInterstitial;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/criteo/publisher/logging/g;Lcom/criteo/publisher/p;)V
    .locals 1

    .line 85
    sget-object v0, Lcom/criteo/publisher/p;->a:Lcom/criteo/publisher/p;

    if-ne p2, v0, :cond_0

    .line 86
    iget-object p2, p0, Lcom/criteo/publisher/m0/d;->b:Lcom/criteo/publisher/CriteoInterstitial;

    invoke-static {p2}, Lcom/criteo/publisher/j0/b;->b(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/logging/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    goto :goto_0

    .line 87
    :cond_0
    sget-object v0, Lcom/criteo/publisher/p;->b:Lcom/criteo/publisher/p;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/criteo/publisher/p;->c:Lcom/criteo/publisher/p;

    if-ne p2, v0, :cond_2

    .line 88
    :cond_1
    iget-object p2, p0, Lcom/criteo/publisher/m0/d;->b:Lcom/criteo/publisher/CriteoInterstitial;

    invoke-static {p2}, Lcom/criteo/publisher/j0/b;->a(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/logging/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/criteo/publisher/m0/d;Lcom/criteo/publisher/CriteoInterstitialAdListener;Lcom/criteo/publisher/p;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/criteo/publisher/m0/d;->a(Lcom/criteo/publisher/CriteoInterstitialAdListener;Lcom/criteo/publisher/p;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/criteo/publisher/p;)V
    .locals 2

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/criteo/publisher/m0/d;->a:Lcom/criteo/publisher/logging/g;

    invoke-direct {p0, v0, p1}, Lcom/criteo/publisher/m0/d;->a(Lcom/criteo/publisher/logging/g;Lcom/criteo/publisher/p;)V

    .line 62
    iget-object v0, p0, Lcom/criteo/publisher/m0/d;->d:Lcom/criteo/publisher/e0/c;

    new-instance v1, Lcom/criteo/publisher/m0/d$a;

    invoke-direct {v1, p0, p1}, Lcom/criteo/publisher/m0/d$a;-><init>(Lcom/criteo/publisher/m0/d;Lcom/criteo/publisher/p;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e0/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
