.class Lorg/apache/mina/util/BaseThreadPool$Worker;
.super Ljava/lang/Thread;
.source "BaseThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/BaseThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final promotionLock:Ljava/lang/Object;

.field private final synthetic this$0:Lorg/apache/mina/util/BaseThreadPool;


# direct methods
.method private constructor <init>(Lorg/apache/mina/util/BaseThreadPool;)V
    .locals 2

    .line 249
    iput-object p1, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "IoThreadPool-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/mina/util/BaseThreadPool;->access$408()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->promotionLock:Ljava/lang/Object;

    .line 251
    invoke-static {p1}, Lorg/apache/mina/util/BaseThreadPool;->access$500(Lorg/apache/mina/util/BaseThreadPool;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/util/BaseThreadPool;Lorg/apache/mina/util/BaseThreadPool$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lorg/apache/mina/util/BaseThreadPool$Worker;-><init>(Lorg/apache/mina/util/BaseThreadPool;)V

    return-void
.end method

.method private fetchBuffer()Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;
    .locals 4

    .line 290
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v0}, Lorg/apache/mina/util/BaseThreadPool;->access$800(Lorg/apache/mina/util/BaseThreadPool;)Lorg/apache/mina/util/BlockingSet;

    move-result-object v0

    .line 291
    monitor-enter v0

    .line 298
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/util/BlockingSet;->waitForNewItem()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/util/BlockingSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 306
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 315
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;

    .line 316
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    if-eqz v2, :cond_2

    .line 319
    invoke-static {v2}, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;->access$100(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)Lorg/apache/mina/util/Queue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    if-eqz v2, :cond_3

    .line 321
    invoke-static {v2}, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;->access$100(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)Lorg/apache/mina/util/Queue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    :goto_0
    const/4 v2, 0x0

    .line 322
    :cond_3
    :goto_1
    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private follow()V
    .locals 3

    .line 347
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->promotionLock:Ljava/lang/Object;

    .line 348
    iget-object v1, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v1}, Lorg/apache/mina/util/BaseThreadPool;->access$900(Lorg/apache/mina/util/BaseThreadPool;)Lorg/apache/mina/util/Stack;

    move-result-object v1

    .line 349
    monitor-enter v0

    .line 351
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v2}, Lorg/apache/mina/util/BaseThreadPool;->access$600(Lorg/apache/mina/util/BaseThreadPool;)Lorg/apache/mina/util/BaseThreadPool$Worker;

    move-result-object v2

    if-eq p0, v2, :cond_0

    .line 353
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 355
    :try_start_1
    invoke-virtual {v1, p0}, Lorg/apache/mina/util/Stack;->push(Ljava/lang/Object;)V

    .line 356
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 358
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private giveUpLead()V
    .locals 3

    .line 423
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v0}, Lorg/apache/mina/util/BaseThreadPool;->access$900(Lorg/apache/mina/util/BaseThreadPool;)Lorg/apache/mina/util/Stack;

    move-result-object v0

    .line 425
    monitor-enter v0

    .line 427
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/util/BaseThreadPool$Worker;

    .line 428
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {v1}, Lorg/apache/mina/util/BaseThreadPool$Worker;->lead()V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v0}, Lorg/apache/mina/util/BaseThreadPool;->access$1200(Lorg/apache/mina/util/BaseThreadPool;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 438
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    monitor-enter v0

    .line 440
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v1}, Lorg/apache/mina/util/BaseThreadPool;->access$1200(Lorg/apache/mina/util/BaseThreadPool;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-virtual {v1}, Lorg/apache/mina/util/BaseThreadPool;->getPoolSize()I

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-virtual {v2}, Lorg/apache/mina/util/BaseThreadPool;->getMaximumPoolSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 443
    new-instance v1, Lorg/apache/mina/util/BaseThreadPool$Worker;

    iget-object v2, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-direct {v1, v2}, Lorg/apache/mina/util/BaseThreadPool$Worker;-><init>(Lorg/apache/mina/util/BaseThreadPool;)V

    .line 444
    invoke-virtual {v1}, Lorg/apache/mina/util/BaseThreadPool$Worker;->start()V

    .line 445
    invoke-virtual {v1}, Lorg/apache/mina/util/BaseThreadPool$Worker;->lead()V

    .line 447
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void

    :catchall_1
    move-exception v1

    .line 428
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private processEvents(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)V
    .locals 6

    .line 329
    invoke-static {p1}, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;->access$300(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)Lorg/apache/mina/common/Session;

    move-result-object v0

    .line 330
    invoke-static {p1}, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;->access$100(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)Lorg/apache/mina/util/Queue;

    move-result-object v1

    .line 334
    :goto_0
    monitor-enter p1

    .line 336
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/util/Event;

    if-nez v2, :cond_0

    .line 338
    monitor-exit p1

    return-void

    .line 339
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iget-object v3, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-virtual {v2}, Lorg/apache/mina/util/Event;->getNextFilter()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/mina/util/Event;->getType()Lorg/apache/mina/util/EventType;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/mina/util/Event;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v0, v5, v2}, Lorg/apache/mina/util/BaseThreadPool;->processEvent(Ljava/lang/Object;Lorg/apache/mina/common/Session;Lorg/apache/mina/util/EventType;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 339
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private releaseBuffer(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)V
    .locals 3

    .line 363
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v0}, Lorg/apache/mina/util/BaseThreadPool;->access$800(Lorg/apache/mina/util/BaseThreadPool;)Lorg/apache/mina/util/BlockingSet;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v1}, Lorg/apache/mina/util/BaseThreadPool;->access$1000(Lorg/apache/mina/util/BaseThreadPool;)Ljava/util/Set;

    move-result-object v1

    .line 365
    invoke-static {p1}, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;->access$100(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)Lorg/apache/mina/util/Queue;

    move-result-object v2

    .line 367
    monitor-enter v0

    .line 369
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {v2}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v1, p1}, Lorg/apache/mina/util/BaseThreadPool;->access$1100(Lorg/apache/mina/util/BaseThreadPool;Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)V

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/mina/util/BlockingSet;->add(Ljava/lang/Object;)Z

    .line 378
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private waitForPromotion()Z
    .locals 4

    .line 383
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->promotionLock:Ljava/lang/Object;

    .line 385
    monitor-enter v0

    .line 387
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v1}, Lorg/apache/mina/util/BaseThreadPool;->access$600(Lorg/apache/mina/util/BaseThreadPool;)Lorg/apache/mina/util/BaseThreadPool$Worker;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq p0, v1, :cond_1

    .line 391
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-virtual {v1}, Lorg/apache/mina/util/BaseThreadPool;->getKeepAliveTime()I

    move-result v1

    if-lez v1, :cond_0

    int-to-long v1, v1

    .line 394
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 406
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v1}, Lorg/apache/mina/util/BaseThreadPool;->access$600(Lorg/apache/mina/util/BaseThreadPool;)Lorg/apache/mina/util/BaseThreadPool$Worker;

    move-result-object v1

    if-ne p0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 411
    iget-object v2, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v2}, Lorg/apache/mina/util/BaseThreadPool;->access$900(Lorg/apache/mina/util/BaseThreadPool;)Lorg/apache/mina/util/Stack;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 413
    :try_start_3
    iget-object v3, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v3}, Lorg/apache/mina/util/BaseThreadPool;->access$900(Lorg/apache/mina/util/BaseThreadPool;)Lorg/apache/mina/util/Stack;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/apache/mina/util/Stack;->remove(Ljava/lang/Object;)V

    .line 414
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 417
    :cond_3
    :goto_2
    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    .line 418
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method


