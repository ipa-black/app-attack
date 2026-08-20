.class public Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/cJ;
.super Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;
.source "AdEventV3RepoImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V

    return-void
.end method


# virtual methods
.method public CJ()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public ac()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->CJ()Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;->ac()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
