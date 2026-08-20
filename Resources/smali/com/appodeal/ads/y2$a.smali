.class public final Lcom/appodeal/ads/y2$a;
.super Lcom/appodeal/ads/y2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/y2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lcom/appodeal/ads/RestrictedData;

.field public final e:Lcom/appodeal/ads/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/u<",
            "***>;"
        }
    .end annotation
.end field

.field public final f:Lcom/appodeal/ads/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/r<",
            "*>;"
        }
    .end annotation
.end field

.field public final g:Lcom/appodeal/ads/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/l<",
            "****>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appodeal/ads/modules/common/internal/service/ServiceData;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/appodeal/ads/storage/a;

.field public final j:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/util/List;)V
    .locals 7

    sget-object v6, Lcom/appodeal/ads/storage/o;->b:Lcom/appodeal/ads/storage/o;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/y2$a;-><init>(Landroid/content/Context;Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/util/List;Lcom/appodeal/ads/storage/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/util/List;Lcom/appodeal/ads/storage/a;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/appodeal/ads/j4;->a:Lcom/appodeal/ads/j4;

    .line 2
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restrictedData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adController"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adRequest"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "servicesDataList"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "keyValueStorage"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/appodeal/ads/y2;-><init>(I)V

    iput-object p1, p0, Lcom/appodeal/ads/y2$a;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/appodeal/ads/y2$a;->d:Lcom/appodeal/ads/RestrictedData;

    iput-object p2, p0, Lcom/appodeal/ads/y2$a;->e:Lcom/appodeal/ads/u;

    iput-object p3, p0, Lcom/appodeal/ads/y2$a;->f:Lcom/appodeal/ads/r;

    iput-object p4, p0, Lcom/appodeal/ads/y2$a;->g:Lcom/appodeal/ads/l;

    iput-object p5, p0, Lcom/appodeal/ads/y2$a;->h:Ljava/util/List;

    iput-object p6, p0, Lcom/appodeal/ads/y2$a;->i:Lcom/appodeal/ads/storage/a;

    sget-object p1, Lcom/appodeal/ads/r0;->a:Lcom/appodeal/ads/r0;

    invoke-static {}, Lcom/appodeal/ads/r0;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "post_bid"

    goto :goto_0

    :cond_0
    const-string p1, "stats"

    :goto_0
    iput-object p1, p0, Lcom/appodeal/ads/y2$a;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/api/App;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/appodeal/ads/y2$a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/appodeal/ads/y2$a$b;

    iget v1, v0, Lcom/appodeal/ads/y2$a$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/y2$a$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/y2$a$b;

    invoke-direct {v0, p0, p2}, Lcom/appodeal/ads/y2$a$b;-><init>(Lcom/appodeal/ads/y2$a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/appodeal/ads/y2$a$b;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/ads/y2$a$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/appodeal/ads/y2$a$b;->b:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Lcom/appodeal/ads/y2$a$b;->a:Lcom/appodeal/ads/api/App$Builder;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lcom/appodeal/ads/api/App;->newBuilder()Lcom/appodeal/ads/api/App$Builder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2}, Lcom/appodeal/ads/api/App$Builder;->setBundle(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2, v5}, Lcom/appodeal/ads/api/App$Builder;->setVer(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;

    :goto_2
    iget-wide v5, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const/16 v7, 0x3e8

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Lcom/appodeal/ads/api/App$Builder;->setInstallTime(J)Lcom/appodeal/ads/api/App$Builder;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p2, p1}, Lcom/appodeal/ads/api/App$Builder;->setInstaller(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;

    :goto_3
    iget-object p1, p0, Lcom/appodeal/ads/y2$a;->i:Lcom/appodeal/ads/storage/a;

    iput-object p2, v0, Lcom/appodeal/ads/y2$a$b;->a:Lcom/appodeal/ads/api/App$Builder;

    iput-object v4, v0, Lcom/appodeal/ads/y2$a$b;->b:Landroid/content/pm/PackageInfo;

    iput v3, v0, Lcom/appodeal/ads/y2$a$b;->e:I

    invoke-interface {p1, v0}, Lcom/appodeal/ads/storage/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, p2

    move-object p2, p1

    move-object p1, v4

    :goto_4
    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0, p2}, Lcom/appodeal/ads/api/App$Builder;->setAppKey(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;

    :goto_5
    sget-object p2, Lcom/appodeal/ads/modules/common/internal/Constants;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/appodeal/ads/api/App$Builder;->setSdk(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/api/App$Builder;->setVersionCode(I)Lcom/appodeal/ads/api/App$Builder;

    invoke-static {}, Lcom/appodeal/ads/q4;->m()Lcom/appodeal/ads/utils/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/utils/x;->e()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/api/App$Builder;->setAppUptime(J)Lcom/appodeal/ads/api/App$Builder;

    invoke-static {}, Lcom/appodeal/ads/q4;->m()Lcom/appodeal/ads/utils/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/utils/x;->f()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/api/App$Builder;->setMonotonicAppUptime(J)Lcom/appodeal/ads/api/App$Builder;

    invoke-static {}, Lcom/appodeal/ads/q4;->h()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v0, p1}, Lcom/appodeal/ads/api/App$Builder;->setFramework(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;

    :goto_6
    invoke-static {}, Lcom/appodeal/ads/q4;->g()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v0, p1}, Lcom/appodeal/ads/api/App$Builder;->setFrameworkVersion(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;

    :goto_7
    invoke-static {}, Lcom/appodeal/ads/q4;->j()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v0, p1}, Lcom/appodeal/ads/api/App$Builder;->setPluginVersion(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;

    :goto_8
    invoke-virtual {v0}, Lcom/appodeal/ads/api/App$Builder;->build()Lcom/appodeal/ads/api/App;

    move-result-object p1

    const-string p2, "appBuilder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/api/Request$Builder;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/appodeal/ads/y2$a$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/appodeal/ads/y2$a$a;

    iget v1, v0, Lcom/appodeal/ads/y2$a$a;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/y2$a$a;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/y2$a$a;

    invoke-direct {v0, p0, p1}, Lcom/appodeal/ads/y2$a$a;-><init>(Lcom/appodeal/ads/y2$a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/appodeal/ads/y2$a$a;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/ads/y2$a$a;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/appodeal/ads/y2$a$a;->d:Lcom/appodeal/ads/api/Request$Builder;

    iget-object v2, v0, Lcom/appodeal/ads/y2$a$a;->c:Lcom/appodeal/ads/api/Request$Builder;

    iget-object v4, v0, Lcom/appodeal/ads/y2$a$a;->b:Lcom/appodeal/ads/api/Request$Builder;

    iget-object v0, v0, Lcom/appodeal/ads/y2$a$a;->a:Lcom/appodeal/ads/y2$a;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lcom/appodeal/ads/api/Request;->newBuilder()Lcom/appodeal/ads/api/Request$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/appodeal/ads/y2$a;->c:Landroid/content/Context;

    iput-object p0, v0, Lcom/appodeal/ads/y2$a$a;->a:Lcom/appodeal/ads/y2$a;

    iput-object p1, v0, Lcom/appodeal/ads/y2$a$a;->b:Lcom/appodeal/ads/api/Request$Builder;

    iput-object p1, v0, Lcom/appodeal/ads/y2$a$a;->c:Lcom/appodeal/ads/api/Request$Builder;

    iput-object p1, v0, Lcom/appodeal/ads/y2$a$a;->d:Lcom/appodeal/ads/api/Request$Builder;

    iput v3, v0, Lcom/appodeal/ads/y2$a$a;->g:I

    invoke-virtual {p0, v2, v0}, Lcom/appodeal/ads/y2$a;->a(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p1

    move-object v2, v1

    move-object v4, v2

    move-object p1, v0

    move-object v0, p0

    :goto_1
    check-cast p1, Lcom/appodeal/ads/api/App;

    invoke-virtual {v1, p1}, Lcom/appodeal/ads/api/Request$Builder;->setApp(Lcom/appodeal/ads/api/App;)Lcom/appodeal/ads/api/Request$Builder;

    iget-object p1, v0, Lcom/appodeal/ads/y2$a;->d:Lcom/appodeal/ads/RestrictedData;

    iget-object v1, v0, Lcom/appodeal/ads/y2$a;->f:Lcom/appodeal/ads/r;

    .line 1
    sget-boolean v5, Lcom/appodeal/ads/r0;->b:Z

    invoke-static {}, Lcom/appodeal/ads/x2;->f()Lorg/json/JSONObject;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_4

    move-object v6, v7

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    sget-object v8, Lcom/appodeal/ads/ExtraData;->INSTANCE:Lcom/appodeal/ads/ExtraData;

    invoke-virtual {v8}, Lcom/appodeal/ads/ExtraData;->asJson()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ExtraData.asJson().toString()"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/q4;->m()Lcom/appodeal/ads/utils/x;

    move-result-object v9

    .line 2
    const-string v10, "restrictedData"

    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "adRequest"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "extraDataJsonString"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "session"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/api/Session;->newBuilder()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/appodeal/ads/api/Session$Builder;->setTest(Z)Lcom/appodeal/ads/api/Session$Builder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v10, v8}, Lcom/appodeal/ads/api/Session$Builder;->setExt(Ljava/lang/String;)Lcom/appodeal/ads/api/Session$Builder;

    :cond_5
    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v10, v6}, Lcom/appodeal/ads/api/Session$Builder;->setToken(Ljava/lang/String;)Lcom/appodeal/ads/api/Session$Builder;

    :goto_3
    invoke-virtual {v9}, Lcom/appodeal/ads/utils/x;->g()J

    move-result-wide v5

    invoke-virtual {v10, v5, v6}, Lcom/appodeal/ads/api/Session$Builder;->setSessionId(J)Lcom/appodeal/ads/api/Session$Builder;

    invoke-virtual {v9}, Lcom/appodeal/ads/utils/x;->j()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v10, v5}, Lcom/appodeal/ads/api/Session$Builder;->setSessionUuid(Ljava/lang/String;)Lcom/appodeal/ads/api/Session$Builder;

    :goto_4
    invoke-virtual {v9}, Lcom/appodeal/ads/utils/x;->h()J

    move-result-wide v5

    invoke-virtual {v10, v5, v6}, Lcom/appodeal/ads/api/Session$Builder;->setSessionUptime(J)Lcom/appodeal/ads/api/Session$Builder;

    invoke-virtual {v9}, Lcom/appodeal/ads/utils/x;->i()J

    move-result-wide v5

    invoke-virtual {v10, v5, v6}, Lcom/appodeal/ads/api/Session$Builder;->setMonotonicSessionUptime(J)Lcom/appodeal/ads/api/Session$Builder;

    invoke-virtual {v1}, Lcom/appodeal/ads/r;->l()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-int v1, v5

    invoke-virtual {v10, v1}, Lcom/appodeal/ads/api/Session$Builder;->setSegmentId(I)Lcom/appodeal/ads/api/Session$Builder;

    :goto_5
    const-string v1, "ad_stats"

    invoke-interface {p1, v1}, Lcom/appodeal/ads/RestrictedData;->isParameterBlocked(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 3
    invoke-static {}, Lcom/appodeal/ads/api/AdStats;->newBuilder()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v5, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Impression:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    invoke-virtual {v1, v5}, Lcom/appodeal/ads/utils/EventsTracker;->b(Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setShow(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v6, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Click:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    invoke-virtual {v1, v6}, Lcom/appodeal/ads/utils/EventsTracker;->b(Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setClick(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v8, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Finish:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    invoke-virtual {v1, v8}, Lcom/appodeal/ads/utils/EventsTracker;->b(Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setFinish(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v11, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Interstitial:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-array v12, v3, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-virtual {v1, v11, v12}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setBannerShow(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v11, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Interstitial:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-array v12, v3, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v6, v12, v13

    invoke-virtual {v1, v11, v12}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setBannerClick(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v11, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Video:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-array v12, v3, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v5, v12, v13

    invoke-virtual {v1, v11, v12}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setVideoShow(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v11, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Video:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-array v12, v3, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v6, v12, v13

    invoke-virtual {v1, v11, v12}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setVideoClick(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v11, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Video:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-array v12, v3, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v8, v12, v13

    invoke-virtual {v1, v11, v12}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setVideoFinish(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v11, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Rewarded:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-array v12, v3, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v5, v12, v13

    invoke-virtual {v1, v11, v12}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setRewardedVideoShow(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v11, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Rewarded:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-array v12, v3, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v6, v12, v13

    invoke-virtual {v1, v11, v12}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setRewardedVideoClick(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v11, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Rewarded:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-array v12, v3, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v8, v12, v13

    invoke-virtual {v1, v11, v12}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setRewardedVideoFinish(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v8, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Banner:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-array v11, v3, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v5, v11, v13

    invoke-virtual {v1, v8, v11}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setBanner320Show(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v8, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Banner:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-array v11, v3, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v6, v11, v13

    invoke-virtual {v1, v8, v11}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setBanner320Click(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v8, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Mrec:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-array v11, v3, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v5, v11, v13

    invoke-virtual {v1, v8, v11}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setBannerMrecShow(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v8, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Mrec:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-array v11, v3, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v6, v11, v13

    invoke-virtual {v1, v8, v11}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setBannerMrecClick(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v8, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Native:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-array v11, v3, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v5, v11, v13

    invoke-virtual {v1, v8, v11}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setNativeShow(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v1

    sget-object v5, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Native:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-array v8, v3, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v6, v8, v13

    invoke-virtual {v1, v5, v8}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;->setNativeClick(I)Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats$Builder;->build()Lcom/appodeal/ads/api/AdStats;

    move-result-object p1

    const-string v1, "adStatsBuilder.build()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v10, p1}, Lcom/appodeal/ads/api/Session$Builder;->setAdStats(Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/Session$Builder;

    :cond_9
    invoke-virtual {v9}, Lcom/appodeal/ads/utils/x;->c()J

    move-result-wide v5

    invoke-virtual {v10, v5, v6}, Lcom/appodeal/ads/api/Session$Builder;->setAppSessionAverageLength(J)Lcom/appodeal/ads/api/Session$Builder;

    invoke-virtual {v9}, Lcom/appodeal/ads/utils/x;->d()J

    move-result-wide v5

    invoke-virtual {v10, v5, v6}, Lcom/appodeal/ads/api/Session$Builder;->setMonotonicAppSessionAverageLength(J)Lcom/appodeal/ads/api/Session$Builder;

    invoke-virtual {v10}, Lcom/appodeal/ads/api/Session$Builder;->build()Lcom/appodeal/ads/api/Session;

    move-result-object p1

    const-string v1, "sessionBuilder.build()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, p1}, Lcom/appodeal/ads/api/Request$Builder;->setSession(Lcom/appodeal/ads/api/Session;)Lcom/appodeal/ads/api/Request$Builder;

    iget-object p1, v0, Lcom/appodeal/ads/y2$a;->c:Landroid/content/Context;

    iget-object v1, v0, Lcom/appodeal/ads/y2$a;->d:Lcom/appodeal/ads/RestrictedData;

    .line 6
    invoke-static {}, Lcom/appodeal/ads/api/Device;->newBuilder()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v5

    invoke-interface {v1, p1}, Lcom/appodeal/ads/RestrictedData;->getHttpAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setUa(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;

    :cond_b
    :goto_6
    invoke-static {}, Lcom/appodeal/ads/f1;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setOsv(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;

    const-string v6, "Android"

    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setOs(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {p1}, Lcom/appodeal/ads/f1;->o(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v6

    const-string v8, "getScreenSize(context)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v8, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v8}, Lcom/appodeal/ads/api/Device$Builder;->setW(I)Lcom/appodeal/ads/api/Device$Builder;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setH(I)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {p1}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setPxratio(F)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {p1}, Lcom/appodeal/ads/f1;->r(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Lcom/appodeal/ads/api/Device$DeviceType;->TABLET:Lcom/appodeal/ads/api/Device$DeviceType;

    goto :goto_7

    :cond_c
    sget-object v6, Lcom/appodeal/ads/api/Device$DeviceType;->PHONE:Lcom/appodeal/ads/api/Device$DeviceType;

    :goto_7
    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setDevicetype(Lcom/appodeal/ads/api/Device$DeviceType;)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {}, Lcom/appodeal/ads/f1;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setMake(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/appodeal/ads/f1;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/appodeal/ads/f1;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_d

    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setModel(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;

    .line 7
    :cond_d
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_32

    check-cast v6, Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-nez v6, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-eqz v8, :cond_12

    if-eq v8, v3, :cond_11

    const/4 v6, 0x7

    if-eq v8, v6, :cond_10

    const/16 v6, 0x9

    if-eq v8, v6, :cond_f

    goto :goto_8

    :cond_f
    sget-object v6, Lcom/appodeal/ads/api/Device$ConnectionType;->ETHERNET:Lcom/appodeal/ads/api/Device$ConnectionType;

    goto :goto_9

    :cond_10
    :goto_8
    sget-object v6, Lcom/appodeal/ads/api/Device$ConnectionType;->CONNECTIONTYPE_UNKNOWN:Lcom/appodeal/ads/api/Device$ConnectionType;

    goto :goto_9

    :cond_11
    sget-object v6, Lcom/appodeal/ads/api/Device$ConnectionType;->WIFI:Lcom/appodeal/ads/api/Device$ConnectionType;

    goto :goto_9

    :cond_12
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    if-eqz v6, :cond_15

    const/4 v8, 0x4

    if-eq v6, v8, :cond_14

    const/16 v8, 0x10

    if-eq v6, v8, :cond_13

    sget-object v6, Lcom/appodeal/ads/api/Device$ConnectionType;->MOBILE_4G:Lcom/appodeal/ads/api/Device$ConnectionType;

    goto :goto_9

    :cond_13
    sget-object v6, Lcom/appodeal/ads/api/Device$ConnectionType;->MOBILE_2G:Lcom/appodeal/ads/api/Device$ConnectionType;

    goto :goto_9

    :cond_14
    sget-object v6, Lcom/appodeal/ads/api/Device$ConnectionType;->MOBILE_3G:Lcom/appodeal/ads/api/Device$ConnectionType;

    goto :goto_9

    :cond_15
    sget-object v6, Lcom/appodeal/ads/api/Device$ConnectionType;->MOBILE_UNKNOWN:Lcom/appodeal/ads/api/Device$ConnectionType;

    .line 8
    :goto_9
    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setConnectiontype(Lcom/appodeal/ads/api/Device$ConnectionType;)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {p1}, Lcom/appodeal/ads/f1;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_16

    goto :goto_a

    :cond_16
    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setMccmnc(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;

    :goto_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "getDefault().toString()"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_17

    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setLocale(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;

    :cond_17
    invoke-static {}, Lcom/appodeal/ads/f1;->m()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setRooted(Z)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {p1}, Lcom/appodeal/ads/n5;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_18

    goto :goto_b

    :cond_18
    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setWebviewVersion(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;

    :goto_b
    invoke-static {p1}, Lcom/appodeal/ads/f1;->b(Landroid/content/Context;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setBattery(I)Lcom/appodeal/ads/api/Device$Builder;

    invoke-interface {v1}, Lcom/appodeal/ads/RestrictedData;->getIfa()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setIfa(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {}, Lcom/appodeal/ads/f1;->h()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/appodeal/ads/api/Device$Builder;->setStorageUsed(J)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {}, Lcom/appodeal/ads/f1;->f()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/appodeal/ads/api/Device$Builder;->setStorageFree(J)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {}, Lcom/appodeal/ads/f1;->g()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/appodeal/ads/api/Device$Builder;->setStorageSize(J)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {}, Lcom/appodeal/ads/f1;->e()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/appodeal/ads/api/Device$Builder;->setRamUsed(J)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {p1}, Lcom/appodeal/ads/f1;->j(Landroid/content/Context;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/appodeal/ads/api/Device$Builder;->setRamFree(J)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {p1}, Lcom/appodeal/ads/f1;->k(Landroid/content/Context;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/appodeal/ads/api/Device$Builder;->setRamSize(J)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {}, Lcom/appodeal/ads/f1;->a()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Device$Builder;->setCpuUsage(F)Lcom/appodeal/ads/api/Device$Builder;

    invoke-interface {v1}, Lcom/appodeal/ads/RestrictedData;->isLimitAdTrackingEnabled()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v5, v1}, Lcom/appodeal/ads/api/Device$Builder;->setLmt(I)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {}, Lcom/appodeal/ads/x2;->h()Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/appodeal/ads/api/Device$Builder;->setAdidg(Z)Lcom/appodeal/ads/api/Device$Builder;

    invoke-static {p1}, Lcom/appodeal/ads/f1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_19

    goto :goto_c

    :cond_19
    invoke-virtual {v5, p1}, Lcom/appodeal/ads/api/Device$Builder;->setSecureAndroidId(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;

    :goto_c
    invoke-virtual {v5}, Lcom/appodeal/ads/api/Device$Builder;->build()Lcom/appodeal/ads/api/Device;

    move-result-object p1

    const-string v1, "deviceBuilder.build()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, p1}, Lcom/appodeal/ads/api/Request$Builder;->setDevice(Lcom/appodeal/ads/api/Device;)Lcom/appodeal/ads/api/Request$Builder;

    iget-object p1, v0, Lcom/appodeal/ads/y2$a;->d:Lcom/appodeal/ads/RestrictedData;

    .line 10
    invoke-static {}, Lcom/appodeal/ads/api/User;->newBuilder()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v1

    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1a

    goto :goto_d

    :cond_1a
    invoke-virtual {v1, p1}, Lcom/appodeal/ads/api/User$Builder;->setId(Ljava/lang/String;)Lcom/appodeal/ads/api/User$Builder;

    :goto_d
    invoke-static {}, Lcom/appodeal/ads/x2;->j()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/appodeal/ads/api/User$Builder;->setConsent(Z)Lcom/appodeal/ads/api/User$Builder;

    invoke-static {}, Lcom/appodeal/ads/x2;->d()Lcom/appodeal/consent/Consent;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_e

    :cond_1b
    invoke-virtual {p1}, Lcom/appodeal/consent/Consent;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/appodeal/ads/api/User$Builder;->setIabConsentData(Ljava/lang/String;)Lcom/appodeal/ads/api/User$Builder;

    :goto_e
    invoke-virtual {v1}, Lcom/appodeal/ads/api/User$Builder;->build()Lcom/appodeal/ads/api/User;

    move-result-object p1

    const-string v1, "userBuilder.build()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, p1}, Lcom/appodeal/ads/api/Request$Builder;->setUser(Lcom/appodeal/ads/api/User;)Lcom/appodeal/ads/api/Request$Builder;

    .line 12
    invoke-static {}, Lcom/appodeal/ads/api/Regs;->newBuilder()Lcom/appodeal/ads/api/Regs$Builder;

    move-result-object p1

    invoke-static {}, Lcom/appodeal/ads/i0;->a()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/appodeal/ads/api/Regs$Builder;->setCoppa(Z)Lcom/appodeal/ads/api/Regs$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Regs$Builder;->build()Lcom/appodeal/ads/api/Regs;

    move-result-object p1

    const-string v1, "newBuilder().setCoppa(AppData.isForKids()).build()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, p1}, Lcom/appodeal/ads/api/Request$Builder;->setRegs(Lcom/appodeal/ads/api/Regs;)Lcom/appodeal/ads/api/Request$Builder;

    iget-object p1, v0, Lcom/appodeal/ads/y2$a;->c:Landroid/content/Context;

    iget-object v1, v0, Lcom/appodeal/ads/y2$a;->d:Lcom/appodeal/ads/RestrictedData;

    .line 14
    invoke-static {}, Lcom/appodeal/ads/api/Geo;->newBuilder()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    long-to-int v6, v8

    invoke-virtual {v5, v6}, Lcom/appodeal/ads/api/Geo$Builder;->setUtcoffset(I)Lcom/appodeal/ads/api/Geo$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/16 v6, 0x3e8

    int-to-long v10, v6

    div-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Lcom/appodeal/ads/api/Geo$Builder;->setLocalTime(J)Lcom/appodeal/ads/api/Geo$Builder;

    invoke-interface {v1, p1}, Lcom/appodeal/ads/RestrictedData;->getLocation(Landroid/content/Context;)Lcom/appodeal/ads/LocationData;

    move-result-object p1

    const-string v1, "restrictedData.getLocation(context)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/appodeal/ads/LocationData;->getDeviceLocationType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/appodeal/ads/api/Geo$LocationType;->forNumber(I)Lcom/appodeal/ads/api/Geo$LocationType;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v5, v1}, Lcom/appodeal/ads/api/Geo$Builder;->setLt(Lcom/appodeal/ads/api/Geo$LocationType;)Lcom/appodeal/ads/api/Geo$Builder;

    :cond_1c
    invoke-interface {p1}, Lcom/appodeal/ads/LocationData;->obtainLatitude()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v5, v1}, Lcom/appodeal/ads/api/Geo$Builder;->setLat(F)Lcom/appodeal/ads/api/Geo$Builder;

    :cond_1d
    invoke-interface {p1}, Lcom/appodeal/ads/LocationData;->obtainLongitude()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v5, p1}, Lcom/appodeal/ads/api/Geo$Builder;->setLon(F)Lcom/appodeal/ads/api/Geo$Builder;

    :cond_1e
    invoke-virtual {v5}, Lcom/appodeal/ads/api/Geo$Builder;->build()Lcom/appodeal/ads/api/Geo;

    move-result-object p1

    const-string v1, "geoBuilder.build()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, p1}, Lcom/appodeal/ads/api/Request$Builder;->setGeo(Lcom/appodeal/ads/api/Geo;)Lcom/appodeal/ads/api/Request$Builder;

    iget-object p1, v0, Lcom/appodeal/ads/y2$a;->c:Landroid/content/Context;

    iget-object v1, v0, Lcom/appodeal/ads/y2$a;->e:Lcom/appodeal/ads/u;

    iget-object v5, v0, Lcom/appodeal/ads/y2$a;->g:Lcom/appodeal/ads/l;

    .line 16
    invoke-static {}, Lcom/appodeal/ads/api/Extra;->newBuilder()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/appodeal/ads/u;->h()D

    move-result-wide v8

    double-to-float v1, v8

    invoke-virtual {v6, v1}, Lcom/appodeal/ads/api/Extra$Builder;->setPriceFloor(F)Lcom/appodeal/ads/api/Extra$Builder;

    if-nez v5, :cond_1f

    goto :goto_f

    :cond_1f
    invoke-virtual {v5}, Lcom/appodeal/ads/l;->e()Lorg/json/JSONObject;

    move-result-object v7

    :goto_f
    if-eqz v7, :cond_20

    invoke-virtual {v5}, Lcom/appodeal/ads/l;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/appodeal/ads/api/Extra$Builder;->setAdUnitStat(Ljava/lang/String;)Lcom/appodeal/ads/api/Extra$Builder;

    :cond_20
    invoke-static {p1}, Lcom/appodeal/ads/utils/z;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_21

    goto :goto_10

    :cond_21
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "array.toString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_22

    invoke-virtual {v6, p1}, Lcom/appodeal/ads/api/Extra$Builder;->addSa(Ljava/lang/String;)Lcom/appodeal/ads/api/Extra$Builder;

    :cond_22
    :goto_10
    invoke-virtual {v6}, Lcom/appodeal/ads/api/Extra$Builder;->build()Lcom/appodeal/ads/api/Extra;

    move-result-object p1

    const-string v1, "extraBuilder.build()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, p1}, Lcom/appodeal/ads/api/Request$Builder;->setExt(Lcom/appodeal/ads/api/Extra;)Lcom/appodeal/ads/api/Request$Builder;

    iget-object p1, v0, Lcom/appodeal/ads/y2$a;->c:Landroid/content/Context;

    iget-object v1, v0, Lcom/appodeal/ads/y2$a;->e:Lcom/appodeal/ads/u;

    iget-object v5, v0, Lcom/appodeal/ads/y2$a;->f:Lcom/appodeal/ads/r;

    .line 18
    invoke-virtual {v5}, Lcom/appodeal/ads/r;->w()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/appodeal/ads/u;->g()Lcom/appodeal/ads/i;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appodeal/ads/i;->b(Landroid/content/Context;)Lcom/appodeal/ads/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/i;->b()Ljava/util/Collection;

    move-result-object p1

    const-string v1, "adController.networkRegi\u2026     .getLoadedNetworks()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/AdNetwork;

    invoke-static {}, Lcom/appodeal/ads/api/Adapter;->newBuilder()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/appodeal/ads/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/appodeal/ads/api/Adapter$Builder;->setStatus(Ljava/lang/String;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/appodeal/ads/AdNetwork;->getAdapterVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/appodeal/ads/api/Adapter$Builder;->setVersion(Ljava/lang/String;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/appodeal/ads/AdNetwork;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/appodeal/ads/api/Adapter$Builder;->setNetworkSdkVersion(Ljava/lang/String;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/appodeal/ads/api/Stats$Builder;->addAdapter(Lcom/appodeal/ads/api/Adapter$Builder;)Lcom/appodeal/ads/api/Stats$Builder;

    goto :goto_11

    :cond_23
    invoke-virtual {v5}, Lcom/appodeal/ads/api/Stats$Builder;->build()Lcom/appodeal/ads/api/Stats;

    move-result-object p1

    const-string v1, "builder.build()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, p1}, Lcom/appodeal/ads/api/Request$Builder;->setStats(Lcom/appodeal/ads/api/Stats;)Lcom/appodeal/ads/api/Request$Builder;

    iget-object p1, v0, Lcom/appodeal/ads/y2$a;->h:Ljava/util/List;

    .line 20
    invoke-static {}, Lcom/appodeal/ads/api/Services;->newBuilder()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appodeal/ads/modules/common/internal/service/ServiceData;

    instance-of v7, v6, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$AppsFlyer;

    if-eqz v7, :cond_27

    invoke-static {}, Lcom/appodeal/ads/api/Services$Appsflyer;->newBuilder()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v7

    check-cast v6, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$AppsFlyer;

    invoke-virtual {v6}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$AppsFlyer;->getAttributionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_25

    invoke-virtual {v6}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$AppsFlyer;->getAttributionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->setAttributionId(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    :cond_25
    invoke-virtual {v6}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$AppsFlyer;->getConversionData()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/appodeal/ads/modules/common/internal/ext/MapExtKt;->toJsonOrNull(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_26

    goto :goto_13

    :cond_26
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->setConversionData(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    :goto_13
    invoke-virtual {v7}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->build()Lcom/appodeal/ads/api/Services$Appsflyer;

    invoke-virtual {v5, v7}, Lcom/appodeal/ads/api/Services$Builder;->setAppsflyer(Lcom/appodeal/ads/api/Services$Appsflyer$Builder;)Lcom/appodeal/ads/api/Services$Builder;

    goto :goto_12

    :cond_27
    instance-of v7, v6, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;

    if-eqz v7, :cond_2a

    invoke-static {}, Lcom/appodeal/ads/api/Services$Adjust;->newBuilder()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v7

    check-cast v6, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;

    invoke-virtual {v6}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;->getAttributionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_28

    invoke-virtual {v6}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;->getAttributionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->setAttributionId(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    :cond_28
    invoke-virtual {v6}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;->getConversionData()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/appodeal/ads/modules/common/internal/ext/MapExtKt;->toJsonOrNull(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_29

    goto :goto_14

    :cond_29
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->setConversionData(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    :goto_14
    invoke-virtual {v7}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->build()Lcom/appodeal/ads/api/Services$Adjust;

    invoke-virtual {v5, v7}, Lcom/appodeal/ads/api/Services$Builder;->setAdjust(Lcom/appodeal/ads/api/Services$Adjust$Builder;)Lcom/appodeal/ads/api/Services$Builder;

    goto :goto_12

    :cond_2a
    instance-of v7, v6, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$FacebookAnalytics;

    if-eqz v7, :cond_2d

    invoke-static {}, Lcom/appodeal/ads/api/Services$Facebook;->newBuilder()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v7

    check-cast v6, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$FacebookAnalytics;

    invoke-virtual {v6}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$FacebookAnalytics;->getUserId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2c

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2b

    goto :goto_15

    :cond_2b
    invoke-virtual {v6}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$FacebookAnalytics;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->setUserId(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    :cond_2c
    :goto_15
    invoke-virtual {v6}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$FacebookAnalytics;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->setAppId(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    invoke-virtual {v7}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->build()Lcom/appodeal/ads/api/Services$Facebook;

    invoke-virtual {v5, v7}, Lcom/appodeal/ads/api/Services$Builder;->setFacebook(Lcom/appodeal/ads/api/Services$Facebook$Builder;)Lcom/appodeal/ads/api/Services$Builder;

    goto/16 :goto_12

    :cond_2d
    instance-of v7, v6, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;

    if-eqz v7, :cond_24

    invoke-static {}, Lcom/appodeal/ads/api/Services$Firebase;->newBuilder()Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v7

    check-cast v6, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;

    invoke-virtual {v6}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;->getAppInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2e

    invoke-virtual {v6}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;->getAppInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->setAppInstanceId(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    :cond_2e
    invoke-virtual {v6}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;->getKeywords()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v3

    if-eqz v8, :cond_2f

    invoke-virtual {v6}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;->getKeywords()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->addAllKeywords(Ljava/lang/Iterable;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    :cond_2f
    invoke-virtual {v7}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->build()Lcom/appodeal/ads/api/Services$Firebase;

    invoke-virtual {v5, v7}, Lcom/appodeal/ads/api/Services$Builder;->setFirebase(Lcom/appodeal/ads/api/Services$Firebase$Builder;)Lcom/appodeal/ads/api/Services$Builder;

    goto/16 :goto_12

    :cond_30
    invoke-virtual {v5}, Lcom/appodeal/ads/api/Services$Builder;->build()Lcom/appodeal/ads/api/Services;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, p1}, Lcom/appodeal/ads/api/Request$Builder;->setServicesData(Lcom/appodeal/ads/api/Services;)Lcom/appodeal/ads/api/Request$Builder;

    new-instance p1, Lorg/json/JSONObject;

    invoke-static {}, Lcom/appodeal/ads/segments/j;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/appodeal/ads/api/Request$Builder;->setCustomState(Ljava/lang/String;)Lcom/appodeal/ads/api/Request$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/appodeal/ads/api/Request$Builder;->setTimestamp(J)Lcom/appodeal/ads/api/Request$Builder;

    iget-object p1, v0, Lcom/appodeal/ads/y2$a;->f:Lcom/appodeal/ads/r;

    invoke-virtual {p1}, Lcom/appodeal/ads/r;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/appodeal/ads/api/Request$Builder;->setImpid(Ljava/lang/String;)Lcom/appodeal/ads/api/Request$Builder;

    iget-object p1, v0, Lcom/appodeal/ads/y2$a;->f:Lcom/appodeal/ads/r;

    invoke-virtual {p1}, Lcom/appodeal/ads/r;->o()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_31

    goto :goto_16

    :cond_31
    invoke-virtual {v2, p1}, Lcom/appodeal/ads/api/Request$Builder;->setMainId(Ljava/lang/String;)Lcom/appodeal/ads/api/Request$Builder;

    :goto_16
    const-string p1, "newBuilder().apply {\n   \u2026          }\n            }"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 22
    :cond_32
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/y2$a;->j:Ljava/lang/String;

    return-object v0
.end method