# virtual methods
.method public lead()V
    .locals 2

    .line 256
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->promotionLock:Ljava/lang/Object;

    .line 257
    monitor-enter v0

    .line 259
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v1, p0}, Lorg/apache/mina/util/BaseThreadPool;->access$602(Lorg/apache/mina/util/BaseThreadPool;Lorg/apache/mina/util/BaseThreadPool$Worker;)Lorg/apache/mina/util/BaseThreadPool$Worker;

    .line 260
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 261
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 1

    .line 268
    :goto_0
    invoke-direct {p0}, Lorg/apache/mina/util/BaseThreadPool$Worker;->waitForPromotion()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 271
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/util/BaseThreadPool$Worker;->fetchBuffer()Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;

    move-result-object v0

    .line 272
    invoke-direct {p0}, Lorg/apache/mina/util/BaseThreadPool$Worker;->giveUpLead()V

    if-nez v0, :cond_1

    .line 284
    :goto_1
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool$Worker;->this$0:Lorg/apache/mina/util/BaseThreadPool;

    invoke-static {v0}, Lorg/apache/mina/util/BaseThreadPool;->access$700(Lorg/apache/mina/util/BaseThreadPool;)V

    return-void

    .line 279
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/mina/util/BaseThreadPool$Worker;->processEvents(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)V

    .line 280
    invoke-direct {p0}, Lorg/apache/mina/util/BaseThreadPool$Worker;->follow()V

    .line 281
    invoke-direct {p0, v0}, Lorg/apache/mina/util/BaseThreadPool$Worker;->releaseBuffer(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)V

    goto :goto_0
.end method
