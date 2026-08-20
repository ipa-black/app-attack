.class public final Lcom/appodeal/ads/g4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/g4$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/appodeal/ads/storage/a;

.field public final c:Lcom/appodeal/ads/services/c;

.field public final d:Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/ads/storage/o;Lcom/appodeal/ads/services/c;Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValueStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "servicesSolution"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "servicesRegistry"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/g4;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/appodeal/ads/g4;->b:Lcom/appodeal/ads/storage/a;

    iput-object p3, p0, Lcom/appodeal/ads/g4;->c:Lcom/appodeal/ads/services/c;

    iput-object p4, p0, Lcom/appodeal/ads/g4;->d:Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/networking/binders/b$e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/appodeal/ads/g4$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/appodeal/ads/g4$b;

    iget v3, v2, Lcom/appodeal/ads/g4$b;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/appodeal/ads/g4$b;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/appodeal/ads/g4$b;

    invoke-direct {v2, v0, v1}, Lcom/appodeal/ads/g4$b;-><init>(Lcom/appodeal/ads/g4;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/appodeal/ads/g4$b;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/appodeal/ads/g4$b;->d:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lcom/appodeal/ads/g4$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/appodeal/ads/g4;->b:Lcom/appodeal/ads/storage/a;

    move-object/from16 v4, p1

    iput-object v4, v2, Lcom/appodeal/ads/g4$b;->a:Landroid/content/Context;

    iput v5, v2, Lcom/appodeal/ads/g4$b;->d:I

    invoke-interface {v1, v2}, Lcom/appodeal/ads/storage/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    move-object v2, v4

    :goto_1
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v12, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-static {v2}, Lcom/appodeal/ads/f1;->o(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v5

    const-string v6, "getScreenSize(context)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/appodeal/ads/modules/common/internal/Constants;->SDK_VERSION:Ljava/lang/String;

    invoke-static {}, Lcom/appodeal/ads/f1;->i()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getVersionRelease()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/f1;->i()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lcom/appodeal/ads/utils/d;->a:Ljava/lang/String;

    const-string v11, "PLATFORM_VALUE"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/f1;->i()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/f1;->j()I

    move-result v13

    invoke-static {v2}, Lcom/appodeal/ads/f1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    const-string v8, "packageName"

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v15, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 p1, v14

    move-object/from16 v16, v15

    iget-wide v14, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const/16 v3, 0x3e8

    move-object/from16 p2, v10

    move-object/from16 v17, v11

    int-to-long v10, v3

    div-long/2addr v14, v10

    invoke-static {v14, v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "unknown"

    :cond_4
    move-object v15, v1

    invoke-static {}, Lcom/appodeal/ads/q4;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/appodeal/ads/q4;->g()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/appodeal/ads/q4;->j()Ljava/lang/String;

    move-result-object v19

    invoke-static {v2}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v3

    float-to-double v10, v3

    invoke-static {v2}, Lcom/appodeal/ads/f1;->r(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "tablet"

    goto :goto_2

    :cond_5
    const-string v3, "phone"

    :goto_2
    move-object/from16 v21, v3

    invoke-static {}, Lcom/appodeal/ads/r0;->c()Z

    move-result v22

    invoke-static {}, Lcom/appodeal/ads/f1;->b()Ljava/lang/String;

    move-result-object v8

    const-string v3, "getManufacturer()"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/appodeal/ads/f1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/appodeal/ads/f1;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lcom/appodeal/ads/f1;->m()Z

    move-result v25

    invoke-static {v2}, Lcom/appodeal/ads/n5;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    iget v0, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Lcom/appodeal/ads/f1;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    invoke-static {v2}, Lcom/appodeal/ads/f1;->b(Landroid/content/Context;)F

    move-result v3

    move/from16 v27, v0

    move-object/from16 v20, v1

    float-to-double v0, v3

    invoke-static {}, Lcom/appodeal/ads/f1;->g()J

    move-result-wide v32

    invoke-static {}, Lcom/appodeal/ads/f1;->f()J

    move-result-wide v34

    invoke-static {}, Lcom/appodeal/ads/f1;->h()J

    move-result-wide v36

    invoke-static {v2}, Lcom/appodeal/ads/f1;->k(Landroid/content/Context;)J

    move-result-wide v38

    invoke-static {v2}, Lcom/appodeal/ads/f1;->j(Landroid/content/Context;)J

    move-result-wide v40

    invoke-static {}, Lcom/appodeal/ads/f1;->e()J

    move-result-wide v42

    invoke-static {}, Lcom/appodeal/ads/f1;->a()F

    move-result v2

    float-to-double v2, v2

    invoke-static {}, Lcom/appodeal/ads/i0;->a()Z

    move-result v46

    sget-boolean v23, Lcom/appodeal/ads/r0;->b:Z

    invoke-static/range {v23 .. v23}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object v23, Lcom/appodeal/ads/ExtraData;->INSTANCE:Lcom/appodeal/ads/ExtraData;

    invoke-virtual/range {v23 .. v23}, Lcom/appodeal/ads/ExtraData;->isNotEmpty()Z

    move-result v28

    if-eqz v28, :cond_6

    invoke-virtual/range {v23 .. v23}, Lcom/appodeal/ads/ExtraData;->asJson()Lorg/json/JSONObject;

    move-result-object v23

    goto :goto_3

    :cond_6
    const/16 v23, 0x0

    :goto_3
    move-object/from16 v48, v23

    new-instance v49, Lcom/appodeal/ads/networking/binders/b$e;

    move-wide/from16 v44, v2

    move-object/from16 v3, v49

    move v2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object/from16 v23, v8

    move-object/from16 v8, p2

    move-object/from16 v9, v17

    move-wide/from16 v30, v10

    move v10, v13

    move-object/from16 v11, p1

    move-object/from16 v13, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-wide/from16 v19, v30

    move/from16 v28, v2

    move-wide/from16 v30, v0

    invoke-direct/range {v3 .. v48}, Lcom/appodeal/ads/networking/binders/b$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;DJJJJJJDZLjava/lang/Boolean;Lorg/json/JSONObject;)V

    return-object v49

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App key not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/appodeal/ads/networking/binders/c;Lcom/appodeal/ads/r;Lcom/appodeal/ads/s;Lcom/appodeal/ads/u;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/networking/binders/c;",
            "Lcom/appodeal/ads/r<",
            "*>;",
            "Lcom/appodeal/ads/s<",
            "*>;",
            "Lcom/appodeal/ads/u<",
            "***>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/networking/binders/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    instance-of v2, v0, Lcom/appodeal/ads/g4$c;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/appodeal/ads/g4$c;

    iget v3, v2, Lcom/appodeal/ads/g4$c;->c:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/appodeal/ads/g4$c;->c:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/appodeal/ads/g4$c;

    invoke-direct {v2, v1, v0}, Lcom/appodeal/ads/g4$c;-><init>(Lcom/appodeal/ads/g4;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/appodeal/ads/g4$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/appodeal/ads/g4$c;->c:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v4, 0x3e8

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lcom/appodeal/ads/g4;->a:Landroid/content/Context;

    iput v5, v2, Lcom/appodeal/ads/g4$c;->c:I

    invoke-virtual {v1, v0, v2}, Lcom/appodeal/ads/g4;->a(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v0, Lcom/appodeal/ads/networking/binders/b;

    goto/16 :goto_13

    :pswitch_1
    if-nez p3, :cond_4

    return-object v9

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/appodeal/ads/s;->b()Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object v2, v1, Lcom/appodeal/ads/g4;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/appodeal/ads/utils/z;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    sget-object v3, Lcom/appodeal/ads/r0;->a:Lcom/appodeal/ads/r0;

    invoke-static {}, Lcom/appodeal/ads/r0;->a()Ljava/lang/String;

    move-result-object v3

    .line 1
    new-instance v4, Lcom/appodeal/ads/networking/binders/b$g;

    if-eqz v3, :cond_5

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_5
    invoke-direct {v4, v0, v2, v9}, Lcom/appodeal/ads/networking/binders/b$g;-><init>(Ljava/lang/Boolean;Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    :pswitch_2
    if-nez p2, :cond_6

    return-object v9

    .line 2
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/r;->n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v0

    const-string v2, "adRequest.type"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/r;->n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v3

    new-array v4, v5, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    sget-object v7, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Impression:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v12

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/appodeal/ads/utils/EventsTracker;->b(Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v13

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/r;->n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v3

    new-array v4, v5, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    sget-object v7, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Click:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v14

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/appodeal/ads/utils/EventsTracker;->b(Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v15

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    sget-object v3, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Video:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Rewarded:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    aput-object v3, v2, v5

    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/r;->n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v3

    const-string v4, "adRequest.type"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/r;->n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v3

    new-array v4, v5, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    sget-object v5, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Finish:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_7
    move-object/from16 v16, v9

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v2

    sget-object v3, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Finish:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/utils/EventsTracker;->b(Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v17

    .line 3
    new-instance v2, Lcom/appodeal/ads/networking/binders/b$b;

    new-instance v3, Lcom/appodeal/ads/networking/binders/b$b$a;

    invoke-virtual {v0}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getServerCodeName()Ljava/lang/String;

    move-result-object v11

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Lcom/appodeal/ads/networking/binders/b$b$a;-><init>(Ljava/lang/String;IIIILjava/lang/Integer;I)V

    invoke-direct {v2, v3}, Lcom/appodeal/ads/networking/binders/b$b;-><init>(Lcom/appodeal/ads/networking/binders/b$b$a;)V

    goto/16 :goto_d

    .line 4
    :pswitch_3
    invoke-static {}, Lcom/appodeal/ads/q4;->m()Lcom/appodeal/ads/utils/x;

    move-result-object v0

    iget-object v2, v1, Lcom/appodeal/ads/g4;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/appodeal/ads/utils/x;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 5
    new-instance v2, Lcom/appodeal/ads/networking/binders/b$m;

    invoke-direct {v2, v0}, Lcom/appodeal/ads/networking/binders/b$m;-><init>(Lorg/json/JSONArray;)V

    goto/16 :goto_d

    .line 6
    :pswitch_4
    invoke-static {}, Lcom/appodeal/ads/q4;->m()Lcom/appodeal/ads/utils/x;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x;->m()V

    new-instance v2, Lcom/appodeal/ads/networking/binders/b$l;

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x;->g()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x;->j()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x;->h()J

    move-result-wide v13

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x;->i()J

    move-result-wide v15

    .line 8
    iget-object v3, v0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    if-nez v3, :cond_8

    move-wide/from16 v17, v7

    goto :goto_2

    :cond_8
    monitor-enter v3

    .line 9
    :try_start_0
    iget-wide v4, v3, Lcom/appodeal/ads/utils/w;->c:J

    const-wide/16 v17, 0x3e8

    div-long v4, v4, v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v3

    move-wide/from16 v17, v4

    .line 10
    :goto_2
    iget-object v3, v0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    if-nez v3, :cond_9

    :goto_3
    move-wide/from16 v19, v7

    goto :goto_4

    :cond_9
    monitor-enter v3

    .line 11
    :try_start_1
    iget-wide v7, v3, Lcom/appodeal/ads/utils/w;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    goto :goto_3

    .line 12
    :goto_4
    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x;->e()J

    move-result-wide v21

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x;->f()J

    move-result-wide v23

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x;->c()J

    move-result-wide v25

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x;->d()J

    move-result-wide v27

    move-object v9, v2

    invoke-direct/range {v9 .. v28}, Lcom/appodeal/ads/networking/binders/b$l;-><init>(JLjava/lang/String;JJJJJJJJ)V

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 13
    monitor-exit v3

    throw v2

    :catchall_1
    move-exception v0

    .line 14
    monitor-exit v3

    throw v0

    .line 15
    :pswitch_5
    iget-object v0, v1, Lcom/appodeal/ads/g4;->c:Lcom/appodeal/ads/services/c;

    invoke-interface {v0}, Lcom/appodeal/ads/services/c;->getServicesData()Ljava/util/ArrayList;

    move-result-object v0

    .line 16
    new-instance v2, Lcom/appodeal/ads/networking/binders/b$k;

    invoke-direct {v2, v0}, Lcom/appodeal/ads/networking/binders/b$k;-><init>(Ljava/util/List;)V

    goto/16 :goto_d

    .line 17
    :pswitch_6
    invoke-static {}, Lcom/appodeal/ads/segments/j;->a()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "getCustomRuleValues()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object v2

    const-string v3, "get()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v3, Lcom/appodeal/ads/networking/binders/b$i;

    new-instance v4, Lcom/appodeal/ads/h4;

    invoke-direct {v4, v0, v2}, Lcom/appodeal/ads/h4;-><init>(Ljava/util/HashMap;Lcom/appodeal/ads/l5;)V

    invoke-static {v4}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilderKt;->jsonObject(Lkotlin/jvm/functions/Function1;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/appodeal/ads/networking/binders/b$i;-><init>(Lorg/json/JSONObject;)V

    move-object v0, v3

    goto/16 :goto_13

    .line 19
    :pswitch_7
    iget-object v0, v1, Lcom/appodeal/ads/g4;->a:Landroid/content/Context;

    .line 20
    sget-object v2, Lcom/appodeal/ads/j4;->a:Lcom/appodeal/ads/j4;

    const-string v3, "instance"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v3, "getDefault().toString()"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/x2;->j()Z

    move-result v13

    invoke-static {}, Lcom/appodeal/ads/x2;->d()Lcom/appodeal/consent/Consent;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Lcom/appodeal/consent/Consent;->toJson()Lorg/json/JSONObject;

    move-result-object v9

    :goto_5
    move-object v14, v9

    invoke-static {}, Lcom/appodeal/ads/x2;->f()Lorg/json/JSONObject;

    move-result-object v15

    .line 22
    invoke-virtual {v2}, Lcom/appodeal/ads/j4;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v0}, Lcom/appodeal/ads/j4;->getHttpAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "Z"

    invoke-direct {v3, v5, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "run {\n                va\u2026  localTime\n            }"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v4

    div-long v18, v2, v4

    new-instance v2, Lcom/appodeal/ads/networking/binders/b$n;

    move-object v10, v2

    move-object/from16 v17, v0

    invoke-direct/range {v10 .. v19}, Lcom/appodeal/ads/networking/binders/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_d

    .line 23
    :pswitch_8
    sget-object v0, Lcom/appodeal/ads/j4;->a:Lcom/appodeal/ads/j4;

    const-string v2, "instance"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v2, v1, Lcom/appodeal/ads/g4;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/appodeal/ads/j4;->getLocation(Landroid/content/Context;)Lcom/appodeal/ads/LocationData;

    move-result-object v0

    const-string v2, "restrictedData.getLocation(context)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v2, Lcom/appodeal/ads/networking/binders/b$h;

    check-cast v0, Lcom/appodeal/ads/z1;

    invoke-virtual {v0}, Lcom/appodeal/ads/z1;->getDeviceLocationType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appodeal/ads/z1;->obtainLatitude()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0}, Lcom/appodeal/ads/z1;->obtainLongitude()Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/appodeal/ads/networking/binders/b$h;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    goto/16 :goto_d

    .line 26
    :pswitch_9
    sget-object v0, Lcom/appodeal/ads/j4;->a:Lcom/appodeal/ads/j4;

    const-string v2, "instance"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v2, v1, Lcom/appodeal/ads/g4;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/appodeal/ads/j4;->getConnectionData(Landroid/content/Context;)Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;

    move-result-object v0

    .line 28
    new-instance v2, Lcom/appodeal/ads/networking/binders/b$f;

    invoke-virtual {v0}, Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;->getSubType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/appodeal/ads/networking/binders/b$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 29
    :pswitch_a
    sget-object v0, Lcom/appodeal/ads/j4;->a:Lcom/appodeal/ads/j4;

    const-string v2, "instance"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/appodeal/ads/x2;->h()Z

    move-result v2

    .line 31
    invoke-virtual {v0}, Lcom/appodeal/ads/j4;->getIfa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appodeal/ads/j4;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "0"

    goto :goto_6

    :cond_b
    const-string v0, "1"

    :goto_6
    new-instance v4, Lcom/appodeal/ads/networking/binders/b$d;

    const-string v5, "ifa"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v3, v0, v2}, Lcom/appodeal/ads/networking/binders/b$d;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_7
    move-object v0, v4

    goto/16 :goto_13

    :pswitch_b
    if-nez p4, :cond_c

    goto :goto_8

    .line 32
    :cond_c
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    :goto_8
    if-nez v9, :cond_d

    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/q4;->d()Ljava/util/List;

    move-result-object v9

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/u;

    invoke-virtual {v3}, Lcom/appodeal/ads/u;->g()Lcom/appodeal/ads/i;

    move-result-object v3

    iget-object v4, v1, Lcom/appodeal/ads/g4;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/appodeal/ads/i;->b(Landroid/content/Context;)Lcom/appodeal/ads/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appodeal/ads/i;->b()Ljava/util/Collection;

    move-result-object v3

    const-string v4, "adController.networkRegi\u2026     .getLoadedNetworks()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_9

    :cond_e
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/appodeal/ads/AdNetwork;

    invoke-virtual {v5}, Lcom/appodeal/ads/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    const/16 v0, 0xa

    .line 33
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appodeal/ads/AdNetwork;

    invoke-virtual {v5}, Lcom/appodeal/ads/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/appodeal/ads/networking/binders/a;

    invoke-virtual {v5}, Lcom/appodeal/ads/AdNetwork;->getAdapterVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "network.adapterVersion"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/appodeal/ads/AdNetwork;->getVersion()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11

    const-string v5, ""

    :cond_11
    invoke-direct {v7, v8, v5}, Lcom/appodeal/ads/networking/binders/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/AdNetwork;

    invoke-virtual {v3}, Lcom/appodeal/ads/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_13
    new-instance v0, Lcom/appodeal/ads/networking/binders/b$c;

    invoke-direct {v0, v2, v4}, Lcom/appodeal/ads/networking/binders/b$c;-><init>(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    goto/16 :goto_13

    .line 34
    :pswitch_c
    iget-object v0, v1, Lcom/appodeal/ads/g4;->d:Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;

    invoke-interface {v0}, Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;->getAvailableServicesInfo()Ljava/util/List;

    move-result-object v0

    .line 35
    new-instance v2, Lcom/appodeal/ads/networking/binders/b$j;

    invoke-direct {v2, v0}, Lcom/appodeal/ads/networking/binders/b$j;-><init>(Ljava/util/List;)V

    :goto_d
    move-object v0, v2

    goto/16 :goto_13

    :pswitch_d
    if-nez p2, :cond_14

    return-object v9

    .line 36
    :cond_14
    iget-object v0, v1, Lcom/appodeal/ads/g4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/appodeal/ads/t0;->a(Landroid/content/Context;)Z

    move-result v0

    .line 37
    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/r;->n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v2

    sget-object v3, Lcom/appodeal/ads/g4$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_e
    const-string v2, "native"

    goto :goto_e

    :pswitch_f
    const-string v2, "video"

    goto :goto_e

    :pswitch_10
    const-string v2, "banner"

    goto :goto_e

    :pswitch_11
    const-string v2, "banner_mrec"

    goto :goto_e

    :pswitch_12
    const-string v2, "banner_320"

    :goto_e
    move-object v11, v2

    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/r;->n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v2

    sget-object v3, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Rewarded:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    if-ne v2, v3, :cond_15

    goto :goto_f

    :cond_15
    move v5, v6

    :goto_f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/r;->o()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/r;->x()Ljava/lang/Long;

    move-result-object v0

    const-string v2, "adRequest.obtainSegmentId()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/r;->m()J

    move-result-wide v2

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-eqz v2, :cond_16

    move-object/from16 v17, v0

    goto :goto_10

    :cond_16
    move-object/from16 v17, v9

    :goto_10
    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/r;->e()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-eqz v2, :cond_17

    move-object/from16 v18, v0

    goto :goto_11

    :cond_17
    move-object/from16 v18, v9

    :goto_11
    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/r;->f()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-eqz v2, :cond_18

    move-object/from16 v19, v0

    goto :goto_12

    :cond_18
    move-object/from16 v19, v9

    :goto_12
    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/r;->g()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/r;->d()Lcom/appodeal/ads/networking/binders/b$a$a;

    move-result-object v21

    new-instance v0, Lcom/appodeal/ads/networking/binders/b$a;

    move-object v10, v0

    invoke-direct/range {v10 .. v21}, Lcom/appodeal/ads/networking/binders/b$a;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/appodeal/ads/networking/binders/b$a$a;)V

    :goto_13
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method
