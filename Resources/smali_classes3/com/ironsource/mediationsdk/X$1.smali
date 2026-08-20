.class final Lcom/ironsource/mediationsdk/X$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/X;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/X;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string v0, "Rewarded Video - load instance time out"

    iget-object v1, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/X;->a(Lcom/ironsource/mediationsdk/X;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/X;->b(Lcom/ironsource/mediationsdk/X;)Lcom/ironsource/mediationsdk/X$a;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/X$a;->d:Lcom/ironsource/mediationsdk/X$a;

    const/16 v4, 0x401

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/X;->b(Lcom/ironsource/mediationsdk/X;)Lcom/ironsource/mediationsdk/X$a;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/X$a;->b:Lcom/ironsource/mediationsdk/X$a;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v6

    move v3, v2

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/X;->b(Lcom/ironsource/mediationsdk/X;)Lcom/ironsource/mediationsdk/X$a;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/X$a;->d:Lcom/ironsource/mediationsdk/X$a;

    if-ne v2, v3, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    const-string v0, "Rewarded Video - init instance time out"

    const/16 v2, 0x408

    :goto_1
    iget-object v3, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    sget-object v7, Lcom/ironsource/mediationsdk/X$a;->c:Lcom/ironsource/mediationsdk/X$a;

    invoke-static {v3, v7}, Lcom/ironsource/mediationsdk/X;->a(Lcom/ironsource/mediationsdk/X;Lcom/ironsource/mediationsdk/X$a;)V

    move v3, v5

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/X;->a(Lcom/ironsource/mediationsdk/X;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v7, 0x2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    new-array v4, v7, [[Ljava/lang/Object;

    const-string v8, "errorCode"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v6

    const-string v8, "duration"

    iget-object v9, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    invoke-static {v9}, Lcom/ironsource/mediationsdk/X;->c(Lcom/ironsource/mediationsdk/X;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v5

    const/16 v8, 0x4b0

    invoke-virtual {v3, v8, v4}, Lcom/ironsource/mediationsdk/X;->b(I[[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    new-array v1, v1, [[Ljava/lang/Object;

    const-string v4, "errorCode"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "reason"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "duration"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/X;->c(Lcom/ironsource/mediationsdk/X;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v7

    const/16 v0, 0x4bc

    invoke-virtual {v3, v0, v1}, Lcom/ironsource/mediationsdk/X;->b(I[[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/X;->e(Lcom/ironsource/mediationsdk/X;)Lcom/ironsource/mediationsdk/W;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/X;->d(Lcom/ironsource/mediationsdk/X;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/W;->b(Lcom/ironsource/mediationsdk/X;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    new-array v1, v1, [[Ljava/lang/Object;

    const-string v2, "errorCode"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "duration"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/X;->c(Lcom/ironsource/mediationsdk/X;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "ext1"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/X$1;->a:Lcom/ironsource/mediationsdk/X;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/X;->b(Lcom/ironsource/mediationsdk/X;)Lcom/ironsource/mediationsdk/X$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/X$a;->name()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x4b8

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/mediationsdk/X;->b(I[[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
