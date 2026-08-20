.class public Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;
.super Ljava/lang/Object;
.source "RealTimeMemoryCacheStrategy.java"

# interfaces
.implements Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/fl;


# instance fields
.field private ABk:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/cJ;

.field private Gm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

.field private ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ROR;

.field private Sf:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ac;

.field private WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Qhi;

.field private cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Tgh;

.field private fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Sf;

.field private hm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private iMK:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zc:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;


# direct methods
.method public constructor <init>(Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->iMK:Ljava/util/Queue;

    .line 45
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->CJ()Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

    .line 46
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->zc()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->Sf:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 48
    new-instance v0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Tgh;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->Sf:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Tgh;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;Ljava/util/Queue;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Tgh;

    .line 52
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->fl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->WAv()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->WAv()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ABk()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 58
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/cJ;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;Ljava/util/Queue;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/cJ;

    .line 61
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ABk()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->hm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 63
    new-instance v0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->hm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Qhi;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;Ljava/util/Queue;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Qhi;

    .line 68
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->ac()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ABk()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->Gm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 70
    new-instance v0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Sf;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->Gm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Sf;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;Ljava/util/Queue;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Sf;

    .line 73
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->CJ()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->iMK()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->zc:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 75
    new-instance v0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ac;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->zc:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ac;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;Ljava/util/Queue;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ac;

    .line 78
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Tgh()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->pA()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ABk:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 80
    new-instance v0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ROR;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ABk:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ROR;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;Ljava/util/Queue;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ROR;

    :cond_6
    return-void
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

    .line 177
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Qhi()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 178
    iget-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Tgh;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Tgh;->cJ(II)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 179
    iget-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Tgh;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Tgh;->Qhi(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 180
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    sget-object p1, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->kYc()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p3

    .line 187
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->fl()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 188
    iget-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/cJ;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/cJ;->cJ(II)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 189
    iget-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/cJ;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/cJ;->Qhi(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 190
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    return-object p3

    .line 196
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->cJ()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 197
    iget-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Qhi;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Qhi;->cJ(II)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 198
    iget-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Qhi;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Qhi;->Qhi(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 199
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    sget-object p1, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->tP()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p3

    .line 207
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->ac()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 208
    iget-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Sf;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Sf;->cJ(II)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 209
    iget-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Sf;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Sf;->Qhi(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 210
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    sget-object p1, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->MQ()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p3

    .line 217
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->CJ()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 218
    iget-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ac;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ac;->cJ(II)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 219
    iget-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ac;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ac;->Qhi(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 220
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    sget-object p1, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi/Qhi;->qMt()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/cJ;->Qhi(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p3

    .line 226
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Tgh()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 227
    iget-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ROR;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ROR;->cJ(II)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 228
    iget-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ROR;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ROR;->Qhi(II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 229
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_5

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public Qhi(IJ)V
    .locals 0

    return-void
.end method

.method public Qhi(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 134
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 135
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;

    .line 136
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result v1

    .line 137
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-ne v1, v2, :cond_0

    .line 141
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Qhi()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Tgh;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Tgh;->Qhi(ILjava/util/List;)V

    return-void

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v3, :cond_1

    if-ne v1, v4, :cond_1

    .line 146
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->fl()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/cJ;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/cJ;->Qhi(ILjava/util/List;)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    if-ne v1, v4, :cond_2

    .line 151
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->cJ()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Qhi;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Qhi;->Qhi(ILjava/util/List;)V

    return-void

    :cond_2
    if-ne v0, v2, :cond_3

    if-ne v1, v4, :cond_3

    .line 157
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->ac()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Sf;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Sf;->Qhi(ILjava/util/List;)V

    return-void

    :cond_3
    if-ne v0, v2, :cond_4

    if-ne v1, v3, :cond_4

    .line 163
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->CJ()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ac;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ac;->Qhi(ILjava/util/List;)V

    return-void

    :cond_4
    if-ne v0, v4, :cond_5

    if-ne v1, v3, :cond_5

    .line 168
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Tgh()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ROR;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ROR;->Qhi(ILjava/util/List;)V

    :cond_5
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;I)V
    .locals 5

    .line 90
    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result p2

    .line 91
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->fl()B

    move-result v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    if-ne v0, v1, :cond_0

    .line 95
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Qhi()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Tgh;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Tgh;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p2, v2, :cond_1

    if-ne v0, v3, :cond_1

    .line 100
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->fl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/cJ;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    if-ne v0, v3, :cond_2

    .line 105
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->cJ()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Qhi;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void

    :cond_2
    if-ne p2, v1, :cond_3

    if-ne v0, v3, :cond_3

    .line 111
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->ac()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 112
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Sf;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Sf;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void

    :cond_3
    if-ne p2, v1, :cond_4

    if-ne v0, v2, :cond_4

    .line 117
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->CJ()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ac;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ac;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void

    :cond_4
    if-ne p2, v3, :cond_5

    if-ne v0, v2, :cond_5

    .line 122
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Tgh()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 123
    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ROR;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ROR;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public Qhi(IZ)Z
    .locals 1

    .line 243
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Qhi()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Tgh;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->Sf:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->Qhi()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Tgh;->cJ(II)Z

    move-result p2

    if-nez p2, :cond_5

    .line 246
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->fl()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/cJ;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->Qhi()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/cJ;->cJ(II)Z

    move-result p2

    if-nez p2, :cond_5

    .line 249
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->cJ()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Qhi;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->hm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->Qhi()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Qhi;->cJ(II)Z

    move-result p2

    if-nez p2, :cond_5

    .line 252
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->ac()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Sf;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->Gm:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    if-eqz v0, :cond_3

    .line 253
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->Qhi()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/Sf;->cJ(II)Z

    move-result p2

    if-nez p2, :cond_5

    .line 255
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->CJ()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ac;

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->zc:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    if-eqz v0, :cond_4

    .line 256
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->Qhi()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ac;->cJ(II)Z

    move-result p2

    if-nez p2, :cond_5

    .line 258
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/Qhi;->Tgh()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ROR;

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/ROR;->ABk:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    if-eqz v0, :cond_6

    .line 259
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->Qhi()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/cJ/ROR;->cJ(II)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method
