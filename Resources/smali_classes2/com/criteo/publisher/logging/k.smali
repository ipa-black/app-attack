.class public Lcom/criteo/publisher/logging/k;
.super Ljava/lang/Object;
.source "RemoteLogRecordsFactory.kt"


# instance fields
.field private final a:Ljava/text/SimpleDateFormat;

.field private final b:Lcom/criteo/publisher/n0/g;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/criteo/publisher/n0/b;

.field private final e:Lcom/criteo/publisher/z;

.field private final f:Lcom/criteo/publisher/i0/c;

.field private final g:Lcom/criteo/publisher/i;

.field private final h:Lcom/criteo/publisher/logging/i;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/n0/g;Landroid/content/Context;Lcom/criteo/publisher/n0/b;Lcom/criteo/publisher/z;Lcom/criteo/publisher/i0/c;Lcom/criteo/publisher/i;Lcom/criteo/publisher/logging/i;)V
    .locals 1

    const-string v0, "buildConfigWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisingInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "integrationRegistry"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherCodeRemover"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/logging/k;->b:Lcom/criteo/publisher/n0/g;

    iput-object p2, p0, Lcom/criteo/publisher/logging/k;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/criteo/publisher/logging/k;->d:Lcom/criteo/publisher/n0/b;

    iput-object p4, p0, Lcom/criteo/publisher/logging/k;->e:Lcom/criteo/publisher/z;

    iput-object p5, p0, Lcom/criteo/publisher/logging/k;->f:Lcom/criteo/publisher/i0/c;

    iput-object p6, p0, Lcom/criteo/publisher/logging/k;->g:Lcom/criteo/publisher/i;

    iput-object p7, p0, Lcom/criteo/publisher/logging/k;->h:Lcom/criteo/publisher/logging/i;

    .line 49
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string p3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {p1, p3, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 50
    const-string p2, "UTC"

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 49
    iput-object p1, p0, Lcom/criteo/publisher/logging/k;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/criteo/publisher/logging/k;->h:Lcom/criteo/publisher/logging/i;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/i;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/criteo/publisher/logging/k;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/criteo/publisher/logging/e;)Lcom/criteo/publisher/logging/RemoteLogRecords;
    .locals 13

    const-string v0, "logMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->Companion:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;

    invoke-virtual {p1}, Lcom/criteo/publisher/logging/e;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;->a(I)Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object v0

    .line 61
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/logging/k;->b(Lcom/criteo/publisher/logging/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance v3, Lcom/criteo/publisher/logging/RemoteLogRecords$b;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/criteo/publisher/logging/RemoteLogRecords$b;-><init>(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;Ljava/util/List;)V

    .line 69
    new-instance v0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    .line 70
    iget-object v1, p0, Lcom/criteo/publisher/logging/k;->b:Lcom/criteo/publisher/n0/g;

    invoke-virtual {v1}, Lcom/criteo/publisher/n0/g;->q()Ljava/lang/String;

    move-result-object v5

    const-string v1, "buildConfigWrapper.sdkVersion"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/criteo/publisher/logging/k;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v1, "context.packageName"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/criteo/publisher/logging/k;->d:Lcom/criteo/publisher/n0/b;

    invoke-virtual {v1}, Lcom/criteo/publisher/n0/b;->b()Ljava/lang/String;

    move-result-object v7

    .line 73
    iget-object v1, p0, Lcom/criteo/publisher/logging/k;->e:Lcom/criteo/publisher/z;

    invoke-virtual {v1}, Lcom/criteo/publisher/z;->b()Ljava/lang/String;

    move-result-object v8

    .line 74
    iget-object v1, p0, Lcom/criteo/publisher/logging/k;->f:Lcom/criteo/publisher/i0/c;

    invoke-virtual {v1}, Lcom/criteo/publisher/i0/c;->b()I

    move-result v9

    .line 75
    invoke-virtual {p1}, Lcom/criteo/publisher/logging/e;->d()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v10, v2

    .line 76
    invoke-virtual {p1}, Lcom/criteo/publisher/logging/e;->b()Ljava/lang/String;

    move-result-object v11

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "android-"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v4, v0

    .line 69
    invoke-direct/range {v4 .. v12}, Lcom/criteo/publisher/logging/RemoteLogRecords$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance p1, Lcom/criteo/publisher/logging/RemoteLogRecords;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/criteo/publisher/logging/RemoteLogRecords;-><init>(Lcom/criteo/publisher/logging/RemoteLogRecords$a;Ljava/util/List;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v2
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Thread.currentThread().name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/criteo/publisher/logging/e;)Ljava/lang/String;
    .locals 11

    const-string v0, "logMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/criteo/publisher/logging/e;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/criteo/publisher/logging/e;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 89
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/criteo/publisher/logging/k;->g:Lcom/criteo/publisher/i;

    invoke-interface {v2}, Lcom/criteo/publisher/i;->a()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 90
    iget-object v2, p0, Lcom/criteo/publisher/logging/k;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    .line 92
    new-array v2, v2, [Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/criteo/publisher/logging/e;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 94
    invoke-virtual {p1}, Lcom/criteo/publisher/logging/e;->d()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/criteo/publisher/logging/k;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "threadId:"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/criteo/publisher/logging/k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v2, v4

    const/4 p1, 0x3

    .line 96
    aput-object v0, v2, p1

    .line 92
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    move-object v2, p1

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method
