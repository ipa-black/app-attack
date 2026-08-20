.class public final Lcom/appodeal/ads/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/appodeal/ads/k0;

.field public static final b:Lkotlin/Lazy;

.field public static final c:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/k0;

    invoke-direct {v0}, Lcom/appodeal/ads/k0;-><init>()V

    sput-object v0, Lcom/appodeal/ads/k0;->a:Lcom/appodeal/ads/k0;

    sget-object v0, Lcom/appodeal/ads/k0$j;->a:Lcom/appodeal/ads/k0$j;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/k0;->b:Lkotlin/Lazy;

    sget-object v0, Lcom/appodeal/ads/k0$b;->a:Lcom/appodeal/ads/k0$b;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/k0;->c:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 1

    .line 1
    sget-object v0, Lcom/appodeal/ads/k0;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    return-object v0
.end method

.method public static final a(Landroid/content/Context;DLjava/lang/String;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/appodeal/ads/s1$d;

    invoke-direct {v0, p1, p2, p3}, Lcom/appodeal/ads/s1$d;-><init>(DLjava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/k0;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/appodeal/ads/k0$f;

    const/4 p1, 0x0

    invoke-direct {v4, p0, v0, p1}, Lcom/appodeal/ads/k0$f;-><init>(Landroid/content/Context;Lcom/appodeal/ads/s1$d;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lcom/appodeal/ads/s;Lcom/appodeal/ads/u$e;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appodeal/ads/u<",
            "***>;",
            "Lcom/appodeal/ads/r<",
            "*>;",
            "Lcom/appodeal/ads/s<",
            "*>;",
            "Lcom/appodeal/ads/u<",
            "***>.e;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTypeController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/k0;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/appodeal/ads/k0$e;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p0

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/appodeal/ads/k0$e;-><init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/s;Lcom/appodeal/ads/u;Landroid/content/Context;Lcom/appodeal/ads/u$e;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Integer;Ljava/lang/Double;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/r<",
            "*>;",
            "Lcom/appodeal/ads/l<",
            "****>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "adRequest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/appodeal/ads/s1$a$b;

    invoke-virtual {p1}, Lcom/appodeal/ads/l;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v1, "adObject.id"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide v4

    move-object v1, v0

    move-object v2, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/appodeal/ads/s1$a$b;-><init>(Lcom/appodeal/ads/r;Ljava/lang/String;DLjava/lang/Integer;Ljava/lang/Double;)V

    new-instance p0, Lcom/appodeal/ads/y1;

    invoke-direct {p0}, Lcom/appodeal/ads/y1;-><init>()V

    new-instance p1, Lcom/appodeal/ads/x1;

    invoke-direct {p1}, Lcom/appodeal/ads/x1;-><init>()V

    invoke-static {}, Lcom/appodeal/ads/k0;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/appodeal/ads/k0$d;

    const/4 p2, 0x0

    invoke-direct {v4, v0, p0, p1, p2}, Lcom/appodeal/ads/k0$d;-><init>(Lcom/appodeal/ads/s1$a$b;Lcom/appodeal/ads/y1;Lcom/appodeal/ads/x1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Integer;Ljava/lang/Double;Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/r<",
            "*>;",
            "Lcom/appodeal/ads/l<",
            "****>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            "Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "adRequest"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adObject"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/appodeal/ads/s1$a$a;

    invoke-virtual {p1}, Lcom/appodeal/ads/l;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "adObject.id"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide v4

    move-object v1, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/appodeal/ads/s1$a$a;-><init>(Lcom/appodeal/ads/r;Ljava/lang/String;DLjava/lang/Integer;Ljava/lang/Double;)V

    new-instance v4, Lcom/appodeal/ads/y1;

    invoke-direct {v4}, Lcom/appodeal/ads/y1;-><init>()V

    new-instance v5, Lcom/appodeal/ads/x1;

    invoke-direct {v5}, Lcom/appodeal/ads/x1;-><init>()V

    new-instance v3, Lcom/appodeal/ads/u1;

    move-object/from16 v1, p4

    invoke-direct {v3, v1}, Lcom/appodeal/ads/u1;-><init>(Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V

    invoke-static {}, Lcom/appodeal/ads/k0;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    new-instance v9, Lcom/appodeal/ads/k0$a;

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/appodeal/ads/k0$a;-><init>(Lcom/appodeal/ads/s1$a$a;Lcom/appodeal/ads/u1;Lcom/appodeal/ads/y1;Lcom/appodeal/ads/x1;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    move-object v6, v7

    move-object v7, v0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AdObjectType:",
            "Lcom/appodeal/ads/l<",
            "****>;AdRequestType:",
            "Lcom/appodeal/ads/r<",
            "TAdObjectType;>;>(",
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;TAdRequestType;TAdObjectType;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    const-string v0, "adController"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/services/g;->b()Lcom/appodeal/ads/services/c;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    invoke-virtual {v1}, Lcom/appodeal/ads/context/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/appodeal/ads/j4;->a:Lcom/appodeal/ads/j4;

    const-string v3, "instance"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/appodeal/ads/y2$a;

    invoke-interface {v0}, Lcom/appodeal/ads/services/c;->getServicesData()Ljava/util/ArrayList;

    move-result-object v5

    move-object v0, v8

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/y2$a;-><init>(Landroid/content/Context;Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/util/List;)V

    invoke-static {}, Lcom/appodeal/ads/k0;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v9

    new-instance v12, Lcom/appodeal/ads/k0$m;

    const/4 v0, 0x0

    invoke-direct {v12, v8, p0, v7, v0}, Lcom/appodeal/ads/k0$m;-><init>(Lcom/appodeal/ads/y2$a;Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lkotlin/coroutines/Continuation;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "packageName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/k0;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/appodeal/ads/k0$i;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/appodeal/ads/k0$i;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static b()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 1
    sget-object v0, Lcom/appodeal/ads/k0;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public static final b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Integer;Ljava/lang/Double;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/r<",
            "*>;",
            "Lcom/appodeal/ads/l<",
            "****>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "adRequest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/appodeal/ads/s1$a$c;

    invoke-virtual {p1}, Lcom/appodeal/ads/l;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v1, "adObject.id"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide v4

    move-object v1, v0

    move-object v2, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/appodeal/ads/s1$a$c;-><init>(Lcom/appodeal/ads/r;Ljava/lang/String;DLjava/lang/Integer;Ljava/lang/Double;)V

    new-instance p0, Lcom/appodeal/ads/y1;

    invoke-direct {p0}, Lcom/appodeal/ads/y1;-><init>()V

    new-instance p1, Lcom/appodeal/ads/x1;

    invoke-direct {p1}, Lcom/appodeal/ads/x1;-><init>()V

    invoke-static {}, Lcom/appodeal/ads/k0;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/appodeal/ads/k0$l;

    const/4 p2, 0x0

    invoke-direct {v4, v0, p0, p1, p2}, Lcom/appodeal/ads/k0$l;-><init>(Lcom/appodeal/ads/s1$a$c;Lcom/appodeal/ads/y1;Lcom/appodeal/ads/x1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final c()V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/appodeal/ads/s1$g;

    invoke-direct {v0}, Lcom/appodeal/ads/s1$g;-><init>()V

    new-instance v1, Lcom/appodeal/ads/w1;

    invoke-direct {v1}, Lcom/appodeal/ads/w1;-><init>()V

    new-instance v2, Lcom/appodeal/ads/x1;

    invoke-direct {v2}, Lcom/appodeal/ads/x1;-><init>()V

    invoke-static {}, Lcom/appodeal/ads/k0;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v6, Lcom/appodeal/ads/k0$k;

    const/4 v4, 0x0

    invoke-direct {v6, v0, v1, v2, v4}, Lcom/appodeal/ads/k0$k;-><init>(Lcom/appodeal/ads/s1$g;Lcom/appodeal/ads/w1;Lcom/appodeal/ads/x1;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/appodeal/ads/k0$h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/appodeal/ads/k0$h;

    iget v1, v0, Lcom/appodeal/ads/k0$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/k0$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/k0$h;

    invoke-direct {v0, p0, p2}, Lcom/appodeal/ads/k0$h;-><init>(Lcom/appodeal/ads/k0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/appodeal/ads/k0$h;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/ads/k0$h;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/appodeal/ads/k0$h;->b:Lcom/appodeal/ads/x1;

    iget-object v0, v0, Lcom/appodeal/ads/k0$h;->a:Lcom/appodeal/ads/t1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p2, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    invoke-virtual {p2}, Lcom/appodeal/ads/context/b;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v2, Lcom/appodeal/ads/s1$f;

    invoke-direct {v2, p1}, Lcom/appodeal/ads/s1$f;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/appodeal/ads/t1;

    invoke-direct {p1, p2}, Lcom/appodeal/ads/t1;-><init>(Landroid/content/Context;)V

    new-instance p2, Lcom/appodeal/ads/x1;

    invoke-direct {p2}, Lcom/appodeal/ads/x1;-><init>()V

    iput-object p1, v0, Lcom/appodeal/ads/k0$h;->a:Lcom/appodeal/ads/t1;

    iput-object p2, v0, Lcom/appodeal/ads/k0$h;->b:Lcom/appodeal/ads/x1;

    iput v3, v0, Lcom/appodeal/ads/k0$h;->e:I

    invoke-static {v2, v0}, Lcom/appodeal/ads/networking/c;->a(Lcom/appodeal/ads/s1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v4

    :goto_1
    invoke-static {p2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/t1;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/appodeal/ads/x1;->a(Lorg/json/JSONObject;)V

    :cond_4
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p2}, Lcom/appodeal/ads/networking/f;->a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/appodeal/ads/networking/f;->a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/appodeal/ads/k0$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/appodeal/ads/k0$c;

    iget v1, v0, Lcom/appodeal/ads/k0$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/k0$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/k0$c;

    invoke-direct {v0, p0, p1}, Lcom/appodeal/ads/k0$c;-><init>(Lcom/appodeal/ads/k0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/appodeal/ads/k0$c;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/ads/k0$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/appodeal/ads/k0$c;->b:Lcom/appodeal/ads/x1;

    iget-object v0, v0, Lcom/appodeal/ads/k0$c;->a:Lcom/appodeal/ads/t1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lcom/appodeal/ads/s1$b;

    invoke-direct {p1}, Lcom/appodeal/ads/s1$b;-><init>()V

    sget-object v2, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    invoke-virtual {v2}, Lcom/appodeal/ads/context/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lcom/appodeal/ads/t1;

    invoke-direct {v4, v2}, Lcom/appodeal/ads/t1;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/appodeal/ads/x1;

    invoke-direct {v2}, Lcom/appodeal/ads/x1;-><init>()V

    iput-object v4, v0, Lcom/appodeal/ads/k0$c;->a:Lcom/appodeal/ads/t1;

    iput-object v2, v0, Lcom/appodeal/ads/k0$c;->b:Lcom/appodeal/ads/x1;

    iput v3, v0, Lcom/appodeal/ads/k0$c;->e:I

    invoke-static {p1, v0}, Lcom/appodeal/ads/networking/c;->a(Lcom/appodeal/ads/s1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v2

    move-object v0, v4

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/appodeal/ads/t1;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/appodeal/ads/x1;->a(Lorg/json/JSONObject;)V

    :cond_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lcom/appodeal/ads/networking/f;->a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/appodeal/ads/networking/f;->a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/appodeal/ads/k0$g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/appodeal/ads/k0$g;

    iget v1, v0, Lcom/appodeal/ads/k0$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/k0$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/k0$g;

    invoke-direct {v0, p0, p1}, Lcom/appodeal/ads/k0$g;-><init>(Lcom/appodeal/ads/k0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/appodeal/ads/k0$g;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/ads/k0$g;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/appodeal/ads/k0$g;->b:Lcom/appodeal/ads/x1;

    iget-object v0, v0, Lcom/appodeal/ads/k0$g;->a:Lcom/appodeal/ads/t1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lcom/appodeal/ads/s1$e;

    invoke-direct {p1}, Lcom/appodeal/ads/s1$e;-><init>()V

    sget-object v2, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    invoke-virtual {v2}, Lcom/appodeal/ads/context/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lcom/appodeal/ads/t1;

    invoke-direct {v4, v2}, Lcom/appodeal/ads/t1;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/appodeal/ads/x1;

    invoke-direct {v2}, Lcom/appodeal/ads/x1;-><init>()V

    iput-object v4, v0, Lcom/appodeal/ads/k0$g;->a:Lcom/appodeal/ads/t1;

    iput-object v2, v0, Lcom/appodeal/ads/k0$g;->b:Lcom/appodeal/ads/x1;

    iput v3, v0, Lcom/appodeal/ads/k0$g;->e:I

    invoke-static {p1, v0}, Lcom/appodeal/ads/networking/c;->a(Lcom/appodeal/ads/s1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v2

    move-object v0, v4

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/appodeal/ads/t1;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/appodeal/ads/x1;->a(Lorg/json/JSONObject;)V

    :cond_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lcom/appodeal/ads/networking/f;->a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/appodeal/ads/networking/f;->a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    return-object p1
.end method
