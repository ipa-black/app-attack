.class public final Lcom/appodeal/ads/x4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/t4;


# instance fields
.field public final a:Lcom/appodeal/ads/networking/usecases/a;

.field public final b:Lcom/appodeal/ads/services/c$a;

.field public final c:Lcom/appodeal/ads/a3;

.field public final d:Lcom/appodeal/ads/initializing/a;

.field public final e:Lcom/appodeal/ads/m1;

.field public final f:Lcom/appodeal/ads/utils/tracker/a;

.field public final g:Lcom/appodeal/ads/c5;

.field public final h:Lcom/appodeal/ads/b;

.field public final i:Lcom/appodeal/ads/storage/a;

.field public final j:Lcom/appodeal/ads/storage/a$a;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/networking/usecases/a;Lcom/appodeal/ads/services/c$a;Lcom/appodeal/ads/a3;Lcom/appodeal/ads/initializing/b;Lcom/appodeal/ads/m1;Lcom/appodeal/ads/utils/tracker/b;Lcom/appodeal/ads/d5;Lcom/appodeal/ads/c;Lcom/appodeal/ads/storage/o;Lcom/appodeal/ads/storage/n;)V
    .locals 1

    const-string v0, "getConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "servicesSolutionInitializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registerServices"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorContainer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initRequest"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memoryTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionTimeTracker"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLifecycleTracker"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValueStorage"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValueStorageInitializer"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/x4;->a:Lcom/appodeal/ads/networking/usecases/a;

    iput-object p2, p0, Lcom/appodeal/ads/x4;->b:Lcom/appodeal/ads/services/c$a;

    iput-object p3, p0, Lcom/appodeal/ads/x4;->c:Lcom/appodeal/ads/a3;

    iput-object p4, p0, Lcom/appodeal/ads/x4;->d:Lcom/appodeal/ads/initializing/a;

    iput-object p5, p0, Lcom/appodeal/ads/x4;->e:Lcom/appodeal/ads/m1;

    iput-object p6, p0, Lcom/appodeal/ads/x4;->f:Lcom/appodeal/ads/utils/tracker/a;

    iput-object p7, p0, Lcom/appodeal/ads/x4;->g:Lcom/appodeal/ads/c5;

    iput-object p8, p0, Lcom/appodeal/ads/x4;->h:Lcom/appodeal/ads/b;

    iput-object p9, p0, Lcom/appodeal/ads/x4;->i:Lcom/appodeal/ads/storage/a;

    iput-object p10, p0, Lcom/appodeal/ads/x4;->j:Lcom/appodeal/ads/storage/a$a;

    return-void
.end method

.method public static final synthetic a(Lcom/appodeal/ads/x4;)Lcom/appodeal/ads/initializing/a;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/x4;->d:Lcom/appodeal/ads/initializing/a;

    return-object p0
.end method

