.class Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;
.super Ljava/lang/Thread;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Qhi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;
    }
.end annotation


# instance fields
.field private final CJ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;

.field private ac:Z

.field private cJ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private fl:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;)V
    .locals 1

    .line 169
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 166
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->CJ:Ljava/util/Queue;

    .line 170
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->cJ:Ljava/util/Queue;

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->ac:Z

    .line 172
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->fl:Ljava/util/Queue;

    return-void
.end method

.method private Qhi(ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->CJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    .line 190
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->CJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;)V

    .line 194
    :cond_0
    iput p1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->Qhi:I

    .line 195
    iput-object p2, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->Tgh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    return-object v0
.end method

.method private Qhi()V
    .locals 4

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->fl:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;

    if-eqz v0, :cond_2

    .line 320
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->Tgh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->cJ:Ljava/lang/String;

    const/4 v1, 0x1

    .line 321
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->Tgh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->ac:[Ljava/lang/String;

    .line 322
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->Tgh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_1

    .line 323
    :cond_0
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->Tgh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ac()I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->CJ:I

    .line 324
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->Tgh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->iMK()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->fl:Ljava/lang/String;

    .line 325
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->Tgh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->iMK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->Tgh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->iMK()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->cJ:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x0

    .line 328
    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->Tgh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    .line 329
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->ac(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;)V
    .locals 2

    const/4 v0, 0x0

    .line 201
    iput-object v0, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->ac:[Ljava/lang/String;

    .line 202
    iput-object v0, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->cJ:Ljava/lang/String;

    const/4 v1, -0x1

    .line 203
    iput v1, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->Qhi:I

    .line 204
    iput-object v0, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->Tgh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    .line 205
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->CJ:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private ac(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->cJ:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method

.method private declared-synchronized cJ(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;)V
    .locals 1

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->fl:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, v0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->Qhi(ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->cJ(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;)V

    return-void
.end method

.method public run()V
    .locals 10

    .line 262
    :goto_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->ac:Z

    if-eqz v0, :cond_b

    .line 263
    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->fl:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->Qhi()V

    .line 267
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->cJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 268
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->cJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;

    if-eqz v0, :cond_0

    .line 270
    iget v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->Qhi:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    goto/16 :goto_3

    .line 301
    :cond_1
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->ac()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->CJ()V

    .line 302
    iput-boolean v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->ac:Z

    goto/16 :goto_3

    .line 292
    :cond_2
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->ac()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->CJ()V

    .line 293
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->ac()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/cJ;

    move-result-object v1

    if-nez v1, :cond_3

    .line 296
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->cJ()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 297
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->cJ()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;->Qhi()V

    goto :goto_3

    .line 294
    :cond_3
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->ac()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/cJ;

    const/4 v0, 0x0

    throw v0

    .line 289
    :cond_4
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->ac()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->CJ()V

    goto :goto_3

    .line 286
    :cond_5
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->ac()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;

    move-result-object v1

    iget-object v2, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->cJ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->Qhi(Ljava/lang/String;)V

    goto :goto_3

    .line 273
    :cond_6
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->ac:[Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->ac:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_9

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    iget-object v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->ac:[Ljava/lang/String;

    array-length v5, v4

    :goto_2
    if-ge v2, v5, :cond_8

    aget-object v6, v4, v2

    .line 276
    invoke-static {v6}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->Qhi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 277
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 280
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    .line 281
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->fl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    .line 282
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->ac()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;

    move-result-object v4

    iget v7, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->CJ:I

    iget-object v8, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;->cJ:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->Qhi(ZZILjava/lang/String;[Ljava/lang/String;)V

    .line 305
    :cond_9
    :goto_3
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi$Qhi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 308
    :cond_a
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    :catch_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    return-void
.end method
