.class public final Lcom/appodeal/ads/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/l1$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;Lcom/appodeal/ads/networking/b;ZLcom/appodeal/ads/b5;Ljava/lang/String;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;)Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;
    .locals 20

    const-string v0, "context"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variant"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadedConfig"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceConnector"

    move-object/from16 v15, p4

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceAdvertisingId"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationData"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceData"

    move-object/from16 v11, p7

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userPersonalData"

    move-object/from16 v10, p8

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/l1$a;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/networking/b;->e()Lcom/appodeal/ads/networking/b$e;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v18, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;

    move-object/from16 v1, v18

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$e;->c()Z

    move-result v5

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$e;->g()Z

    move-result v6

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$e;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$e;->f()Z

    move-result v8

    const/16 v16, 0x1800

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v9, p7

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    move/from16 v12, p3

    move-object/from16 v15, p4

    invoke-direct/range {v1 .. v17}, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;ZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/networking/b;->f()Lcom/appodeal/ads/networking/b$f;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$f;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$f;->e()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$f;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$f;->g()Z

    move-result v1

    move v15, v1

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$f;->c()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$f;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$f;->h()Z

    move-result v10

    new-instance v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;

    move-object v1, v0

    const/16 v18, 0x1000

    const/16 v19, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v11, p7

    move-object/from16 v12, p6

    move-object/from16 v13, p8

    move/from16 v14, p3

    move-object/from16 v17, p4

    invoke-direct/range {v1 .. v19}, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;ZLcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;ZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v18, v0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/networking/b;->d()Lcom/appodeal/ads/networking/b$d;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$d;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$d;->b()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$d;->f()Z

    move-result v9

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$d;->g()Z

    move-result v10

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$d;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;->Companion:Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$d;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;->get(Ljava/lang/String;)Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    move-result-object v6

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$d;->d()J

    move-result-wide v7

    new-instance v18, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Firebase;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v1 .. v12}, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Firebase;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;JZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/networking/b;->c()Lcom/appodeal/ads/networking/b$c;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v18, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$FacebookAnalytics;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$c;->b()Z

    move-result v4

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$c;->c()Z

    move-result v5

    const/4 v3, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$FacebookAnalytics;-><init>(Landroid/content/Context;ZZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/networking/b;->a()Lcom/appodeal/ads/networking/b$a;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v18, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Adjust;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$a;->c()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$a;->b()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;->Companion:Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;->get(Ljava/lang/String;)Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    move-result-object v7

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$a;->d()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$a;->f()Z

    move-result v10

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$a;->g()Z

    move-result v11

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v4, p5

    move/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v1 .. v13}, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Adjust;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;JZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/networking/b;->b()Lcom/appodeal/ads/networking/b$b;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_0
    const/16 v18, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$b;->b()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$b;->f()Z

    move-result v9

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$b;->g()Z

    move-result v10

    sget-object v1, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;->Companion:Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$b;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;->get(Ljava/lang/String;)Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    move-result-object v5

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$b;->d()J

    move-result-wide v7

    new-instance v18, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v1 .. v12}, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;Ljava/util/List;JZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V

    :goto_1
    return-object v18

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
