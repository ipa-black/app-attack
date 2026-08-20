.class public Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;
.super Ljava/lang/Object;
.source "DBCacheStrategy.java"

# interfaces
.implements Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/fl;


# instance fields
.field private CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;

.field private Gm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;

.field private ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private Sf:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;

.field private WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;

.field private cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;

.field private fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;

.field private hm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private zc:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Tgh()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Qhi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->zc()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 44
    new-instance v1, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;

    .line 47
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->fl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->WAv()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 49
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->WAv()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->hm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ABk()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->hm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 53
    :goto_0
    new-instance v1, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->hm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;

    .line 56
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->cJ()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ABk()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Sf:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 58
    new-instance v1, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Sf:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;

    .line 62
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->ac()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ABk()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 64
    new-instance v1, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;

    .line 67
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->CJ()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->iMK()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Gm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 69
    new-instance v1, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Gm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;

    .line 73
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Tgh()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 74
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->pA()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->zc:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 75
    new-instance v1, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->zc:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;

    :cond_6
    return-void
.end method

.method private Qhi(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 311
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 316
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;

    if-eqz v1, :cond_0

    .line 319
    invoke-interface {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->ac()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 328
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    .line 331
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public Qhi(IILjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;",
            ">;"
        }
    .end annotation

    .line 250
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Qhi()Z

    move-result p1

    const/4 p2, 0x1

    const-string v0, "_id"

    if-eqz p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;->Qhi(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 252
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Qhi(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 254
    sget-object p3, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->bxS()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    .line 259
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->fl()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 260
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;->Qhi(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 261
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Qhi(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    invoke-interface {p1}, Ljava/util/List;->size()I

    return-object p1

    .line 267
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->cJ()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 268
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;->Qhi(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 270
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Qhi(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 272
    sget-object p3, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->Dww()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    .line 277
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->ac()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 278
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;->cJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 279
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Qhi(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 281
    sget-object p3, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->CQU()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    .line 286
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->CJ()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 287
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;->cJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 288
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Qhi(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 289
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 290
    sget-object p3, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->pM()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    .line 294
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Tgh()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 295
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;->cJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 296
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Qhi(Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 297
    invoke-interface {p1}, Ljava/util/List;->size()I

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public Qhi(IJ)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;->Qhi(IJ)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;->Qhi(IJ)V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;

    if-eqz v0, :cond_2

    .line 420
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;->Qhi(IJ)V

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;

    if-eqz v0, :cond_3

    .line 423
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;->Qhi(IJ)V

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;

    if-eqz v0, :cond_4

    .line 426
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;->Qhi(IJ)V

    .line 428
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;

    if-eqz v0, :cond_5

    .line 429
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;->Qhi(IJ)V

    :cond_5
    return-void
.end method

.method public Qhi(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 127
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 128
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_7

    .line 131
    :cond_0
    sget-object v2, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->NBs()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    if-eq p1, v1, :cond_1

    .line 136
    sget-object p1, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->dVA()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    .line 139
    :cond_1
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result p1

    if-ne p1, v1, :cond_2

    .line 140
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Qhi()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 141
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;->cJ(Ljava/util/List;)V

    return-void

    .line 143
    :cond_2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p1, v2, :cond_3

    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result p1

    if-ne p1, v3, :cond_3

    .line 144
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->fl()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 145
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;->cJ(Ljava/util/List;)V

    return-void

    .line 147
    :cond_3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result p1

    if-ne p1, v3, :cond_4

    .line 148
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->cJ()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 149
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;->cJ(Ljava/util/List;)V

    return-void

    .line 151
    :cond_4
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result p1

    if-ne p1, v1, :cond_5

    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result p1

    if-ne p1, v3, :cond_5

    .line 152
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->ac()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 153
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;->cJ(Ljava/util/List;)V

    return-void

    .line 155
    :cond_5
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result p1

    if-ne p1, v1, :cond_6

    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result p1

    if-ne p1, v2, :cond_6

    .line 156
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->CJ()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 157
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;->cJ(Ljava/util/List;)V

    return-void

    .line 159
    :cond_6
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result p1

    if-ne p1, v3, :cond_7

    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result p1

    if-ne p1, v2, :cond_7

    .line 160
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Tgh()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 161
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;->cJ(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 87
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->cJ(J)V

    .line 88
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result v0

    if-ne v0, p2, :cond_1

    .line 89
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void

    .line 92
    :cond_1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result v0

    if-ne v0, v2, :cond_2

    .line 93
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->fl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void

    .line 96
    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result v0

    if-ne v0, v2, :cond_3

    .line 97
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void

    .line 100
    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v0

    if-ne v0, p2, :cond_4

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result v0

    if-ne v0, v2, :cond_4

    .line 101
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->ac()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void

    .line 104
    :cond_4
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v0

    if-ne v0, p2, :cond_5

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result v0

    if-ne v0, v1, :cond_5

    .line 105
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->CJ()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void

    .line 108
    :cond_5
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result v0

    if-ne v0, v1, :cond_6

    .line 109
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Tgh()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-void

    .line 115
    :catchall_0
    sget-object p1, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->Jma()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-void
.end method

.method public Qhi(IZ)Z
    .locals 1

    .line 337
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Qhi()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 338
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;->Qhi(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 339
    sget-object p1, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->iMK()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    .line 343
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->fl()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 344
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;->Qhi(I)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 349
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->cJ()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 350
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;->Qhi(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 351
    sget-object p1, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->pA()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    .line 356
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->ac()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 357
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;->Qhi(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 358
    sget-object p1, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->hpZ()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    .line 363
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->CJ()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 364
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;->Qhi(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 365
    sget-object p1, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->HzH()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    .line 369
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Tgh()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 370
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;->Qhi(I)Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;",
            "I)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;",
            ">;"
        }
    .end annotation

    .line 178
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v0

    const/4 v1, 0x0

    const-string v2, "_id"

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 179
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result v0

    if-ne v0, v3, :cond_2

    .line 180
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->cJ()I

    move-result p1

    if-le p1, p2, :cond_1

    .line 182
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->cJ()I

    move-result p1

    sub-int/2addr p1, p2

    .line 183
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;->Qhi(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_0

    .line 185
    sget-object p2, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->Eh()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    :cond_0
    return-object p1

    :cond_1
    return-object v1

    .line 192
    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v0, v4, :cond_3

    .line 193
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result v0

    if-ne v0, v5, :cond_3

    .line 194
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->fl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->hm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->cJ()I

    move-result p1

    if-le p1, p2, :cond_a

    .line 196
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->hm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->cJ()I

    move-result p1

    sub-int/2addr p1, p2

    .line 197
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;->Qhi(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 201
    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v0

    if-nez v0, :cond_5

    .line 202
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result v0

    if-ne v0, v5, :cond_5

    .line 203
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Sf:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->cJ()I

    move-result p1

    if-le p1, p2, :cond_a

    .line 205
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Sf:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->cJ()I

    move-result p1

    sub-int/2addr p1, p2

    .line 206
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;->Qhi(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 207
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_4

    .line 208
    sget-object p2, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->aP()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    :cond_4
    return-object p1

    .line 212
    :cond_5
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v0

    if-ne v0, v3, :cond_7

    .line 213
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result v0

    if-ne v0, v5, :cond_7

    .line 214
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->ac()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 215
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->cJ()I

    move-result p1

    if-le p1, p2, :cond_a

    .line 216
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->cJ()I

    move-result p1

    sub-int/2addr p1, p2

    .line 217
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;->Qhi(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_6

    .line 219
    sget-object p2, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->NFd()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    :cond_6
    return-object p1

    .line 223
    :cond_7
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v0

    if-ne v0, v3, :cond_9

    .line 224
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result v0

    if-ne v0, v4, :cond_9

    .line 225
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->CJ()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Gm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->cJ()I

    move-result p1

    if-le p1, p2, :cond_a

    .line 227
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Gm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->cJ()I

    move-result p1

    sub-int/2addr p1, p2

    .line 228
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;->Qhi(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 229
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_8

    .line 230
    sget-object p2, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->sDy()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    :cond_8
    return-object p1

    .line 234
    :cond_9
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v0

    if-ne v0, v5, :cond_a

    .line 235
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result p1

    if-ne p1, v4, :cond_a

    .line 236
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Tgh()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 237
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->zc:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->cJ()I

    move-result p1

    if-le p1, p2, :cond_a

    .line 238
    iget-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->zc:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->cJ()I

    move-result p1

    sub-int/2addr p1, p2

    .line 239
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ac;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Tgh;->Qhi(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_a
    return-object v1
.end method
