.class public Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/cJ;
.super Ljava/lang/Object;
.source "RewardFullDataManager.java"


# static fields
.field private static final Qhi:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/cJ;->Qhi:Landroid/util/SparseArray;

    return-void
.end method

.method public static Qhi(Landroid/content/Intent;Landroid/os/Bundle;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 4

    .line 51
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    const-string v1, ""

    const-string v2, "TTAD.RFDM"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_3

    .line 54
    :try_start_0
    const-string p2, "multi_process_ad_info"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 56
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->cJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/model/MQ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    invoke-static {v2, v1, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi()Lcom/bytedance/sdk/openadsdk/core/Dww;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dww;->ROR()Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 65
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/model/MQ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 68
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->Qhi(Landroid/os/Bundle;)V

    .line 70
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi()Lcom/bytedance/sdk/openadsdk/core/Dww;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Tgh()V

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 76
    :try_start_1
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/cJ;->Qhi:Landroid/util/SparseArray;

    const-string p2, "meta_tmp"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_4

    .line 78
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/model/tP;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 81
    invoke-static {v2, v1, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 85
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HzH()I

    move-result p0

    const/4 p1, 0x7

    invoke-virtual {v3, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(II)V

    :cond_5
    return-object v3
.end method

.method public static Qhi(Landroid/content/Intent;Landroid/app/Activity;ZLcom/bytedance/sdk/openadsdk/core/model/Qhi;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 145
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 150
    const-string v0, "TTAD.RFDM"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    .line 153
    :goto_1
    const-string v0, "orientation_angle"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string p1, "video_is_cached"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 158
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->zc()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    .line 160
    const-string p0, "toJsonObj return null"

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    return-void

    .line 163
    :cond_1
    const-string p2, "multi_process_ad_info"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string p1, "multi_process_listener_key"

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    .line 167
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi()Lcom/bytedance/sdk/openadsdk/core/Dww;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Tgh()V

    .line 168
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi()Lcom/bytedance/sdk/openadsdk/core/Dww;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    return-void
.end method

.method public static Qhi(Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    const-string v1, "video_is_cached"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ac(Z)V

    .line 100
    const-string v0, "multi_process_listener_key"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->MND:Ljava/lang/String;

    .line 102
    const-string v0, "orientation_angle"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/4 v2, 0x1

    .line 103
    :cond_1
    iput-boolean v2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dVA:Z

    return-void
.end method

.method public static Qhi(Landroid/os/Bundle;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 113
    :cond_0
    const-string v0, "multi_process_listener_key"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->MND:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    const-string v1, "video_is_cached"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ac(Z)V

    .line 115
    const-string v0, "is_mute"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    .line 116
    const-string v0, "video_current"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 117
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(J)V

    .line 119
    :cond_1
    const-string v0, "has_show_skip_btn"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qhi(Z)V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/cJ;->Qhi(Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    .line 42
    invoke-static {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/cJ;->Qhi(Landroid/os/Bundle;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 129
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/cJ;->Qhi:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 130
    const-string v1, "meta_tmp"

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    const-string v0, "multi_process_listener_key"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->MND:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "video_is_cached"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Dww()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    const-string v0, "video_current"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 135
    const-string v0, "is_mute"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    const-string v0, "has_show_skip_btn"

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zjb:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 138
    const-string p1, "TTAD.RFDM"

    const-string v0, "onSaveInstanceState: "

    invoke-static {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
