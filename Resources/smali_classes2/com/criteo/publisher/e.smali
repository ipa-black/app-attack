.class public Lcom/criteo/publisher/e;
.super Ljava/lang/Object;
.source "BidManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Lcom/criteo/publisher/d0/a;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private final e:Lcom/criteo/publisher/model/t;

.field private final f:Lcom/criteo/publisher/i;

.field private final g:Lcom/criteo/publisher/model/g;

.field private final h:Lcom/criteo/publisher/k0/b;

.field private final i:Lcom/criteo/publisher/k0/e;

.field private final j:Lcom/criteo/publisher/c0/a;

.field private final k:Lcom/criteo/publisher/f0/w;

.field private final l:Lcom/criteo/publisher/logging/n;

.field private final m:Lcom/criteo/publisher/l0/a;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/d0/a;Lcom/criteo/publisher/model/t;Lcom/criteo/publisher/i;Lcom/criteo/publisher/model/g;Lcom/criteo/publisher/k0/b;Lcom/criteo/publisher/k0/e;Lcom/criteo/publisher/c0/a;Lcom/criteo/publisher/f0/w;Lcom/criteo/publisher/logging/n;Lcom/criteo/publisher/l0/a;)V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/e;->a:Lcom/criteo/publisher/logging/g;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/e;->c:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/criteo/publisher/e;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 101
    iput-object p1, p0, Lcom/criteo/publisher/e;->b:Lcom/criteo/publisher/d0/a;

    .line 102
    iput-object p2, p0, Lcom/criteo/publisher/e;->e:Lcom/criteo/publisher/model/t;

    .line 103
    iput-object p3, p0, Lcom/criteo/publisher/e;->f:Lcom/criteo/publisher/i;

    .line 104
    iput-object p4, p0, Lcom/criteo/publisher/e;->g:Lcom/criteo/publisher/model/g;

    .line 105
    iput-object p5, p0, Lcom/criteo/publisher/e;->h:Lcom/criteo/publisher/k0/b;

    .line 106
    iput-object p6, p0, Lcom/criteo/publisher/e;->i:Lcom/criteo/publisher/k0/e;

    .line 107
    iput-object p7, p0, Lcom/criteo/publisher/e;->j:Lcom/criteo/publisher/c0/a;

    .line 108
    iput-object p8, p0, Lcom/criteo/publisher/e;->k:Lcom/criteo/publisher/f0/w;

    .line 109
    iput-object p9, p0, Lcom/criteo/publisher/e;->l:Lcom/criteo/publisher/logging/n;

    .line 110
    iput-object p10, p0, Lcom/criteo/publisher/e;->m:Lcom/criteo/publisher/l0/a;

    return-void
.end method

.method private a(Lcom/criteo/publisher/model/s;)D
    .locals 2

    .line 395
    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->b()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->b()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method static synthetic a(Lcom/criteo/publisher/e;)Lcom/criteo/publisher/c0/a;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/criteo/publisher/e;->j:Lcom/criteo/publisher/c0/a;

    return-object p0
.end method

