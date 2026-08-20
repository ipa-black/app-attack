.class public Lcom/appnext/base/services/OperationJobService;
.super Lcom/appnext/base/operations/AppnextOperationJobService;
.source "SourceFile"


# static fields
.field public static final SCHEDULE:Ljava/lang/String; = "schedule"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/appnext/base/operations/AppnextOperationJobService;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appnext/base/services/OperationJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/appnext/base/services/OperationJobService;->b(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method private static a(Landroid/os/PersistableBundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 87
    :cond_0
    :try_start_0
    const-string v1, "schedule"

    const-string v2, "false"

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return v0
.end method

.method private b(Landroid/app/job/JobParameters;)V
    .locals 0

    .line 96
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/appnext/base/services/OperationJobService;->a(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public onRunJob(Landroid/app/job/JobParameters;)I
    .locals 16

    .line 32
    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/base/services/OperationJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/appnext/base/b/e;->init(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/appnext/base/services/OperationJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appnext/base/b/i;->init(Landroid/content/Context;)V

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v0, v5

    goto :goto_0

    .line 1057
    :cond_0
    const-string v6, "key"

    invoke-virtual {v4, v6, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1058
    const-string v6, "cycle"

    invoke-virtual {v4, v6, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1059
    const-string v6, "cycle_type"

    invoke-virtual {v4, v6, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1060
    const-string v6, "sample"

    invoke-virtual {v4, v6, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1061
    const-string v6, "sample_type"

    invoke-virtual {v4, v6, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1062
    const-string v6, "service_key"

    invoke-virtual {v4, v6, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1063
    const-string v6, "status"

    invoke-virtual {v4, v6, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1064
    const-string v0, "data"

    invoke-virtual {v4, v0, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1066
    new-instance v0, Lcom/appnext/base/a/b/c;

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Lcom/appnext/base/a/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_1

    .line 39
    invoke-direct/range {p0 .. p1}, Lcom/appnext/base/services/OperationJobService;->b(Landroid/app/job/JobParameters;)V

    return v1

    .line 43
    :cond_1
    invoke-static {v4}, Lcom/appnext/base/services/OperationJobService;->a(Landroid/os/PersistableBundle;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 44
    invoke-direct/range {p0 .. p1}, Lcom/appnext/base/services/OperationJobService;->b(Landroid/app/job/JobParameters;)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/base/services/OperationJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/appnext/base/services/b/a;->d(Landroid/content/Context;)Lcom/appnext/base/services/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/appnext/base/services/b/a;->a(Lcom/appnext/base/a/b/c;Z)V

    return v1

    :cond_2
    if-eqz v4, :cond_3

    .line 52
    const-string v3, "more_data"

    invoke-virtual {v4, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 54
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 55
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    :cond_3
    move-object v10, v5

    .line 58
    new-instance v6, Lcom/appnext/base/services/b;

    invoke-direct {v6}, Lcom/appnext/base/services/b;-><init>()V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/base/services/OperationJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Lcom/appnext/base/services/OperationJobService$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    :try_start_1
    invoke-direct {v12, v0, v3, v2}, Lcom/appnext/base/services/OperationJobService$1;-><init>(Lcom/appnext/base/services/OperationJobService;Landroid/app/job/JobParameters;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/appnext/base/services/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Lcom/appnext/base/operations/a$a;)V

    .line 72
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-object/from16 v0, p0

    :catchall_1
    :goto_1
    return v1
.end method
