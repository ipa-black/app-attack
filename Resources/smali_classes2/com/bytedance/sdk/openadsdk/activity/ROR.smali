.class public abstract Lcom/bytedance/sdk/openadsdk/activity/ROR;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field protected Gm:Lcom/bytedance/sdk/openadsdk/IListenerManager;

.field private final Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

.field protected final Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field public WAv:Z

.field public hm:I

.field protected zc:Lcom/bytedance/sdk/openadsdk/WAv/Tgh;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ROR$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/ROR$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ROR;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->zc:Lcom/bytedance/sdk/openadsdk/WAv/Tgh;

    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    .line 43
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 44
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    return-void
.end method

.method private Qhi(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 10

    .line 119
    new-instance v9, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;

    const-string v2, "Reward_executeMultiProcessCallback"

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ROR;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v9, v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac(Lcom/bytedance/sdk/component/Sf/hm;I)V

    return-void
.end method

.method private cJ(Ljava/lang/String;)V
    .locals 2

    .line 132
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ROR$3;

    const-string v1, "FullScreen_executeMultiProcessCallback"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ROR;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac(Lcom/bytedance/sdk/component/Sf/hm;I)V

    return-void
.end method


# virtual methods
.method public CJ(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method protected CQU()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;)V

    return-void
.end method

.method public Dww()Landroid/app/Activity;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ac()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected Eh()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->pA()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    const-string v0, "onAdShow"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->zc()V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hpZ()V

    return-void
.end method

.method public HzH()V
    .locals 0

    return-void
.end method

.method protected abstract MQ()Ljava/lang/String;
.end method

.method public abstract Qhi()Landroid/view/View;
.end method

.method public Qhi(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public Qhi(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public Qhi(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V
    .locals 0

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V
    .locals 0

    return-void
.end method

.method protected Qhi(Ljava/lang/String;)V
    .locals 8

    .line 109
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->a_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    .line 110
    const-string v7, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    return-void

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->cJ(Ljava/lang/String;)V

    return-void
.end method

.method protected final Qhi(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 10

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ABk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    const-string v2, "onRewardVerify"

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;ZILjava/lang/String;ILjava/lang/String;)V

    .line 192
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->iMK()V

    return-void
.end method

.method protected Qhi(ZZZI)V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;ZZZI)V

    return-void
.end method

.method protected final aP()V
    .locals 1

    .line 176
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "onAdVideoBarClick"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Ljava/lang/String;)V

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv()V

    return-void
.end method

.method protected abstract a_()Z
.end method

.method protected final ac(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Gm:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi(I)Landroid/os/IBinder;

    move-result-object p1

    .line 150
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi/Qhi;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Gm:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Gm:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object p1
.end method

.method public ac(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public abstract b_()Ljava/lang/String;
.end method

.method public bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    return-object v0
.end method

.method public cJ(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public fl(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public iMK()V
    .locals 0

    return-void
.end method

.method public pA()V
    .locals 0

    return-void
.end method

.method public pM()V
    .locals 1

    .line 156
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "onAdClose"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm()V

    return-void
.end method

.method public abstract tP()Z
.end method
