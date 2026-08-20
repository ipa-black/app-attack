.class public Lcom/criteo/publisher/logging/j;
.super Ljava/lang/Object;
.source "RemoteHandler.kt"

# interfaces
.implements Lcom/criteo/publisher/logging/d;


# instance fields
.field private final a:Lcom/criteo/publisher/logging/k;

.field private final b:Lcom/criteo/publisher/f0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f0/k<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/criteo/publisher/model/t;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/criteo/publisher/l0/a;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/logging/k;Lcom/criteo/publisher/f0/k;Lcom/criteo/publisher/model/t;Ljava/util/concurrent/Executor;Lcom/criteo/publisher/l0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/logging/k;",
            "Lcom/criteo/publisher/f0/k<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;",
            "Lcom/criteo/publisher/model/t;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/criteo/publisher/l0/a;",
            ")V"
        }
    .end annotation

    const-string v0, "remoteLogRecordsFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendingQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentData"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/logging/j;->a:Lcom/criteo/publisher/logging/k;

    iput-object p2, p0, Lcom/criteo/publisher/logging/j;->b:Lcom/criteo/publisher/f0/k;

    iput-object p3, p0, Lcom/criteo/publisher/logging/j;->c:Lcom/criteo/publisher/model/t;

    iput-object p4, p0, Lcom/criteo/publisher/logging/j;->d:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/criteo/publisher/logging/j;->e:Lcom/criteo/publisher/l0/a;

    return-void
.end method

.method public static final synthetic a(Lcom/criteo/publisher/logging/j;)Lcom/criteo/publisher/f0/k;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/criteo/publisher/logging/j;->b:Lcom/criteo/publisher/f0/k;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/criteo/publisher/logging/e;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "logMessage"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/criteo/publisher/logging/j;->e:Lcom/criteo/publisher/l0/a;

    invoke-virtual {p1}, Lcom/criteo/publisher/l0/a;->b()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    sget-object p1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->Companion:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;

    invoke-virtual {p2}, Lcom/criteo/publisher/logging/e;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;->a(I)Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/criteo/publisher/logging/j;->c:Lcom/criteo/publisher/model/t;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/t;->f()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object v0

    const-string v1, "config.remoteLogLevel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 43
    iget-object p1, p0, Lcom/criteo/publisher/logging/j;->a:Lcom/criteo/publisher/logging/k;

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/logging/k;->a(Lcom/criteo/publisher/logging/e;)Lcom/criteo/publisher/logging/RemoteLogRecords;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/criteo/publisher/logging/j;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 46
    iget-object p2, p0, Lcom/criteo/publisher/logging/j;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/criteo/publisher/logging/j$a;

    invoke-direct {v0, p1, p0}, Lcom/criteo/publisher/logging/j$a;-><init>(Lcom/criteo/publisher/logging/RemoteLogRecords;Lcom/criteo/publisher/logging/j;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 52
    :cond_2
    iget-object p2, p0, Lcom/criteo/publisher/logging/j;->b:Lcom/criteo/publisher/f0/k;

    invoke-interface {p2, p1}, Lcom/criteo/publisher/f0/k;->a(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 2

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
