.class public abstract Lcom/bytedance/sdk/component/cJ/Qhi/fl;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract CJ()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/cJ/Qhi/cJ;",
            ">;"
        }
    .end annotation
.end method

.method public Qhi()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public abstract Qhi(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract ac()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/cJ/Qhi/cJ;",
            ">;"
        }
    .end annotation
.end method

.method public cJ()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