.method public static final a(Lcom/appodeal/ads/x4;Landroid/app/Application;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "Initialize"

    const-string v5, "SDK-Public"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v6, v3, Lcom/appodeal/ads/y4;

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Lcom/appodeal/ads/y4;

    iget v7, v6, Lcom/appodeal/ads/y4;->i:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_0

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/appodeal/ads/y4;->i:I

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/appodeal/ads/y4;

    invoke-direct {v6, v0, v3}, Lcom/appodeal/ads/y4;-><init>(Lcom/appodeal/ads/x4;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v6, Lcom/appodeal/ads/y4;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    iget v8, v6, Lcom/appodeal/ads/y4;->i:I

    const-string v9, "context"

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v8, :cond_4

    if-eq v8, v13, :cond_3

    if-eq v8, v12, :cond_2

    if-ne v8, v11, :cond_1

    iget-object v0, v6, Lcom/appodeal/ads/y4;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, v6, Lcom/appodeal/ads/y4;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v6, Lcom/appodeal/ads/y4;->a:Ljava/lang/Object;

    check-cast v2, Landroid/app/Application;

    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v6, Lcom/appodeal/ads/y4;->f:Ljava/lang/String;

    iget-object v1, v6, Lcom/appodeal/ads/y4;->e:Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;

    iget-object v2, v6, Lcom/appodeal/ads/y4;->d:Landroid/content/Context;

    iget-object v8, v6, Lcom/appodeal/ads/y4;->c:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v12, v6, Lcom/appodeal/ads/y4;->b:Ljava/lang/Object;

    check-cast v12, Landroid/app/Application;

    iget-object v13, v6, Lcom/appodeal/ads/y4;->a:Ljava/lang/Object;

    check-cast v13, Lcom/appodeal/ads/x4;

    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v13

    move-object v13, v0

    move-object v0, v2

    move-object v2, v8

    move-object/from16 v8, v16

    goto/16 :goto_2

    :cond_3
    iget-object v0, v6, Lcom/appodeal/ads/y4;->d:Landroid/content/Context;

    iget-object v1, v6, Lcom/appodeal/ads/y4;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v6, Lcom/appodeal/ads/y4;->b:Ljava/lang/Object;

    check-cast v2, Landroid/app/Application;

    iget-object v8, v6, Lcom/appodeal/ads/y4;->a:Ljava/lang/Object;

    check-cast v8, Lcom/appodeal/ads/x4;

    :try_start_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v0

    move-object v0, v8

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_3
    iget-object v3, v0, Lcom/appodeal/ads/x4;->f:Lcom/appodeal/ads/utils/tracker/a;

    invoke-interface {v3, v1}, Lcom/appodeal/ads/utils/tracker/a;->a(Landroid/app/Application;)V

    iget-object v3, v0, Lcom/appodeal/ads/x4;->g:Lcom/appodeal/ads/c5;

    invoke-interface {v3}, Lcom/appodeal/ads/c5;->a()V

    iget-object v3, v0, Lcom/appodeal/ads/x4;->h:Lcom/appodeal/ads/b;

    invoke-interface {v3}, Lcom/appodeal/ads/b;->a()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v8, v0, Lcom/appodeal/ads/x4;->i:Lcom/appodeal/ads/storage/a;

    iput-object v0, v6, Lcom/appodeal/ads/y4;->a:Ljava/lang/Object;

    iput-object v1, v6, Lcom/appodeal/ads/y4;->b:Ljava/lang/Object;

    iput-object v2, v6, Lcom/appodeal/ads/y4;->c:Ljava/lang/Object;

    iput-object v3, v6, Lcom/appodeal/ads/y4;->d:Landroid/content/Context;

    iput v13, v6, Lcom/appodeal/ads/y4;->i:I

    invoke-interface {v8, v2, v6}, Lcom/appodeal/ads/storage/a;->a(Ljava/lang/String;Lcom/appodeal/ads/y4;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v7, :cond_5

    goto/16 :goto_a

    :cond_5
    :goto_1
    sget-object v8, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/NetworkStatus;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->init(Landroid/content/Context;)V

    sget-object v8, Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;

    sget-object v13, Lcom/appodeal/ads/r0;->a:Lcom/appodeal/ads/r0;

    invoke-static {}, Lcom/appodeal/ads/c1;->a()Ljava/lang/String;

    move-result-object v13

    const-string v15, "AppodealSettings.actualHost ?: Debug.getHost()"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Lcom/appodeal/ads/r0;->a:Lcom/appodeal/ads/r0;

    iput-object v0, v6, Lcom/appodeal/ads/y4;->a:Ljava/lang/Object;

    iput-object v1, v6, Lcom/appodeal/ads/y4;->b:Ljava/lang/Object;

    iput-object v2, v6, Lcom/appodeal/ads/y4;->c:Ljava/lang/Object;

    iput-object v3, v6, Lcom/appodeal/ads/y4;->d:Landroid/content/Context;

    iput-object v8, v6, Lcom/appodeal/ads/y4;->e:Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;

    iput-object v13, v6, Lcom/appodeal/ads/y4;->f:Ljava/lang/String;

    iput v12, v6, Lcom/appodeal/ads/y4;->i:I

    invoke-virtual {v15, v6}, Lcom/appodeal/ads/r0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v7, :cond_6

    goto/16 :goto_a

    :cond_6
    move-object/from16 v16, v8

    move-object v8, v0

    move-object v0, v3

    move-object v3, v12

    move-object v12, v1

    move-object/from16 v1, v16

    :goto_2
    check-cast v3, Ljava/util/Set;

    invoke-virtual {v1, v13, v3}, Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;->init(Ljava/lang/String;Ljava/util/Set;)V

    invoke-static {v0}, Lcom/appodeal/ads/a5;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/appodeal/ads/q4;->m()Lcom/appodeal/ads/utils/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/utils/x;->n()V

    invoke-static {v0}, Lcom/appodeal/ads/c1;->a(Landroid/content/Context;)V

    iget-object v1, v8, Lcom/appodeal/ads/x4;->i:Lcom/appodeal/ads/storage/a;

    iput-object v12, v6, Lcom/appodeal/ads/y4;->a:Ljava/lang/Object;

    iput-object v2, v6, Lcom/appodeal/ads/y4;->b:Ljava/lang/Object;

    iput-object v0, v6, Lcom/appodeal/ads/y4;->c:Ljava/lang/Object;

    iput-object v14, v6, Lcom/appodeal/ads/y4;->d:Landroid/content/Context;

    iput-object v14, v6, Lcom/appodeal/ads/y4;->e:Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;

    iput-object v14, v6, Lcom/appodeal/ads/y4;->f:Ljava/lang/String;

    iput v11, v6, Lcom/appodeal/ads/y4;->i:I

    invoke-interface {v1, v6}, Lcom/appodeal/ads/storage/a;->a(Lcom/appodeal/ads/y4;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_7

    goto/16 :goto_a

    :cond_7
    move-object v1, v2

    move-object v2, v12

    :goto_3
    invoke-static {v0}, Lcom/appodeal/ads/utils/c;->c(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/appodeal/ads/utils/c;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/appodeal/ads/utils/c;->b(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/appodeal/ads/utils/f;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/appodeal/ads/utils/campaign_frequency/b;->a()V

    invoke-static {}, Lcom/appodeal/ads/segments/h;->a()V

    invoke-static {}, Lcom/appodeal/ads/utils/app/b;->values()[Lcom/appodeal/ads/utils/app/b;

    move-result-object v3

    array-length v6, v3

    move v7, v10

    :goto_4
    if-ge v7, v6, :cond_8

    aget-object v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v8}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {v2, v8}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_4

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x76

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/appodeal/ads/modules/common/internal/Constants;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ddMMyy"

    sget-object v6, Lcom/appodeal/ads/modules/common/internal/Constants;->BUILD_DATE:Ljava/util/Date;

    invoke-static {v3, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " initialized, appKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", consent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/appodeal/ads/x2;->c()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_9

    move-object v2, v14

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", manager consent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/appodeal/ads/x2;->d()Lcom/appodeal/consent/Consent;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Lcom/appodeal/consent/Consent;->getStatus()Lcom/appodeal/consent/Consent$Status;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v2}, Lcom/appodeal/consent/Consent$Status;->name()Ljava/lang/String;

    move-result-object v14

    :goto_6
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Current device is: "

    invoke-static {}, Lcom/appodeal/ads/f1;->l()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "Emulator"

    goto :goto_7

    :cond_c
    const-string v2, "Real Device"

    :goto_7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/q4;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/appodeal/ads/q4;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/appodeal/ads/q4;->g()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, " v"

    const-string v3, "For "

    if-eqz v1, :cond_d

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/appodeal/ads/q4;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/appodeal/ads/q4;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ev"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/appodeal/ads/q4;->g()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/appodeal/ads/q4;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/appodeal/ads/q4;->j()Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v1, "Google play services version: "

    invoke-static {v0}, Lcom/appodeal/ads/n5;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/appodeal/ads/AppodealPackageAddedReceiver;

    invoke-direct {v1}, Lcom/appodeal/ads/AppodealPackageAddedReceiver;-><init>()V

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/AppodealPackageAddedReceiver;->register(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/appodeal/ads/i;->d(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    sget-object v1, Lcom/appodeal/ads/g1;->a:Lcom/appodeal/ads/i1;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, ""

    :cond_f
    invoke-virtual {v1, v0}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    sput-boolean v10, Lcom/appodeal/ads/q4;->b:Z

    :goto_9
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_a
    return-object v7
.end method

.method public static final a(Lcom/appodeal/ads/x4;Landroid/content/Context;Lcom/appodeal/ads/networking/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p3, Lcom/appodeal/ads/v4;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/appodeal/ads/v4;

    iget v1, v0, Lcom/appodeal/ads/v4;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/v4;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/v4;

    invoke-direct {v0, p0, p3}, Lcom/appodeal/ads/v4;-><init>(Lcom/appodeal/ads/x4;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/appodeal/ads/v4;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/ads/v4;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/appodeal/ads/v4;->a:Lcom/appodeal/ads/x4;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/appodeal/ads/x4;->c:Lcom/appodeal/ads/a3;

    iput-object p0, v0, Lcom/appodeal/ads/v4;->a:Lcom/appodeal/ads/x4;

    iput v3, v0, Lcom/appodeal/ads/v4;->d:I

    invoke-static {p3, p1, p2, v0}, Lcom/appodeal/ads/a3;->a(Lcom/appodeal/ads/a3;Landroid/content/Context;Lcom/appodeal/ads/networking/b;Lcom/appodeal/ads/v4;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    goto/16 :goto_5

    :cond_3
    :goto_1
    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_4

    instance-of v2, p2, Lcom/appodeal/ads/service/ServiceError;

    if-eqz v2, :cond_5

    move-object v0, p2

    check-cast v0, Lcom/appodeal/ads/service/ServiceError;

    :cond_5
    sget-object v2, Lcom/appodeal/ads/service/ServiceError$Adjust$NoAppToken;->INSTANCE:Lcom/appodeal/ads/service/ServiceError$Adjust$NoAppToken;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object p2, Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical$AdjustNotInitialized$NoAppToken;->INSTANCE:Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical$AdjustNotInitialized$NoAppToken;

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/appodeal/ads/service/ServiceError$Adjust$NoEnvironment;->INSTANCE:Lcom/appodeal/ads/service/ServiceError$Adjust$NoEnvironment;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p2, Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical$AdjustNotInitialized$NoEnvironment;->INSTANCE:Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical$AdjustNotInitialized$NoEnvironment;

    goto :goto_3

    :cond_7
    sget-object v2, Lcom/appodeal/ads/service/ServiceError$Appsflyer$NoAppIdProvided;->INSTANCE:Lcom/appodeal/ads/service/ServiceError$Appsflyer$NoAppIdProvided;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object p2, Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical$AppsflyerNotInitialized$NoAppIdProvided;->INSTANCE:Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical$AppsflyerNotInitialized$NoAppIdProvided;

    goto :goto_3

    :cond_8
    sget-object v2, Lcom/appodeal/ads/service/ServiceError$Appsflyer$NoDevKeyProvided;->INSTANCE:Lcom/appodeal/ads/service/ServiceError$Appsflyer$NoDevKeyProvided;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object p2, Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical$AppsflyerNotInitialized$NoDevKeyProvided;->INSTANCE:Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical$AppsflyerNotInitialized$NoDevKeyProvided;

    goto :goto_3

    :cond_9
    sget-object v2, Lcom/appodeal/ads/service/ServiceError$FacebookAnalytics$AppIdIsNotOverridden;->INSTANCE:Lcom/appodeal/ads/service/ServiceError$FacebookAnalytics$AppIdIsNotOverridden;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object p2, Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical$FacebookAnalyticsNotInitialized$AppIdIsNotOverridden;->INSTANCE:Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical$FacebookAnalyticsNotInitialized$AppIdIsNotOverridden;

    goto :goto_3

    :cond_a
    sget-object v2, Lcom/appodeal/ads/service/ServiceError$FacebookAnalytics$ClientTokenIsNotOverridden;->INSTANCE:Lcom/appodeal/ads/service/ServiceError$FacebookAnalytics$ClientTokenIsNotOverridden;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p2, Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical$FacebookAnalyticsNotInitialized$ClientTokenIsNotOverridden;->INSTANCE:Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical$FacebookAnalyticsNotInitialized$ClientTokenIsNotOverridden;

    goto :goto_3

    :cond_b
    new-instance v0, Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical$OtherError;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical$OtherError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    :goto_3
    iget-object v0, p0, Lcom/appodeal/ads/x4;->d:Lcom/appodeal/ads/initializing/a;

    invoke-interface {v0, p2}, Lcom/appodeal/ads/initializing/a;->a(Lcom/appodeal/ads/initializing/ApdInitializationError;)V

    goto/16 :goto_2

    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    move-object p1, v0

    :cond_d
    check-cast p1, Lcom/appodeal/ads/modules/common/internal/service/Service;

    if-nez p1, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    :goto_5
    return-object v1
.end method

.method public static final a(Lcom/appodeal/ads/x4;Landroid/content/Context;Lcom/appodeal/consent/Consent;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    instance-of v0, p5, Lcom/appodeal/ads/u4;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/appodeal/ads/u4;

    iget v1, v0, Lcom/appodeal/ads/u4;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/u4;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/u4;

    invoke-direct {v0, p0, p5}, Lcom/appodeal/ads/u4;-><init>(Lcom/appodeal/ads/x4;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p0, v0, Lcom/appodeal/ads/u4;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p5

    iget v1, v0, Lcom/appodeal/ads/u4;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p4, v0, Lcom/appodeal/ads/u4;->d:Ljava/lang/String;

    iget-object p3, v0, Lcom/appodeal/ads/u4;->c:Ljava/lang/Boolean;

    iget-object p2, v0, Lcom/appodeal/ads/u4;->b:Lcom/appodeal/consent/Consent;

    iget-object p1, v0, Lcom/appodeal/ads/u4;->a:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p0, Lcom/appodeal/advertising/AdvertisingInfo;->INSTANCE:Lcom/appodeal/advertising/AdvertisingInfo;

    iput-object p1, v0, Lcom/appodeal/ads/u4;->a:Landroid/content/Context;

    iput-object p2, v0, Lcom/appodeal/ads/u4;->b:Lcom/appodeal/consent/Consent;

    iput-object p3, v0, Lcom/appodeal/ads/u4;->c:Ljava/lang/Boolean;

    iput-object p4, v0, Lcom/appodeal/ads/u4;->d:Ljava/lang/String;

    iput v3, v0, Lcom/appodeal/ads/u4;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/appodeal/advertising/AdvertisingInfo;->getAdvertisingProfile(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p5, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p0, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "AdvertisingProfile"

    const-string v4, "Extract"

    invoke-static {v3, v4, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/appodeal/ads/x2;->a(Ljava/lang/Boolean;)V

    sget-object p3, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/appodeal/ads/x2;->a(Lcom/appodeal/consent/Consent;)V

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/appodeal/ads/u4;->a:Landroid/content/Context;

    iput-object p2, v0, Lcom/appodeal/ads/u4;->b:Lcom/appodeal/consent/Consent;

    iput-object p2, v0, Lcom/appodeal/ads/u4;->c:Ljava/lang/Boolean;

    iput-object p2, v0, Lcom/appodeal/ads/u4;->d:Ljava/lang/String;

    iput v2, v0, Lcom/appodeal/ads/u4;->g:I

    invoke-virtual {p3, p4, p1, p0, v0}, Lcom/appodeal/ads/x2;->a(Ljava/lang/String;Landroid/content/Context;Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p5, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    return-object p5
.end method

.method public static final a(Lcom/appodeal/ads/x4;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v0, p2, Lcom/appodeal/ads/w4;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/appodeal/ads/w4;

    iget v1, v0, Lcom/appodeal/ads/w4;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/w4;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/w4;

    invoke-direct {v0, p0, p2}, Lcom/appodeal/ads/w4;-><init>(Lcom/appodeal/ads/x4;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/appodeal/ads/w4;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/ads/w4;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, Lcom/appodeal/ads/w4;->a:Landroid/content/Context;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/appodeal/ads/x4;->i:Lcom/appodeal/ads/storage/a;

    iput-object p1, v0, Lcom/appodeal/ads/w4;->a:Landroid/content/Context;

    iput v4, v0, Lcom/appodeal/ads/w4;->d:I

    invoke-interface {p0, v0}, Lcom/appodeal/ads/storage/a;->a(Lcom/appodeal/ads/w4;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/appodeal/ads/k0;->a:Lcom/appodeal/ads/k0;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "applicationContext.packageName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/appodeal/ads/w4;->a:Landroid/content/Context;

    iput v3, v0, Lcom/appodeal/ads/w4;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/appodeal/ads/k0;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    return-object v1
.end method

.method public static final synthetic b(Lcom/appodeal/ads/x4;)Lcom/appodeal/ads/networking/usecases/a;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/x4;->a:Lcom/appodeal/ads/networking/usecases/a;

    return-object p0
.end method

.method public static final synthetic c(Lcom/appodeal/ads/x4;)Lcom/appodeal/ads/m1;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/x4;->e:Lcom/appodeal/ads/m1;

    return-object p0
.end method

.method public static final synthetic d(Lcom/appodeal/ads/x4;)Lcom/appodeal/ads/services/c$a;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/x4;->b:Lcom/appodeal/ads/services/c$a;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Application;Ljava/lang/String;Lcom/appodeal/consent/Consent;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Lcom/appodeal/consent/Consent;",
            "Ljava/lang/Boolean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/appodeal/ads/initializing/ApdInitializationError;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lcom/appodeal/ads/x4$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/appodeal/ads/x4$a;

    iget v3, v2, Lcom/appodeal/ads/x4$a;->i:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/appodeal/ads/x4$a;->i:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/appodeal/ads/x4$a;

    invoke-direct {v2, v0, v1}, Lcom/appodeal/ads/x4$a;-><init>(Lcom/appodeal/ads/x4;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/appodeal/ads/x4$a;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/appodeal/ads/x4$a;->i:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lcom/appodeal/ads/x4$a;->a:Lcom/appodeal/ads/x4;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v4, v2, Lcom/appodeal/ads/x4$a;->f:Landroid/content/Context;

    iget-object v6, v2, Lcom/appodeal/ads/x4$a;->e:Ljava/lang/Boolean;

    iget-object v7, v2, Lcom/appodeal/ads/x4$a;->d:Lcom/appodeal/consent/Consent;

    iget-object v8, v2, Lcom/appodeal/ads/x4$a;->c:Ljava/lang/String;

    iget-object v9, v2, Lcom/appodeal/ads/x4$a;->b:Landroid/app/Application;

    iget-object v10, v2, Lcom/appodeal/ads/x4$a;->a:Lcom/appodeal/ads/x4;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v6

    move-object v11, v7

    move-object v1, v10

    move-object v10, v4

    move-object v15, v9

    move-object v9, v8

    move-object v8, v15

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v1, Lcom/appodeal/ads/g1;->a:Lcom/appodeal/ads/i1;

    invoke-virtual {v1}, Lcom/appodeal/ads/i1;->a()V

    iget-object v1, v0, Lcom/appodeal/ads/x4;->j:Lcom/appodeal/ads/storage/a$a;

    iput-object v0, v2, Lcom/appodeal/ads/x4$a;->a:Lcom/appodeal/ads/x4;

    move-object/from16 v7, p1

    iput-object v7, v2, Lcom/appodeal/ads/x4$a;->b:Landroid/app/Application;

    move-object/from16 v8, p2

    iput-object v8, v2, Lcom/appodeal/ads/x4$a;->c:Ljava/lang/String;

    move-object/from16 v9, p3

    iput-object v9, v2, Lcom/appodeal/ads/x4$a;->d:Lcom/appodeal/consent/Consent;

    move-object/from16 v10, p4

    iput-object v10, v2, Lcom/appodeal/ads/x4$a;->e:Ljava/lang/Boolean;

    iput-object v4, v2, Lcom/appodeal/ads/x4$a;->f:Landroid/content/Context;

    iput v6, v2, Lcom/appodeal/ads/x4$a;->i:I

    invoke-interface {v1, v2}, Lcom/appodeal/ads/storage/a$a;->a(Lcom/appodeal/ads/x4$a;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v1, v0

    move-object v11, v9

    move-object v12, v10

    move-object v10, v4

    move-object v9, v8

    move-object v8, v7

    :goto_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v14, Lcom/appodeal/ads/x4$b;

    const/4 v13, 0x0

    move-object v6, v14

    move-object v7, v1

    invoke-direct/range {v6 .. v13}, Lcom/appodeal/ads/x4$b;-><init>(Lcom/appodeal/ads/x4;Landroid/app/Application;Ljava/lang/String;Landroid/content/Context;Lcom/appodeal/consent/Consent;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v2, Lcom/appodeal/ads/x4$a;->a:Lcom/appodeal/ads/x4;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/appodeal/ads/x4$a;->b:Landroid/app/Application;

    iput-object v6, v2, Lcom/appodeal/ads/x4$a;->c:Ljava/lang/String;

    iput-object v6, v2, Lcom/appodeal/ads/x4$a;->d:Lcom/appodeal/consent/Consent;

    iput-object v6, v2, Lcom/appodeal/ads/x4$a;->e:Ljava/lang/Boolean;

    iput-object v6, v2, Lcom/appodeal/ads/x4$a;->f:Landroid/content/Context;

    iput v5, v2, Lcom/appodeal/ads/x4$a;->i:I

    invoke-static {v4, v14, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_5

    return-object v3

    :cond_5
    move-object v2, v1

    :goto_2
    iget-object v1, v2, Lcom/appodeal/ads/x4;->d:Lcom/appodeal/ads/initializing/a;

    invoke-interface {v1}, Lcom/appodeal/ads/initializing/a;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object v3, v2, Lcom/appodeal/ads/x4;->d:Lcom/appodeal/ads/initializing/a;

    invoke-interface {v3}, Lcom/appodeal/ads/initializing/a;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appodeal/ads/initializing/ApdInitializationError;

    instance-of v5, v4, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical;

    if-eqz v5, :cond_6

    check-cast v4, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical;

    invoke-virtual {v4}, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical;->getDescription()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    instance-of v5, v4, Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical;

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v4, Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical;

    invoke-virtual {v4}, Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical;->getComponentName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/appodeal/ads/initializing/ApdInitializationError$NonCritical;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    instance-of v5, v4, Lcom/appodeal/ads/initializing/ApdInitializationError$InternalError;

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/appodeal/ads/initializing/ApdInitializationError;->getMessage()Ljava/lang/String;

    move-result-object v4

    :goto_4
    sget-object v5, Lcom/appodeal/ads/g1;->a:Lcom/appodeal/ads/i1;

    if-nez v4, :cond_8

    const-string v4, ""

    :cond_8
    invoke-virtual {v5, v4}, Lcom/appodeal/ads/i1;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 6
    :cond_a
    iget-object v2, v2, Lcom/appodeal/ads/x4;->d:Lcom/appodeal/ads/initializing/a;

    invoke-interface {v2}, Lcom/appodeal/ads/initializing/a;->clear()V

    invoke-static {v1}, Lcom/appodeal/ads/modules/common/internal/ext/ResultExtKt;->asSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
