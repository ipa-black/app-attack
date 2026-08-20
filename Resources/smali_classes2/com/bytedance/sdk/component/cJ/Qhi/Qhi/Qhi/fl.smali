.class public Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/fl;
.super Lcom/bytedance/sdk/component/cJ/Qhi/zc;
.source "NetClient.java"


# instance fields
.field public Sf:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Tgh;

.field public hm:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/cJ/Qhi/zc;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;)V

    .line 19
    new-instance p1, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Tgh;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Tgh;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/fl;->Sf:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Tgh;

    .line 20
    new-instance p1, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;

    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/fl;->Sf:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Tgh;->cJ()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/fl;->hm:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)Lcom/bytedance/sdk/component/cJ/Qhi/cJ;
    .locals 2

    .line 35
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/zc;)V

    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/Sf;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/Sf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf;->Qhi()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/Sf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf;->Qhi()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/WAv;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/WAv;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/WAv;->cJ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/fl;->hm:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;

    .line 42
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->fl()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "setting"

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Tgh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/fl;->hm:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;Lcom/bytedance/sdk/component/cJ/Qhi/fl;)V

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/fl;->hm:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->ac()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/fl;->Sf:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Tgh;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;Lcom/bytedance/sdk/component/cJ/Qhi/fl;)V

    .line 47
    iget-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/fl;->Sf:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Tgh;->ac()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/fl;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/fl;->Sf:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Tgh;

    return-object v0
.end method