.method private a(Lcom/criteo/publisher/model/n;)Lcom/criteo/publisher/model/s;
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/criteo/publisher/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/criteo/publisher/e;->b:Lcom/criteo/publisher/d0/a;

    invoke-virtual {v1, p1}, Lcom/criteo/publisher/d0/a;->a(Lcom/criteo/publisher/model/n;)Lcom/criteo/publisher/model/s;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {p0, v1}, Lcom/criteo/publisher/e;->c(Lcom/criteo/publisher/model/s;)Z

    move-result v2

    .line 225
    invoke-direct {p0, v1}, Lcom/criteo/publisher/e;->b(Lcom/criteo/publisher/model/s;)Z

    move-result v3

    if-nez v2, :cond_0

    .line 228
    iget-object v4, p0, Lcom/criteo/publisher/e;->b:Lcom/criteo/publisher/d0/a;

    invoke-virtual {v4, p1}, Lcom/criteo/publisher/d0/a;->b(Lcom/criteo/publisher/model/n;)V

    .line 229
    iget-object v4, p0, Lcom/criteo/publisher/e;->j:Lcom/criteo/publisher/c0/a;

    invoke-interface {v4, p1, v1}, Lcom/criteo/publisher/c0/a;->a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/model/s;)V

    :cond_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 233
    monitor-exit v0

    return-object v1

    .line 237
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 238
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/context/ContextData;)V
    .locals 0

    .line 254
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/criteo/publisher/e;->a(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;",
            "Lcom/criteo/publisher/context/ContextData;",
            ")V"
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Lcom/criteo/publisher/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/e;->h:Lcom/criteo/publisher/k0/b;

    new-instance v1, Lcom/criteo/publisher/e$a;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/e$a;-><init>(Lcom/criteo/publisher/e;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/criteo/publisher/k0/b;->b(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/h;)V

    .line 311
    iget-object p1, p0, Lcom/criteo/publisher/e;->k:Lcom/criteo/publisher/f0/w;

    invoke-virtual {p1}, Lcom/criteo/publisher/f0/w;->a()V

    .line 312
    iget-object p1, p0, Lcom/criteo/publisher/e;->l:Lcom/criteo/publisher/logging/n;

    invoke-virtual {p1}, Lcom/criteo/publisher/logging/n;->a()V

    return-void
.end method

.method static synthetic b(Lcom/criteo/publisher/e;)Lcom/criteo/publisher/l0/a;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/criteo/publisher/e;->m:Lcom/criteo/publisher/l0/a;

    return-object p0
.end method

.method private b(Lcom/criteo/publisher/model/n;)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/criteo/publisher/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/criteo/publisher/e;->b:Lcom/criteo/publisher/d0/a;

    invoke-virtual {v1, p1}, Lcom/criteo/publisher/d0/a;->a(Lcom/criteo/publisher/model/n;)Lcom/criteo/publisher/model/s;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    invoke-direct {p0, v1}, Lcom/criteo/publisher/e;->b(Lcom/criteo/publisher/model/s;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/criteo/publisher/e;->b:Lcom/criteo/publisher/d0/a;

    invoke-virtual {v2, p1}, Lcom/criteo/publisher/d0/a;->b(Lcom/criteo/publisher/model/n;)V

    .line 214
    iget-object v2, p0, Lcom/criteo/publisher/e;->j:Lcom/criteo/publisher/c0/a;

    invoke-interface {v2, p1, v1}, Lcom/criteo/publisher/c0/a;->a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/model/s;)V

    .line 216
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/criteo/publisher/e;->e:Lcom/criteo/publisher/model/t;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/t;->h()Z

    move-result v0

    return v0
.end method

.method private b(Lcom/criteo/publisher/model/s;)Z
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/criteo/publisher/e;->f:Lcom/criteo/publisher/i;

    invoke-virtual {p1, v0}, Lcom/criteo/publisher/model/s;->a(Lcom/criteo/publisher/i;)Z

    move-result p1

    return p1
.end method

.method private c(Lcom/criteo/publisher/model/n;)Z
    .locals 2

    .line 199
    invoke-virtual {p0}, Lcom/criteo/publisher/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/criteo/publisher/e;->b:Lcom/criteo/publisher/d0/a;

    invoke-virtual {v1, p1}, Lcom/criteo/publisher/d0/a;->a(Lcom/criteo/publisher/model/n;)Lcom/criteo/publisher/model/s;

    move-result-object p1

    .line 205
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/e;->c(Lcom/criteo/publisher/model/s;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 206
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method a(Lcom/criteo/publisher/model/AdUnit;)Lcom/criteo/publisher/model/n;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/criteo/publisher/e;->g:Lcom/criteo/publisher/model/g;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/model/g;->b(Lcom/criteo/publisher/model/AdUnit;)Lcom/criteo/publisher/model/n;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;)Lcom/criteo/publisher/model/s;
    .locals 2

    .line 181
    invoke-direct {p0}, Lcom/criteo/publisher/e;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 184
    :cond_0
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/AdUnit;)Lcom/criteo/publisher/model/n;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/e;->c(Lcom/criteo/publisher/model/n;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/context/ContextData;)V

    .line 194
    :cond_2
    invoke-direct {p0, p1}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/n;)Lcom/criteo/publisher/model/s;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 195
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method a(I)V
    .locals 5

    if-lez p1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/criteo/publisher/e;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/f;->a(I)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 346
    iget-object v0, p0, Lcom/criteo/publisher/e;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/criteo/publisher/e;->f:Lcom/criteo/publisher/i;

    invoke-interface {v1}, Lcom/criteo/publisher/i;->a()J

    move-result-wide v1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_0
    return-void
.end method

