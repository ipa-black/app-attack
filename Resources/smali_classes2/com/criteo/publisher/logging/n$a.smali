.class public final Lcom/criteo/publisher/logging/n$a;
.super Lcom/criteo/publisher/x;
.source "RemoteLogSendingQueueConsumer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/logging/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final c:Lcom/criteo/publisher/f0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f0/k<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/criteo/publisher/k0/g;

.field private final e:Lcom/criteo/publisher/n0/g;

.field private final f:Lcom/criteo/publisher/n0/b;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/f0/k;Lcom/criteo/publisher/k0/g;Lcom/criteo/publisher/n0/g;Lcom/criteo/publisher/n0/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/f0/k<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;",
            "Lcom/criteo/publisher/k0/g;",
            "Lcom/criteo/publisher/n0/g;",
            "Lcom/criteo/publisher/n0/b;",
            ")V"
        }
    .end annotation

    const-string v0, "sendingQueue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildConfigWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisingInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/logging/n$a;->c:Lcom/criteo/publisher/f0/k;

    iput-object p2, p0, Lcom/criteo/publisher/logging/n$a;->d:Lcom/criteo/publisher/k0/g;

    iput-object p3, p0, Lcom/criteo/publisher/logging/n$a;->e:Lcom/criteo/publisher/n0/g;

    iput-object p4, p0, Lcom/criteo/publisher/logging/n$a;->f:Lcom/criteo/publisher/n0/b;

    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/criteo/publisher/logging/n$a;->f:Lcom/criteo/publisher/n0/b;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/logging/RemoteLogRecords;

    .line 71
    invoke-virtual {v1}, Lcom/criteo/publisher/logging/RemoteLogRecords;->a()Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/criteo/publisher/logging/RemoteLogRecords;->a()Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/criteo/publisher/logging/n$a;->c:Lcom/criteo/publisher/f0/k;

    iget-object v1, p0, Lcom/criteo/publisher/logging/n$a;->e:Lcom/criteo/publisher/n0/g;

    invoke-virtual {v1}, Lcom/criteo/publisher/n0/g;->o()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/criteo/publisher/f0/k;->a(I)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 54
    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/criteo/publisher/logging/n$a;->a(Ljava/util/List;)V

    .line 55
    iget-object v1, p0, Lcom/criteo/publisher/logging/n$a;->d:Lcom/criteo/publisher/k0/g;

    invoke-virtual {v1, v0}, Lcom/criteo/publisher/k0/g;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 82
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/criteo/publisher/logging/RemoteLogRecords;

    .line 60
    iget-object v3, p0, Lcom/criteo/publisher/logging/n$a;->c:Lcom/criteo/publisher/f0/k;

    invoke-interface {v3, v2}, Lcom/criteo/publisher/f0/k;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_1
    throw v1
.end method
