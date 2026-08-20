.class final Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;
.super Ljava/lang/Object;
.source "ExpressInitHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->Qhi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Qhi(Landroid/os/MessageQueue;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 129
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;)V

    invoke-virtual {p1, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;Landroid/os/MessageQueue;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;->Qhi(Landroid/os/MessageQueue;)V

    return-void
.end method


# virtual methods
.method public ABk()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 206
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->CJ()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public CJ()V
    .locals 2

    .line 102
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->dI()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->zjb()I

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->dVA()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ots()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->Qhi()Lcom/bytedance/sdk/component/adexpress/fl/Tgh;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->dI()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->Qhi(I)V

    .line 108
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->Qhi()Lcom/bytedance/sdk/component/adexpress/fl/Tgh;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ots()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->cJ(I)V

    const/4 v0, 0x1

    .line 109
    new-array v0, v0, [Landroid/os/MessageQueue;

    .line 111
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->ac()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;->Qhi(Landroid/os/MessageQueue;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Gm()I
    .locals 1

    .line 186
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->dVA()I

    move-result v0

    return v0
.end method

.method public Qhi()I
    .locals 1

    .line 83
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->CJ()I

    move-result v0

    return v0
.end method

.method public ROR()Lcom/bytedance/sdk/component/ROR/cJ/cJ;
    .locals 2

    .line 163
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/Qhi;->ac()Lcom/bytedance/sdk/component/ROR/cJ/cJ;

    move-result-object v0

    const/16 v1, 0x8

    .line 164
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(I)V

    .line 165
    const-string v1, "express_get"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(Ljava/lang/String;)V

    return-object v0
.end method

.method public Sf()Ljava/lang/String;
    .locals 1

    .line 171
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/hm;->CJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Tgh()Lcom/bytedance/sdk/component/ROR/cJ/Qhi;
    .locals 2

    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/Qhi;->CJ()Lcom/bytedance/sdk/component/ROR/cJ/Qhi;

    move-result-object v0

    const/16 v1, 0x8

    .line 156
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/Qhi;->Qhi(I)V

    .line 157
    const-string v1, "express_down"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/Qhi;->Qhi(Ljava/lang/String;)V

    return-object v0
.end method

.method public WAv()I
    .locals 1

    .line 181
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->dI()I

    move-result v0

    return v0
.end method

.method public ac()Landroid/os/Handler;
    .locals 1

    .line 96
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->ac()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public cJ()Landroid/content/Context;
    .locals 1

    .line 91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public fl()Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi;
    .locals 1

    .line 150
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->ac()Lcom/bytedance/sdk/openadsdk/core/tP;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi;

    move-result-object v0

    return-object v0
.end method

.method public hm()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iMK()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 214
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Sf()Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pA()I
    .locals 1

    .line 222
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public zc()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