.method public a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V
    .locals 1

    if-nez p1, :cond_0

    .line 129
    invoke-interface {p3}, Lcom/criteo/publisher/d;->a()V

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/e;->e:Lcom/criteo/publisher/model/t;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/t;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/criteo/publisher/e;->b(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;)Lcom/criteo/publisher/model/s;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 138
    invoke-interface {p3, p1}, Lcom/criteo/publisher/d;->a(Lcom/criteo/publisher/model/s;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-interface {p3}, Lcom/criteo/publisher/d;->a()V

    :goto_0
    return-void
.end method

.method a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/d;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/n;)Lcom/criteo/publisher/model/s;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    invoke-interface {p2, p1}, Lcom/criteo/publisher/d;->a(Lcom/criteo/publisher/model/s;)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-interface {p2}, Lcom/criteo/publisher/d;->a()V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/AdUnit;",
            ">;)V"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/criteo/publisher/e;->h:Lcom/criteo/publisher/k0/b;

    iget-object v1, p0, Lcom/criteo/publisher/e;->e:Lcom/criteo/publisher/model/t;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/k0/b;->a(Lcom/criteo/publisher/model/t;)V

    .line 381
    iget-object v0, p0, Lcom/criteo/publisher/e;->e:Lcom/criteo/publisher/model/t;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/t;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/criteo/publisher/e;->g:Lcom/criteo/publisher/model/g;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/model/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 384
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 385
    new-instance v1, Lcom/criteo/publisher/context/ContextData;

    invoke-direct {v1}, Lcom/criteo/publisher/context/ContextData;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/criteo/publisher/e;->a(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method a()Z
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/criteo/publisher/e;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lcom/criteo/publisher/e;->f:Lcom/criteo/publisher/i;

    invoke-interface {v2}, Lcom/criteo/publisher/i;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V
    .locals 9

    .line 263
    invoke-direct {p0}, Lcom/criteo/publisher/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {p3}, Lcom/criteo/publisher/d;->a()V

    return-void

    .line 268
    :cond_0
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/AdUnit;)Lcom/criteo/publisher/model/n;

    move-result-object p1

    if-nez p1, :cond_1

    .line 270
    invoke-interface {p3}, Lcom/criteo/publisher/d;->a()V

    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/e;->b(Lcom/criteo/publisher/model/n;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/criteo/publisher/e;->c(Lcom/criteo/publisher/model/n;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    invoke-virtual {p0, p1, p3}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/d;)V

    goto :goto_0

    .line 280
    :cond_2
    iget-object v7, p0, Lcom/criteo/publisher/e;->i:Lcom/criteo/publisher/k0/e;

    new-instance v8, Lcom/criteo/publisher/w;

    iget-object v3, p0, Lcom/criteo/publisher/e;->j:Lcom/criteo/publisher/c0/a;

    iget-object v6, p0, Lcom/criteo/publisher/e;->m:Lcom/criteo/publisher/l0/a;

    move-object v1, v8

    move-object v2, p3

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/criteo/publisher/w;-><init>(Lcom/criteo/publisher/d;Lcom/criteo/publisher/c0/a;Lcom/criteo/publisher/e;Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/l0/a;)V

    invoke-virtual {v7, p1, p2, v8}, Lcom/criteo/publisher/k0/e;->a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/w;)V

    .line 293
    :goto_0
    iget-object p1, p0, Lcom/criteo/publisher/e;->k:Lcom/criteo/publisher/f0/w;

    invoke-virtual {p1}, Lcom/criteo/publisher/f0/w;->a()V

    .line 294
    iget-object p1, p0, Lcom/criteo/publisher/e;->l:Lcom/criteo/publisher/logging/n;

    invoke-virtual {p1}, Lcom/criteo/publisher/logging/n;->a()V

    .line 295
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/s;",
            ">;)V"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/criteo/publisher/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/model/s;

    .line 318
    iget-object v2, p0, Lcom/criteo/publisher/e;->b:Lcom/criteo/publisher/d0/a;

    invoke-virtual {v2, v1}, Lcom/criteo/publisher/d0/a;->b(Lcom/criteo/publisher/model/s;)Lcom/criteo/publisher/model/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/criteo/publisher/d0/a;->a(Lcom/criteo/publisher/model/n;)Lcom/criteo/publisher/model/s;

    move-result-object v2

    .line 319
    invoke-virtual {p0, v2}, Lcom/criteo/publisher/e;->c(Lcom/criteo/publisher/model/s;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {v1}, Lcom/criteo/publisher/model/s;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    invoke-direct {p0, v1}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/s;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/criteo/publisher/model/s;->j()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x384

    .line 327
    invoke-virtual {v1, v2}, Lcom/criteo/publisher/model/s;->a(I)V

    .line 330
    :cond_2
    iget-object v2, p0, Lcom/criteo/publisher/e;->b:Lcom/criteo/publisher/d0/a;

    invoke-virtual {v2, v1}, Lcom/criteo/publisher/d0/a;->a(Lcom/criteo/publisher/model/s;)V

    .line 331
    iget-object v2, p0, Lcom/criteo/publisher/e;->j:Lcom/criteo/publisher/c0/a;

    invoke-interface {v2, v1}, Lcom/criteo/publisher/c0/a;->a(Lcom/criteo/publisher/model/s;)V

    goto :goto_0

    .line 334
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/criteo/publisher/e;->h:Lcom/criteo/publisher/k0/b;

    invoke-virtual {v0}, Lcom/criteo/publisher/k0/b;->a()V

    return-void
.end method

.method c(Lcom/criteo/publisher/model/s;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 355
    :cond_0
    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->j()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/s;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    .line 356
    invoke-direct {p0, p1}, Lcom/criteo/publisher/e;->b(Lcom/criteo/publisher/model/s;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
