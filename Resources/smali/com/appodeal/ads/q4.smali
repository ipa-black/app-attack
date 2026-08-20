.class public final Lcom/appodeal/ads/q4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/appodeal/ads/q4;

.field public static b:Z

.field public static c:Z

.field public static d:Lcom/appodeal/ads/TestActivity;

.field public static final e:Lkotlin/Lazy;

.field public static f:Lcom/appodeal/ads/revenue/AdRevenueCallbacks;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static final j:Lkotlin/Lazy;

.field public static final k:Lkotlin/Lazy;

.field public static final l:Ljava/util/LinkedHashSet;

.field public static final m:Lkotlin/Lazy;

.field public static final n:Lkotlin/Lazy;

.field public static final o:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/q4;

    invoke-direct {v0}, Lcom/appodeal/ads/q4;-><init>()V

    sput-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    sget-object v0, Lcom/appodeal/ads/q4$e;->a:Lcom/appodeal/ads/q4$e;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/q4;->e:Lkotlin/Lazy;

    const-string v0, "android"

    sput-object v0, Lcom/appodeal/ads/q4;->g:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/q4$g;->a:Lcom/appodeal/ads/q4$g;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/q4;->j:Lkotlin/Lazy;

    sget-object v0, Lcom/appodeal/ads/q4$a;->a:Lcom/appodeal/ads/q4$a;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/q4;->k:Lkotlin/Lazy;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/appodeal/ads/q4;->l:Ljava/util/LinkedHashSet;

    sget-object v0, Lcom/appodeal/ads/q4$f;->a:Lcom/appodeal/ads/q4$f;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/q4;->m:Lkotlin/Lazy;

    sget-object v0, Lcom/appodeal/ads/q4$d;->a:Lcom/appodeal/ads/q4$d;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/q4;->n:Lkotlin/Lazy;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/q4;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/q4;->p:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/appodeal/ads/BannerView;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v1, "Get"

    const-string v2, "BannerView"

    const-string v3, "SDK-Public"

    invoke-static {v3, v1, v2, v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    new-instance v0, Lcom/appodeal/ads/BannerView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/appodeal/ads/t0;->c()Lcom/appodeal/ads/t0$a;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/appodeal/ads/x5;->a(I)V

    invoke-static {}, Lcom/appodeal/ads/t0;->c()Lcom/appodeal/ads/t0$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/x5;->a(Landroid/widget/FrameLayout;)V

    return-object v0
.end method

.method public static final a(Lcom/appodeal/ads/q4;)Lcom/appodeal/ads/context/b;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object p0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    return-object p0
.end method

.method public static final a(I)Ljava/util/ArrayList;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "NativeAds: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v2, "SDK-Public"

    const-string v3, "Get"

    invoke-static {v2, v3, v0, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    invoke-static {}, Lcom/appodeal/ads/Native;->c()Lcom/appodeal/ads/n2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/n2;->a(I)Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "getNativeAdBox().getNativeAds(count)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final synthetic a()Ljava/util/LinkedHashSet;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/q4;->l:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public static final a(Landroid/content/Context;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/q4;->d()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/u;

    invoke-static {v2}, Lcom/appodeal/ads/s4;->a(Lcom/appodeal/ads/u;)I

    move-result v3

    and-int/2addr v3, p1

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lcom/appodeal/ads/u;->g()Lcom/appodeal/ads/i;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/appodeal/ads/i;->b(Landroid/content/Context;)Lcom/appodeal/ads/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appodeal/ads/i;->a()Ljava/util/Set;

    move-result-object v2

    const-string v3, "adController.networkRegi\u2026  .availableNetworksNames"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final a(IZ)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->n:Lcom/appodeal/ads/i1;

    .line 37
    const-string v1, "auto cache for "

    invoke-static {v1}, Lcom/appodeal/ads/h0;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38
    invoke-static {p0}, Lcom/appodeal/ads/n5;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    and-int/lit8 v0, p0, 0x3

    if-lez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object v0

    .line 39
    iput-boolean p1, v0, Lcom/appodeal/ads/q1;->c:Z

    :cond_0
    and-int/lit16 v0, p0, 0x80

    if-lez v0, :cond_1

    .line 40
    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v0

    .line 41
    iput-boolean p1, v0, Lcom/appodeal/ads/u;->k:Z

    :cond_1
    and-int/lit16 v0, p0, 0xc5c

    if-lez v0, :cond_2

    .line 42
    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v0

    .line 43
    iput-boolean p1, v0, Lcom/appodeal/ads/u;->k:Z

    :cond_2
    and-int/lit16 v0, p0, 0x100

    if-lez v0, :cond_3

    .line 44
    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object v0

    .line 45
    iput-boolean p1, v0, Lcom/appodeal/ads/u;->k:Z

    :cond_3
    and-int/lit16 p0, p0, 0x200

    if-lez p0, :cond_4

    .line 46
    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object p0

    .line 47
    iput-boolean p1, p0, Lcom/appodeal/ads/u;->k:Z

    :cond_4
    return-void
.end method

.method public static final a(Landroid/app/Activity;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/g1;->I:Lcom/appodeal/ads/i1;

    invoke-virtual {v0}, Lcom/appodeal/ads/i1;->a()V

    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    sget-object v0, Lcom/appodeal/ads/context/g;->b:Lcom/appodeal/ads/context/g;

    .line 66
    invoke-virtual {v0, p0}, Lcom/appodeal/ads/context/g;->setActivity(Landroid/app/Activity;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appodeal/ads/TestActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/appodeal/ads/q4;->a(Landroid/app/Activity;II)V

    return-void
.end method

.method public static final a(Landroid/app/Activity;II)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/appodeal/ads/g1;->k:Lcom/appodeal/ads/i1;

    const-string p1, "activity is null"

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/q4;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/appodeal/ads/g1;->k:Lcom/appodeal/ads/i1;

    invoke-virtual {v0}, Lcom/appodeal/ads/i1;->a()V

    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget-object v0, Lcom/appodeal/ads/context/g;->b:Lcom/appodeal/ads/context/g;

    .line 6
    invoke-virtual {v0, p0}, Lcom/appodeal/ads/context/g;->setActivity(Landroid/app/Activity;)V

    and-int/lit8 v0, p1, 0x3

    if-lez v0, :cond_4

    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/q5;

    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/r1;

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/q1;->b()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/q1;->c()V

    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/u;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/u;->c(Landroid/content/Context;)V

    :cond_4
    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_5

    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/u;->d(Landroid/content/Context;)V

    :cond_5
    and-int/lit16 v0, p1, 0xc5c

    if-lez v0, :cond_6

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/u;->d(Landroid/content/Context;)V

    :cond_6
    and-int/lit16 v0, p1, 0x100

    if-lez v0, :cond_7

    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/u;->d(Landroid/content/Context;)V

    :cond_7
    and-int/lit16 p0, p1, 0x200

    if-lez p0, :cond_8

    invoke-static {}, Lcom/appodeal/ads/Native;->c()Lcom/appodeal/ads/n2;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/appodeal/ads/n2;->b(I)V

    invoke-static {}, Lcom/appodeal/ads/Native;->c()Lcom/appodeal/ads/n2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appodeal/ads/n2;->c()V

    :cond_8
    return-void
.end method

.method public static final a(Landroid/app/Activity;Ljava/lang/String;ILcom/appodeal/consent/Consent;Ljava/lang/Boolean;Lcom/appodeal/ads/initializing/ApdInitializationCallback;)V
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    const-string v2, "appKey"

    move-object v4, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    sget-object v3, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$ActivityIsNull;->INSTANCE:Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$ActivityIsNull;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "your app"

    :goto_0
    new-instance v5, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$AppKeyIsNullOrEmpty;

    const-string v6, "bundleId"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v3}, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$AppKeyIsNullOrEmpty;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/appodeal/ads/q4;->o()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$SdkVersionIsNotSupported;->INSTANCE:Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$SdkVersionIsNotSupported;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical;

    sget-object v4, Lcom/appodeal/ads/g1;->a:Lcom/appodeal/ads/i1;

    invoke-virtual {v3}, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v1, v2}, Lcom/appodeal/ads/initializing/ApdInitializationCallback;->onInitializationFinished(Ljava/util/List;)V

    :goto_2
    return-void

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    sget-object v2, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    sget-object v2, Lcom/appodeal/ads/context/g;->b:Lcom/appodeal/ads/context/g;

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "checkedActivity.applicationContext"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/appodeal/ads/context/g;->setApplicationContext(Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Lcom/appodeal/ads/context/g;->setActivity(Landroid/app/Activity;)V

    const-string v0, "application"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/appodeal/ads/z4;->a()Lcom/appodeal/ads/t4;

    move-result-object v2

    .line 30
    sget-object v0, Lcom/appodeal/ads/q4;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .line 31
    new-instance v10, Lcom/appodeal/ads/r4;

    const/4 v8, 0x0

    move-object v0, v10

    move-object/from16 v1, p5

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/appodeal/ads/r4;-><init>(Lcom/appodeal/ads/initializing/ApdInitializationCallback;Lcom/appodeal/ads/t4;Landroid/app/Application;Ljava/lang/String;Lcom/appodeal/consent/Consent;Ljava/lang/Boolean;ILkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object p0, v9

    move-object p1, v2

    move-object p2, v3

    move-object p3, v10

    move p4, v0

    move-object/from16 p5, v1

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 32
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final a(Landroid/content/Context;DLjava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/appodeal/ads/q4;->c:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/appodeal/ads/q4;->b:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/appodeal/ads/g1;->w:Lcom/appodeal/ads/i1;

    const-string p1, "Appodeal is not initialized"

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    sget-object p0, Lcom/appodeal/ads/g1;->w:Lcom/appodeal/ads/i1;

    const-string p1, "currency is null"

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/appodeal/ads/j4;->a:Lcom/appodeal/ads/j4;

    invoke-virtual {v0}, Lcom/appodeal/ads/j4;->isUserProtected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/appodeal/ads/g1;->w:Lcom/appodeal/ads/i1;

    const-string p1, "The user did not accept the agreement"

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/appodeal/ads/g1;->w:Lcom/appodeal/ads/i1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inapp purchase, amount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lcom/appodeal/ads/k0;->a(Landroid/content/Context;DLjava/lang/String;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/appodeal/ads/inapp/InAppPurchase;Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/g1;->O:Lcom/appodeal/ads/i1;

    const-string v1, "purchase: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    sget-object v0, Lcom/appodeal/ads/q4;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 68
    new-instance v4, Lcom/appodeal/ads/q4$h;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, p0, v0}, Lcom/appodeal/ads/q4$h;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase;Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/BannerCallbacks;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->g:Lcom/appodeal/ads/i1;

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/appodeal/ads/t0;->a:Lcom/appodeal/ads/u0;

    .line 53
    iput-object p0, v0, Lcom/appodeal/ads/u0;->a:Lcom/appodeal/ads/BannerCallbacks;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/InterstitialCallbacks;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->e:Lcom/appodeal/ads/i1;

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object v0

    .line 56
    iput-object p0, v0, Lcom/appodeal/ads/q1;->a:Lcom/appodeal/ads/InterstitialCallbacks;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/MrecCallbacks;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->h:Lcom/appodeal/ads/i1;

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/appodeal/ads/h2;->a:Lcom/appodeal/ads/i2;

    .line 59
    iput-object p0, v0, Lcom/appodeal/ads/i2;->a:Lcom/appodeal/ads/MrecCallbacks;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/Native$MediaAssetType;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "requiredMediaAssetType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/g1;->v:Lcom/appodeal/ads/i1;

    const-string v1, "required native media assets type: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    sput-object p0, Lcom/appodeal/ads/Native;->c:Lcom/appodeal/ads/Native$MediaAssetType;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/Native$NativeAdType;)V
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lcom/appodeal/ads/g1;->j:Lcom/appodeal/ads/i1;

    const-string v0, "adType is null"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/g1;->j:Lcom/appodeal/ads/i1;

    const-string v1, "NativeAd type: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    sput-object p0, Lcom/appodeal/ads/Native;->b:Lcom/appodeal/ads/Native$NativeAdType;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/NativeCallbacks;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->i:Lcom/appodeal/ads/i1;

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    .line 61
    sput-object p0, Lcom/appodeal/ads/n2;->e:Lcom/appodeal/ads/NativeCallbacks;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/RewardedVideoCallbacks;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->f:Lcom/appodeal/ads/i1;

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/appodeal/ads/o4;->a:Lcom/appodeal/ads/p4;

    .line 64
    iput-object p0, v0, Lcom/appodeal/ads/p4;->a:Lcom/appodeal/ads/RewardedVideoCallbacks;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/UserSettings$Gender;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "gender"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/g1;->z:Lcom/appodeal/ads/i1;

    invoke-virtual {v0}, Lcom/appodeal/ads/i1;->a()V

    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/l5;->setGender(Lcom/appodeal/ads/UserSettings$Gender;)Lcom/appodeal/ads/UserSettings;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/segments/g;D)V
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "adType"

    move-object v8, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    sget-object v0, Lcom/appodeal/ads/q4;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 36
    new-instance v10, Lcom/appodeal/ads/q4$c;

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/appodeal/ads/q4$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/segments/g;DLcom/appodeal/ads/modules/common/internal/adtype/AdType;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p0, v0

    move-object p1, v3

    move-object p2, v4

    move-object p3, v10

    move p4, v1

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/q4;Landroid/content/Context;ILjava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/appodeal/ads/c1;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xfff

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/appodeal/ads/q4;->a(IZ)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/u;

    invoke-virtual {p2, p1}, Lcom/appodeal/ads/u;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 4
    invoke-virtual {p0}, Lcom/appodeal/ads/context/b;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {p0}, Lcom/appodeal/ads/q4;->a(Landroid/app/Activity;)V

    goto :goto_3

    :cond_2
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/s4;->a(Lcom/appodeal/ads/u;)I

    move-result v1

    and-int/2addr v1, p2

    if-lez v1, :cond_3

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/u;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    sget-boolean p0, Lcom/appodeal/ads/q4;->c:Z

    if-eqz p0, :cond_5

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/u;

    invoke-virtual {p1}, Lcom/appodeal/ads/u;->q()V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public static final a(Lcom/appodeal/ads/regulator/UserConsent;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "userConsent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/g1;->b:Lcom/appodeal/ads/i1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/appodeal/ads/regulator/UserConsent;->getZone()Lcom/appodeal/consent/Consent$Zone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appodeal/consent/Consent$Zone;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " consent is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/appodeal/ads/regulator/UserConsent;->getStatus()Lcom/appodeal/consent/Consent$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/appodeal/ads/x2;->a(Lcom/appodeal/ads/regulator/UserConsent;)V

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/utils/Log$LogLevel;)V
    .locals 2

    const-string v0, "logLevel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/appodeal/ads/r0;->d:Lcom/appodeal/ads/utils/Log$LogLevel;

    sget-object v0, Lcom/appodeal/ads/g1;->C:Lcom/appodeal/ads/i1;

    const-string v1, "log level: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Lcom/appodeal/consent/Consent;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->b:Lcom/appodeal/ads/i1;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/consent/Consent;->getStatus()Lcom/appodeal/consent/Consent$Status;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/appodeal/consent/Consent$Status;->name()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "consent is "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/appodeal/ads/x2;->a(Lcom/appodeal/consent/Consent;)V

    return-void
.end method

.method public static final a(Ljava/lang/Boolean;)V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->b:Lcom/appodeal/ads/i1;

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "consent is "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/appodeal/ads/x2;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xfff

    invoke-static {p0, v0}, Lcom/appodeal/ads/q4;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static final a(Ljava/lang/String;I)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "network"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/appodeal/ads/g1;->x:Lcom/appodeal/ads/i1;

    const-string p1, "network is blank"

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/q4;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/appodeal/ads/g1;->x:Lcom/appodeal/ads/i1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/appodeal/ads/n5;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/q4;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/u;

    sget-object v2, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {v1}, Lcom/appodeal/ads/s4;->a(Lcom/appodeal/ads/u;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int v2, p1, v3

    if-lez v2, :cond_2

    .line 24
    iget-boolean v2, v1, Lcom/appodeal/ads/u;->i:Z

    if-nez v2, :cond_2

    .line 25
    iget-object v1, v1, Lcom/appodeal/ads/u;->e:Lcom/appodeal/ads/i;

    .line 26
    invoke-virtual {v1, p0}, Lcom/appodeal/ads/i;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/appodeal/ads/g1;->D:Lcom/appodeal/ads/i1;

    const-string p1, "name is blank"

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/g1;->D:Lcom/appodeal/ads/i1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set custom filter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/appodeal/ads/segments/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sput-object p0, Lcom/appodeal/ads/q4;->g:Ljava/lang/String;

    sput-object p1, Lcom/appodeal/ads/q4;->h:Ljava/lang/String;

    sput-object p2, Lcom/appodeal/ads/q4;->i:Ljava/lang/String;

    const-string v0, ", pluginVersion: "

    const-string v1, "framework: "

    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", engineVersion: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/appodeal/ads/g1;->F:Lcom/appodeal/ads/i1;

    invoke-virtual {p1, p0}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "eventName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/appodeal/ads/g1;->N:Lcom/appodeal/ads/i1;

    const-string p1, "event name is blank"

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/g1;->N:Lcom/appodeal/ads/i1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    sget-object v0, Lcom/appodeal/ads/q4;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 34
    new-instance v4, Lcom/appodeal/ads/q4$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/appodeal/ads/q4$b;-><init>(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Z)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->G:Lcom/appodeal/ads/i1;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "muteVideosIfCallsMuted: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    sput-boolean p0, Lcom/appodeal/ads/r0;->e:Z

    return-void
.end method

.method public static final a(ILjava/lang/String;)Z
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "getAdController()"

    const-string v1, "placementName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v1, Lcom/appodeal/ads/q4;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object p0, Lcom/appodeal/ads/g1;->E:Lcom/appodeal/ads/i1;

    const-string p1, "Appodeal is not initialized"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    return v2

    :cond_0
    sget-object v1, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/NetworkStatus;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/appodeal/ads/g1;->E:Lcom/appodeal/ads/i1;

    const-string p1, "no Internet"

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/appodeal/ads/g1;->E:Lcom/appodeal/ads/i1;

    invoke-virtual {v1}, Lcom/appodeal/ads/i1;->a()V

    :try_start_0
    invoke-static {p1}, Lcom/appodeal/ads/segments/h;->a(Ljava/lang/String;)Lcom/appodeal/ads/segments/g;

    move-result-object p1

    sget-object v1, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit16 v1, p0, 0xc5c

    if-lez v1, :cond_2

    .line 7
    invoke-virtual {v3}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_7

    .line 8
    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit16 v3, p0, 0x100

    if-lez v3, :cond_3

    .line 9
    invoke-virtual {v1}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-nez v1, :cond_7

    .line 10
    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v3, p0, 0x1

    if-lez v3, :cond_4

    .line 11
    invoke-virtual {v1}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    if-nez v1, :cond_7

    .line 12
    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit16 v3, p0, 0x80

    if-lez v3, :cond_5

    .line 13
    invoke-virtual {v1}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    if-nez v1, :cond_7

    .line 14
    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p0, p0, 0x2

    if-lez p0, :cond_6

    .line 15
    invoke-virtual {v1}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/segments/g;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_6
    move p0, v2

    :goto_5
    if-eqz p0, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    return v2

    :catch_0
    move-exception p0

    .line 16
    invoke-static {p0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    return v2
.end method

.method public static final a(Landroid/app/Activity;ILjava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "placementName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/appodeal/ads/q4;->b(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p0

    sget-object p2, Lcom/appodeal/ads/g1;->l:Lcom/appodeal/ads/i1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/appodeal/ads/n5;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    return p0
.end method

.method public static a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/segments/g;)Z
    .locals 4

    if-eqz p0, :cond_1

    .line 17
    iget-boolean v0, p0, Lcom/appodeal/ads/r;->C:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->v:Z

    if-eqz v0, :cond_1

    .line 18
    :cond_0
    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 19
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 20
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/appodeal/ads/r;->n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget-wide v2, p0, Lcom/appodeal/ads/r;->t:D

    .line 23
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/appodeal/ads/segments/g;->a(Landroid/content/Context;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;D)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(I)D
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-eq p0, v0, :cond_d

    const/4 v3, 0x2

    if-eq p0, v3, :cond_a

    const/4 v4, 0x3

    if-eq p0, v4, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    const/16 v0, 0x8

    if-eq p0, v0, :cond_6

    const/16 v0, 0x10

    if-eq p0, v0, :cond_6

    const/16 v0, 0x40

    if-eq p0, v0, :cond_6

    const/16 v0, 0x80

    if-eq p0, v0, :cond_3

    const/16 v0, 0x100

    if-eq p0, v0, :cond_0

    const/16 v0, 0x400

    if-eq p0, v0, :cond_6

    const/16 v0, 0x800

    if-eq p0, v0, :cond_6

    return-wide v1

    :cond_0
    sget-object p0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean p0, v0, Lcom/appodeal/ads/r;->C:Z

    if-nez p0, :cond_2

    iget-boolean p0, v0, Lcom/appodeal/ads/r;->u:Z

    if-nez p0, :cond_1

    iget-boolean p0, v0, Lcom/appodeal/ads/r;->v:Z

    if-eqz p0, :cond_2

    .line 3
    :cond_1
    iget-wide v1, v0, Lcom/appodeal/ads/r;->t:D

    :cond_2
    return-wide v1

    .line 4
    :cond_3
    sget-object p0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 5
    iget-boolean p0, v0, Lcom/appodeal/ads/r;->C:Z

    if-nez p0, :cond_5

    iget-boolean p0, v0, Lcom/appodeal/ads/r;->u:Z

    if-nez p0, :cond_4

    iget-boolean p0, v0, Lcom/appodeal/ads/r;->v:Z

    if-eqz p0, :cond_5

    .line 6
    :cond_4
    iget-wide v1, v0, Lcom/appodeal/ads/r;->t:D

    :cond_5
    return-wide v1

    .line 7
    :cond_6
    sget-object p0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_8

    .line 8
    iget-boolean p0, v0, Lcom/appodeal/ads/r;->C:Z

    if-nez p0, :cond_8

    iget-boolean p0, v0, Lcom/appodeal/ads/r;->u:Z

    if-nez p0, :cond_7

    iget-boolean p0, v0, Lcom/appodeal/ads/r;->v:Z

    if-eqz p0, :cond_8

    .line 9
    :cond_7
    iget-wide v1, v0, Lcom/appodeal/ads/r;->t:D

    :cond_8
    return-wide v1

    .line 10
    :cond_9
    invoke-static {v0}, Lcom/appodeal/ads/q4;->b(I)D

    move-result-wide v0

    invoke-static {v3}, Lcom/appodeal/ads/q4;->b(I)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    :cond_a
    sget-object p0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_c

    .line 11
    iget-boolean p0, v0, Lcom/appodeal/ads/r;->C:Z

    if-nez p0, :cond_c

    iget-boolean p0, v0, Lcom/appodeal/ads/r;->u:Z

    if-nez p0, :cond_b

    iget-boolean p0, v0, Lcom/appodeal/ads/r;->v:Z

    if-eqz p0, :cond_c

    .line 12
    :cond_b
    iget-wide v1, v0, Lcom/appodeal/ads/r;->t:D

    :cond_c
    return-wide v1

    .line 13
    :cond_d
    sget-object p0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_f

    .line 14
    iget-boolean p0, v0, Lcom/appodeal/ads/r;->C:Z

    if-nez p0, :cond_f

    iget-boolean p0, v0, Lcom/appodeal/ads/r;->u:Z

    if-nez p0, :cond_e

    iget-boolean p0, v0, Lcom/appodeal/ads/r;->v:Z

    if-eqz p0, :cond_f

    .line 15
    :cond_e
    iget-wide v1, v0, Lcom/appodeal/ads/r;->t:D

    :cond_f
    return-wide v1
.end method

.method public static final b(Landroid/content/Context;)Lcom/appodeal/ads/MrecView;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v1, "Get"

    const-string v2, "MrecView"

    const-string v3, "SDK-Public"

    invoke-static {v3, v1, v2, v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    new-instance v0, Lcom/appodeal/ads/MrecView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/MrecView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/appodeal/ads/h2;->c()Lcom/appodeal/ads/h2$a;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/appodeal/ads/x5;->a(I)V

    invoke-static {}, Lcom/appodeal/ads/h2;->c()Lcom/appodeal/ads/h2$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/x5;->a(Landroid/widget/FrameLayout;)V

    return-object v0
.end method

.method public static final b(Lcom/appodeal/ads/q4;)Lcom/appodeal/ads/modules/common/internal/domain/ParsePriceUseCase;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object p0, Lcom/appodeal/ads/q4;->n:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/modules/common/internal/domain/ParsePriceUseCase;

    return-object p0
.end method

.method public static final b(Ljava/lang/String;)Lcom/appodeal/ads/rewarded/Reward;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "placementName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/appodeal/ads/segments/h;->a(Ljava/lang/String;)Lcom/appodeal/ads/segments/g;

    move-result-object p0

    new-instance v0, Lcom/appodeal/ads/rewarded/Reward;

    invoke-virtual {p0}, Lcom/appodeal/ads/segments/g;->c()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/appodeal/ads/segments/g;->d()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/appodeal/ads/rewarded/Reward;-><init>(DLjava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic b()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/q4;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final b(IZ)V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->o:Lcom/appodeal/ads/i1;

    .line 18
    const-string v1, "triggerOnLoadedOnPrecache for "

    invoke-static {v1}, Lcom/appodeal/ads/h0;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/appodeal/ads/n5;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    and-int/lit8 v0, p0, 0x3

    if-lez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v0

    .line 20
    iput-boolean p1, v0, Lcom/appodeal/ads/u;->t:Z

    .line 21
    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v0

    .line 22
    iput-boolean p1, v0, Lcom/appodeal/ads/u;->t:Z

    :cond_0
    and-int/lit16 v0, p0, 0x80

    if-lez v0, :cond_1

    .line 23
    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v0

    .line 24
    iput-boolean p1, v0, Lcom/appodeal/ads/u;->t:Z

    :cond_1
    and-int/lit16 v0, p0, 0xc5c

    if-lez v0, :cond_2

    .line 25
    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v0

    .line 26
    iput-boolean p1, v0, Lcom/appodeal/ads/u;->t:Z

    :cond_2
    and-int/lit16 p0, p0, 0x100

    if-lez p0, :cond_3

    .line 27
    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object p0

    .line 28
    iput-boolean p1, p0, Lcom/appodeal/ads/u;->t:Z

    :cond_3
    return-void
.end method

.method public static final b(Landroid/app/Activity;I)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/appodeal/ads/g1;->m:Lcom/appodeal/ads/i1;

    const-string p1, "activity is null"

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/q4;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/appodeal/ads/g1;->m:Lcom/appodeal/ads/i1;

    invoke-static {p1}, Lcom/appodeal/ads/n5;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    sget-object v0, Lcom/appodeal/ads/context/g;->b:Lcom/appodeal/ads/context/g;

    .line 17
    invoke-virtual {v0, p0}, Lcom/appodeal/ads/context/g;->setActivity(Landroid/app/Activity;)V

    and-int/lit16 v0, p1, 0xc5c

    if-lez v0, :cond_2

    invoke-static {p0}, Lcom/appodeal/ads/t0;->a(Landroid/app/Activity;)V

    :cond_2
    and-int/lit16 p1, p1, 0x100

    if-lez p1, :cond_3

    invoke-static {p0}, Lcom/appodeal/ads/h2;->a(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/appodeal/ads/g1;->L:Lcom/appodeal/ads/i1;

    const-string p1, "key is blank"

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/g1;->L:Lcom/appodeal/ads/i1;

    invoke-virtual {v0}, Lcom/appodeal/ads/i1;->a()V

    sget-object v0, Lcom/appodeal/ads/ExtraData;->INSTANCE:Lcom/appodeal/ads/ExtraData;

    invoke-virtual {v0, p0, p1}, Lcom/appodeal/ads/ExtraData;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static final b(Z)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->r:Lcom/appodeal/ads/i1;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "728x90 Banners: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    sput-boolean p0, Lcom/appodeal/ads/t0;->c:Z

    return-void
.end method

.method public static b(Landroid/app/Activity;ILjava/lang/String;)Z
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/exception_handler/a;

    const-string v1, "Unable to show an ad: activity = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/exception_handler/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    return v3

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/q4;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    .line 32
    :cond_1
    sget-object v4, Lcom/appodeal/ads/context/g;->b:Lcom/appodeal/ads/context/g;

    .line 33
    invoke-virtual {v4, v0}, Lcom/appodeal/ads/context/g;->setActivity(Landroid/app/Activity;)V

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/appodeal/ads/segments/h;->a(Ljava/lang/String;)Lcom/appodeal/ads/segments/g;

    move-result-object v4

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3a

    const/4 v6, 0x2

    if-eq v1, v6, :cond_38

    const/4 v7, 0x4

    if-eq v1, v7, :cond_36

    const/16 v8, 0x8

    if-eq v1, v8, :cond_34

    const/16 v9, 0x10

    if-eq v1, v9, :cond_32

    const/16 v10, 0x40

    if-eq v1, v10, :cond_30

    const/16 v11, 0x80

    if-eq v1, v11, :cond_2e

    const/16 v12, 0x100

    if-eq v1, v12, :cond_2c

    const/16 v13, 0x400

    if-eq v1, v13, :cond_2a

    const/16 v14, 0x800

    if-eq v1, v14, :cond_28

    new-instance v15, Ljava/util/TreeMap;

    invoke-direct {v15}, Ljava/util/TreeMap;-><init>()V

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/appodeal/ads/w0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v6, v1, 0xc5c

    const-string v17, "Already checked at [canShow]"

    if-lez v6, :cond_8

    :try_start_1
    invoke-static {v3, v4}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/segments/g;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v3, :cond_7

    and-int/lit8 v6, v1, 0x4

    if-lez v6, :cond_2

    invoke-virtual {v3, v2}, Lcom/appodeal/ads/r;->a(Ljava/lang/String;)Lcom/appodeal/ads/l;

    move-result-object v6

    check-cast v6, Lcom/appodeal/ads/v0;

    invoke-virtual {v6}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v6, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    and-int/lit8 v6, v1, 0x8

    if-lez v6, :cond_3

    invoke-virtual {v3, v2}, Lcom/appodeal/ads/r;->a(Ljava/lang/String;)Lcom/appodeal/ads/l;

    move-result-object v6

    check-cast v6, Lcom/appodeal/ads/v0;

    invoke-virtual {v6}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v6, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    and-int/lit8 v6, v1, 0x10

    if-lez v6, :cond_4

    invoke-virtual {v3, v2}, Lcom/appodeal/ads/r;->a(Ljava/lang/String;)Lcom/appodeal/ads/l;

    move-result-object v6

    check-cast v6, Lcom/appodeal/ads/v0;

    invoke-virtual {v6}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v6, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    and-int/lit16 v6, v1, 0x400

    if-lez v6, :cond_5

    invoke-virtual {v3, v2}, Lcom/appodeal/ads/r;->a(Ljava/lang/String;)Lcom/appodeal/ads/l;

    move-result-object v6

    check-cast v6, Lcom/appodeal/ads/v0;

    invoke-virtual {v6}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v6, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    and-int/lit16 v6, v1, 0x800

    if-lez v6, :cond_6

    invoke-virtual {v3, v2}, Lcom/appodeal/ads/r;->a(Ljava/lang/String;)Lcom/appodeal/ads/l;

    move-result-object v6

    check-cast v6, Lcom/appodeal/ads/v0;

    invoke-virtual {v6}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v6, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    and-int/lit8 v6, v1, 0x40

    if-lez v6, :cond_8

    invoke-virtual {v3, v2}, Lcom/appodeal/ads/r;->a(Ljava/lang/String;)Lcom/appodeal/ads/l;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/v0;

    invoke-virtual {v3}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v3, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_0
    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/k2;

    and-int/lit16 v6, v1, 0x100

    if-lez v6, :cond_a

    invoke-static {v3, v4}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/segments/g;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Lcom/appodeal/ads/r;->a(Ljava/lang/String;)Lcom/appodeal/ads/l;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/j2;

    invoke-virtual {v3}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v3, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_1
    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/r1;

    and-int/lit8 v6, v1, 0x1

    if-lez v6, :cond_c

    invoke-static {v3, v4}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/segments/g;)Z

    move-result v11

    if-eqz v11, :cond_c

    if-eqz v3, :cond_b

    invoke-virtual {v3, v2}, Lcom/appodeal/ads/r;->a(Ljava/lang/String;)Lcom/appodeal/ads/l;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/p1;

    invoke-virtual {v3}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v3, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_2
    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/n4;

    and-int/lit16 v11, v1, 0x80

    if-lez v11, :cond_e

    invoke-static {v3, v4}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/segments/g;)Z

    move-result v11

    if-eqz v11, :cond_e

    if-eqz v3, :cond_d

    invoke-virtual {v3, v2}, Lcom/appodeal/ads/r;->a(Ljava/lang/String;)Lcom/appodeal/ads/l;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/m4;

    invoke-virtual {v3}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v11, 0x80

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v3, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_3
    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/q5;

    const/4 v11, 0x2

    and-int/2addr v1, v11

    if-lez v1, :cond_10

    invoke-static {v3, v4}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v3, :cond_f

    invoke-virtual {v3, v2}, Lcom/appodeal/ads/r;->a(Ljava/lang/String;)Lcom/appodeal/ads/l;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/o5;

    invoke-virtual {v1}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v1, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_4
    invoke-virtual {v15}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    if-lez v6, :cond_12

    invoke-static {v4}, Lcom/appodeal/ads/segments/h;->a(Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/appodeal/ads/segments/h;->c()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;)V

    :cond_11
    new-instance v1, Lcom/appodeal/ads/q;

    invoke-direct {v1, v4}, Lcom/appodeal/ads/q;-><init>(Lcom/appodeal/ads/segments/g;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/o1;->a(Landroid/app/Activity;Lcom/appodeal/ads/q;)Z

    move-result v3

    goto :goto_5

    :cond_12
    const/4 v3, 0x0

    :goto_5
    return v3

    :cond_13
    invoke-virtual {v15}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_6

    :cond_14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_6
    if-nez v1, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_16

    new-instance v1, Lcom/appodeal/ads/q;

    invoke-direct {v1, v4}, Lcom/appodeal/ads/q;-><init>(Lcom/appodeal/ads/segments/g;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/o1;->a(Landroid/app/Activity;Lcom/appodeal/ads/q;)Z

    move-result v0

    return v0

    :cond_16
    :goto_7
    if-nez v1, :cond_17

    goto :goto_8

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    new-instance v1, Lcom/appodeal/ads/q;

    invoke-direct {v1, v4}, Lcom/appodeal/ads/q;-><init>(Lcom/appodeal/ads/segments/g;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/w2;->a(Landroid/app/Activity;Lcom/appodeal/ads/q;)Z

    move-result v0

    return v0

    :cond_18
    :goto_8
    if-nez v1, :cond_19

    goto :goto_9

    :cond_19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1a

    new-instance v1, Lcom/appodeal/ads/q;

    invoke-direct {v1, v4}, Lcom/appodeal/ads/q;-><init>(Lcom/appodeal/ads/segments/g;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/o4;->a(Landroid/app/Activity;Lcom/appodeal/ads/q;)Z

    move-result v0

    return v0

    :cond_1a
    :goto_9
    if-nez v1, :cond_1b

    goto :goto_a

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_1c

    new-instance v1, Lcom/appodeal/ads/y5;

    invoke-static {}, Lcom/appodeal/ads/t0;->c()Lcom/appodeal/ads/t0$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/appodeal/ads/x5;->b(Landroid/app/Activity;)Lcom/appodeal/ads/a;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/t0;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z

    move-result v0

    return v0

    :cond_1c
    :goto_a
    if-nez v1, :cond_1d

    goto :goto_b

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v8, :cond_1e

    new-instance v1, Lcom/appodeal/ads/y5;

    sget-object v2, Lcom/appodeal/ads/a;->d:Lcom/appodeal/ads/a;

    invoke-direct {v1, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/t0;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z

    move-result v0

    return v0

    :cond_1e
    :goto_b
    if-nez v1, :cond_1f

    goto :goto_c

    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v9, :cond_20

    new-instance v1, Lcom/appodeal/ads/y5;

    sget-object v2, Lcom/appodeal/ads/a;->e:Lcom/appodeal/ads/a;

    invoke-direct {v1, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/t0;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z

    move-result v0

    return v0

    :cond_20
    :goto_c
    if-nez v1, :cond_21

    goto :goto_d

    :cond_21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v13, :cond_22

    new-instance v1, Lcom/appodeal/ads/y5;

    sget-object v2, Lcom/appodeal/ads/a;->f:Lcom/appodeal/ads/a$a;

    invoke-direct {v1, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/t0;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z

    move-result v0

    return v0

    :cond_22
    :goto_d
    if-nez v1, :cond_23

    goto :goto_e

    :cond_23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v14, :cond_24

    new-instance v1, Lcom/appodeal/ads/y5;

    sget-object v2, Lcom/appodeal/ads/a;->g:Lcom/appodeal/ads/a$b;

    invoke-direct {v1, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/t0;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z

    move-result v0

    return v0

    :cond_24
    :goto_e
    if-nez v1, :cond_25

    goto :goto_f

    :cond_25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v10, :cond_26

    new-instance v1, Lcom/appodeal/ads/y5;

    sget-object v2, Lcom/appodeal/ads/a;->h:Lcom/appodeal/ads/a;

    invoke-direct {v1, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/t0;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z

    move-result v0

    return v0

    :cond_26
    :goto_f
    if-nez v1, :cond_27

    goto/16 :goto_10

    :cond_27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_3c

    new-instance v1, Lcom/appodeal/ads/y5;

    sget-object v2, Lcom/appodeal/ads/a;->h:Lcom/appodeal/ads/a;

    invoke-direct {v1, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/h2;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z

    move-result v0

    return v0

    :cond_28
    invoke-static {v4}, Lcom/appodeal/ads/segments/h;->a(Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {}, Lcom/appodeal/ads/segments/h;->c()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;)V

    :cond_29
    new-instance v1, Lcom/appodeal/ads/y5;

    sget-object v2, Lcom/appodeal/ads/a;->g:Lcom/appodeal/ads/a$b;

    invoke-direct {v1, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/t0;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z

    move-result v0

    return v0

    :cond_2a
    invoke-static {v4}, Lcom/appodeal/ads/segments/h;->a(Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/appodeal/ads/segments/h;->c()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;)V

    :cond_2b
    new-instance v1, Lcom/appodeal/ads/y5;

    sget-object v2, Lcom/appodeal/ads/a;->f:Lcom/appodeal/ads/a$a;

    invoke-direct {v1, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/t0;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z

    move-result v0

    return v0

    :cond_2c
    invoke-static {v4}, Lcom/appodeal/ads/segments/h;->a(Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, Lcom/appodeal/ads/segments/h;->c()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;)V

    :cond_2d
    new-instance v1, Lcom/appodeal/ads/y5;

    sget-object v2, Lcom/appodeal/ads/a;->h:Lcom/appodeal/ads/a;

    invoke-direct {v1, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/h2;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z

    move-result v0

    return v0

    :cond_2e
    invoke-static {v4}, Lcom/appodeal/ads/segments/h;->a(Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/appodeal/ads/segments/h;->c()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;)V

    :cond_2f
    new-instance v1, Lcom/appodeal/ads/q;

    invoke-direct {v1, v4}, Lcom/appodeal/ads/q;-><init>(Lcom/appodeal/ads/segments/g;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/o4;->a(Landroid/app/Activity;Lcom/appodeal/ads/q;)Z

    move-result v0

    return v0

    :cond_30
    invoke-static {v4}, Lcom/appodeal/ads/segments/h;->a(Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/appodeal/ads/segments/h;->c()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;)V

    :cond_31
    new-instance v1, Lcom/appodeal/ads/y5;

    sget-object v2, Lcom/appodeal/ads/a;->h:Lcom/appodeal/ads/a;

    invoke-direct {v1, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/t0;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z

    move-result v0

    return v0

    :cond_32
    invoke-static {v4}, Lcom/appodeal/ads/segments/h;->a(Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {}, Lcom/appodeal/ads/segments/h;->c()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;)V

    :cond_33
    new-instance v1, Lcom/appodeal/ads/y5;

    sget-object v2, Lcom/appodeal/ads/a;->e:Lcom/appodeal/ads/a;

    invoke-direct {v1, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/t0;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z

    move-result v0

    return v0

    :cond_34
    invoke-static {v4}, Lcom/appodeal/ads/segments/h;->a(Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {}, Lcom/appodeal/ads/segments/h;->c()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;)V

    :cond_35
    new-instance v1, Lcom/appodeal/ads/y5;

    sget-object v2, Lcom/appodeal/ads/a;->d:Lcom/appodeal/ads/a;

    invoke-direct {v1, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/t0;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z

    move-result v0

    return v0

    :cond_36
    invoke-static {v4}, Lcom/appodeal/ads/segments/h;->a(Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {}, Lcom/appodeal/ads/segments/h;->c()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;)V

    :cond_37
    new-instance v1, Lcom/appodeal/ads/y5;

    invoke-static {}, Lcom/appodeal/ads/t0;->c()Lcom/appodeal/ads/t0$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/appodeal/ads/x5;->b(Landroid/app/Activity;)Lcom/appodeal/ads/a;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/t0;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z

    move-result v0

    return v0

    :cond_38
    invoke-static {v4}, Lcom/appodeal/ads/segments/h;->a(Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {}, Lcom/appodeal/ads/segments/h;->c()Z

    move-result v1

    if-nez v1, :cond_39

    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;)V

    :cond_39
    new-instance v1, Lcom/appodeal/ads/q;

    invoke-direct {v1, v4}, Lcom/appodeal/ads/q;-><init>(Lcom/appodeal/ads/segments/g;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/w2;->a(Landroid/app/Activity;Lcom/appodeal/ads/q;)Z

    move-result v0

    return v0

    :cond_3a
    invoke-static {v4}, Lcom/appodeal/ads/segments/h;->a(Lcom/appodeal/ads/segments/g;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {}, Lcom/appodeal/ads/segments/h;->c()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;)V

    :cond_3b
    new-instance v1, Lcom/appodeal/ads/q;

    invoke-direct {v1, v4}, Lcom/appodeal/ads/q;-><init>(Lcom/appodeal/ads/segments/g;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/o1;->a(Landroid/app/Activity;Lcom/appodeal/ads/q;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_3c
    :goto_10
    const/4 v1, 0x0

    return v1
.end method

.method public static final c(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "placementName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/appodeal/ads/segments/h;->a(Ljava/lang/String;)Lcom/appodeal/ads/segments/g;

    move-result-object p0

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/appodeal/ads/segments/g;->c()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appodeal/ads/segments/g;->d()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final c(Lcom/appodeal/ads/q4;)Lcom/appodeal/ads/services/c;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {}, Lcom/appodeal/ads/services/g;->b()Lcom/appodeal/ads/services/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/q4;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final c(Z)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->s:Lcom/appodeal/ads/i1;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Banner animation: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/t0;->c()Lcom/appodeal/ads/t0$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/x5;->a(Z)V

    return-void
.end method

.method public static final c(I)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3

    const/16 v0, 0x80

    if-eq p0, v0, :cond_2

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200

    if-eq p0, v0, :cond_0

    const/16 v0, 0x400

    if-eq p0, v0, :cond_3

    const/16 v0, 0x800

    if-eq p0, v0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object p0

    .line 2
    :goto_0
    iget-boolean p0, p0, Lcom/appodeal/ads/u;->k:Z

    goto :goto_1

    .line 3
    :cond_4
    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object p0

    .line 4
    iget-boolean p0, p0, Lcom/appodeal/ads/q1;->c:Z

    :goto_1
    return p0
.end method

.method public static d()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/q4;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "userId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/g1;->y:Lcom/appodeal/ads/i1;

    invoke-virtual {v0}, Lcom/appodeal/ads/i1;->a()V

    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/l5;->setUserId(Ljava/lang/String;)Lcom/appodeal/ads/UserSettings;

    return-void
.end method

.method public static final d(Z)V
    .locals 3

    sget-object v0, Lcom/appodeal/ads/g1;->M:Lcom/appodeal/ads/i1;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "value: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v0, Lcom/appodeal/ads/context/g;->b:Lcom/appodeal/ads/context/g;

    .line 7
    invoke-virtual {v0, p0}, Lcom/appodeal/ads/context/g;->setAutomaticActivityObserving(Z)V

    sput-boolean p0, Lcom/appodeal/ads/r0;->l:Z

    return-void
.end method

.method public static final d(I)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v1, 0x2

    if-eq p0, v1, :cond_6

    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3

    const/16 v0, 0x80

    if-eq p0, v0, :cond_2

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200

    if-eq p0, v0, :cond_0

    const/16 v0, 0x400

    if-eq p0, v0, :cond_3

    const/16 v0, 0x800

    if-eq p0, v0, :cond_3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object p0

    .line 1
    iget-boolean p0, p0, Lcom/appodeal/ads/u;->i:Z

    if-eqz p0, :cond_5

    .line 2
    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object p0

    .line 3
    iget-boolean p0, p0, Lcom/appodeal/ads/u;->i:Z

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 4
    :cond_6
    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object p0

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object p0

    .line 5
    :goto_1
    iget-boolean v0, p0, Lcom/appodeal/ads/u;->i:Z

    :goto_2
    return v0
.end method

.method public static final e()Lcom/appodeal/ads/revenue/AdRevenueCallbacks;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/q4;->f:Lcom/appodeal/ads/revenue/AdRevenueCallbacks;

    return-object v0
.end method

.method public static final e(Z)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->q:Lcom/appodeal/ads/i1;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "smart Banners: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    sput-boolean p0, Lcom/appodeal/ads/t0;->b:Z

    return-void
.end method

.method public static final e(I)Z
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/appodeal/ads/q4;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p0, 0x3

    const/4 v2, 0x1

    const-string v3, "getAdController()"

    if-lez v0, :cond_3

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v4}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v4, v0, Lcom/appodeal/ads/r;->C:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lcom/appodeal/ads/r;->u:Z

    if-nez v4, :cond_2

    iget-boolean v0, v0, Lcom/appodeal/ads/r;->v:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    iget-boolean v4, v0, Lcom/appodeal/ads/r;->C:Z

    if-nez v4, :cond_3

    iget-boolean v4, v0, Lcom/appodeal/ads/r;->u:Z

    if-nez v4, :cond_2

    iget-boolean v0, v0, Lcom/appodeal/ads/r;->v:Z

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_3
    and-int/lit16 v0, p0, 0x80

    if-lez v0, :cond_5

    .line 6
    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {v4}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 8
    iget-boolean v4, v0, Lcom/appodeal/ads/r;->C:Z

    if-nez v4, :cond_5

    iget-boolean v4, v0, Lcom/appodeal/ads/r;->u:Z

    if-nez v4, :cond_4

    iget-boolean v0, v0, Lcom/appodeal/ads/r;->v:Z

    if-eqz v0, :cond_5

    :cond_4
    return v2

    :cond_5
    and-int/lit16 v0, p0, 0xc5c

    if-lez v0, :cond_7

    .line 9
    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {v4}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11
    iget-boolean v4, v0, Lcom/appodeal/ads/r;->C:Z

    if-nez v4, :cond_7

    iget-boolean v4, v0, Lcom/appodeal/ads/r;->u:Z

    if-nez v4, :cond_6

    iget-boolean v0, v0, Lcom/appodeal/ads/r;->v:Z

    if-eqz v0, :cond_7

    :cond_6
    return v2

    :cond_7
    and-int/lit16 v0, p0, 0x100

    if-lez v0, :cond_9

    .line 12
    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {v4}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 14
    iget-boolean v3, v0, Lcom/appodeal/ads/r;->C:Z

    if-nez v3, :cond_9

    iget-boolean v3, v0, Lcom/appodeal/ads/r;->u:Z

    if-nez v3, :cond_8

    iget-boolean v0, v0, Lcom/appodeal/ads/r;->v:Z

    if-eqz v0, :cond_9

    :cond_8
    return v2

    :cond_9
    and-int/lit16 p0, p0, 0x200

    if-lez p0, :cond_a

    .line 15
    invoke-static {}, Lcom/appodeal/ads/Native;->c()Lcom/appodeal/ads/n2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appodeal/ads/n2;->b()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_a

    return v2

    :goto_1
    invoke-static {p0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_a
    return v1
.end method

.method public static final f()Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/Constants;->BUILD_DATE:Ljava/util/Date;

    return-object v0
.end method

.method public static final f(Z)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->B:Lcom/appodeal/ads/i1;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "testing: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    sput-boolean p0, Lcom/appodeal/ads/r0;->b:Z

    return-void
.end method

.method public static final f(I)Z
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/appodeal/ads/q4;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    const/4 v2, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const/16 v0, 0x400

    if-eq p0, v0, :cond_3

    const/16 v0, 0x800

    if-eq p0, v0, :cond_3

    goto/16 :goto_3

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/k2;

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/r;->v()Z

    move-result p0

    if-ne p0, v2, :cond_b

    return v2

    :cond_3
    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/w0;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/r;->v()Z

    move-result p0

    if-ne p0, v2, :cond_b

    return v2

    :cond_5
    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/r1;

    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/q5;

    if-eqz p0, :cond_7

    if-eqz v0, :cond_7

    .line 1
    iget-wide v2, p0, Lcom/appodeal/ads/r;->t:D

    iget-wide v4, v0, Lcom/appodeal/ads/r;->t:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_6

    .line 2
    invoke-virtual {p0}, Lcom/appodeal/ads/r;->v()Z

    move-result p0

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/appodeal/ads/r;->v()Z

    move-result p0

    :goto_0
    return p0

    :cond_7
    if-nez v0, :cond_9

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/appodeal/ads/r;->v()Z

    move-result v3

    if-ne v3, v2, :cond_9

    goto :goto_2

    :cond_9
    :goto_1
    if-nez p0, :cond_b

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/appodeal/ads/r;->v()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v2, :cond_b

    :goto_2
    return v2

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    return v1
.end method

.method public static final g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/q4;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static final g(I)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->p:Lcom/appodeal/ads/i1;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Banner ViewId: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/t0;->c()Lcom/appodeal/ads/t0$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/x5;->a(I)V

    invoke-static {}, Lcom/appodeal/ads/t0;->c()Lcom/appodeal/ads/t0$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/x5;->a(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public static final h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/q4;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static final h(I)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/g1;->u:Lcom/appodeal/ads/i1;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Mrec ViewId: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i1;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/h2;->c()Lcom/appodeal/ads/h2$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/x5;->a(I)V

    invoke-static {}, Lcom/appodeal/ads/h2;->c()Lcom/appodeal/ads/h2$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/x5;->a(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public static final i()Lcom/appodeal/ads/utils/Log$LogLevel;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/r0;->d:Lcom/appodeal/ads/utils/Log$LogLevel;

    return-object v0
.end method

.method public static final j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/q4;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static final k()Lcom/appodeal/ads/n0;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/q4;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/n0;

    return-object v0
.end method

.method public static final l()J
    .locals 2

    invoke-static {}, Lcom/appodeal/ads/segments/n;->c()Lcom/appodeal/ads/segments/k;

    move-result-object v0

    .line 1
    iget-wide v0, v0, Lcom/appodeal/ads/segments/k;->a:J

    return-wide v0
.end method

.method public static final m()Lcom/appodeal/ads/utils/x;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/q4;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/utils/x;

    return-object v0
.end method

.method public static final n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/Constants;->SDK_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static final o()Z
    .locals 2

    invoke-static {}, Lcom/appodeal/ads/f1;->j()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static p()Z
    .locals 1

    sget-object v0, Lcom/appodeal/ads/c;->b:Lcom/appodeal/ads/c;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/c;->a:Lcom/appodeal/ads/d;

    .line 2
    iget-object v0, v0, Lcom/appodeal/ads/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
