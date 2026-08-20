.class public Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;
.super Lcom/bytedance/sdk/component/cJ/Qhi/fl;
.source "NetCacheDispatcher.java"


# static fields
.field public static volatile Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/WAv;


# instance fields
.field private CJ:Ljava/util/concurrent/ExecutorService;

.field private ac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/cJ/Qhi/cJ;",
            ">;"
        }
    .end annotation
.end field

.field private cJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/cJ/Qhi/cJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/fl;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->cJ:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->ac:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->CJ:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/WAv;)V
    .locals 0

    .line 24
    sput-object p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/WAv;

    return-void
.end method


# virtual methods
.method public CJ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/cJ/Qhi/cJ;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->ac:Ljava/util/List;

    return-object v0
.end method

.method public Qhi()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Qhi(I)V
    .locals 0

    return-void
.end method

.method public ac()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/cJ/Qhi/cJ;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->cJ:Ljava/util/List;

    return-object v0
.end method

.method public cJ()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 30
    sget-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/WAv;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/WAv;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/WAv;->Qhi()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->CJ:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public fl()Z
    .locals 1

    .line 40
    sget-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/WAv;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/WAv;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/WAv;->Qhi()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
