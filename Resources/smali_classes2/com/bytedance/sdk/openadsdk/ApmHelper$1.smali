.class final Lcom/bytedance/sdk/openadsdk/ApmHelper$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "ApmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ApmHelper;->initApm(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/InitConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Landroid/content/Context;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/InitConfig;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/InitConfig;)V
    .locals 0

    .line 60
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->Qhi:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->cJ:Lcom/bytedance/sdk/openadsdk/InitConfig;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 66
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Qhi()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->dIT()Z

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Qhi(Z)Z

    .line 72
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->cJ()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->zn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->cJ:Lcom/bytedance/sdk/openadsdk/InitConfig;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/InitConfig;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    const/16 v2, 0x8

    .line 75
    new-array v8, v2, [Ljava/lang/String;

    const-string v2, "com.bytedance.sdk.component"

    aput-object v2, v8, v1

    const-string v2, "com.bytedance.sdk.mediation"

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const-string v2, "com.bytedance.sdk.openadsdk"

    const/4 v10, 0x2

    aput-object v2, v8, v10

    const/4 v2, 0x3

    const-string v3, "com.com.bytedance.overseas.sdk"

    aput-object v3, v8, v2

    const/4 v2, 0x4

    const-string v3, "com.pgl.ssdk"

    aput-object v3, v8, v2

    const/4 v2, 0x5

    const-string v3, "com.bykv.vk"

    aput-object v3, v8, v2

    const/4 v2, 0x6

    const-string v3, "com.iab.omid.library.bytedance2"

    aput-object v3, v8, v2

    const/4 v2, 0x7

    const-string v3, "com.bytedance.adsdk"

    aput-object v3, v8, v2

    .line 77
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->Qhi:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->zn()Ljava/lang/String;

    move-result-object v11

    .line 81
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->Qhi:Landroid/content/Context;

    const-string v4, "10000001"

    const-string v7, "6.2.0.6"

    const-wide/16 v5, 0x183e

    invoke-static/range {v3 .. v8}, Lcom/apm/insight/MonitorCrash;->initSDK(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    move-result-object v3

    .line 82
    new-instance v4, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$1;

    invoke-direct {v4, p0, v3}, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/ApmHelper$1;Lcom/apm/insight/MonitorCrash;)V

    invoke-virtual {v3, v4}, Lcom/apm/insight/MonitorCrash;->setCustomDataCallback(Lcom/apm/insight/AttachUserData;)Lcom/apm/insight/MonitorCrash;

    .line 95
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->VnT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v3}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v0

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "libnms.so"

    aput-object v5, v4, v1

    const-string v5, "libtobEmbedPagEncrypt.so"

    aput-object v5, v4, v9

    invoke-virtual {v0, v4}, Lcom/apm/insight/MonitorCrash$Config;->setSoList([Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    .line 100
    :cond_0
    invoke-virtual {v3}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/apm/insight/MonitorCrash$Config;->setDeviceId(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    .line 102
    invoke-virtual {v3, v11}, Lcom/apm/insight/MonitorCrash;->setReportUrl(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    .line 104
    const-string v0, "host_appid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->CJ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/apm/insight/MonitorCrash;->addTags(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    .line 105
    const-string v0, "sdk_version"

    const-string v4, "6.2.0.6"

    invoke-virtual {v3, v0, v4}, Lcom/apm/insight/MonitorCrash;->addTags(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    .line 106
    invoke-virtual {v3}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->fl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/apm/insight/MonitorCrash$Config;->setChannel(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    .line 107
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$2;

    invoke-direct {v0, p0, v3}, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$2;-><init>(Lcom/bytedance/sdk/openadsdk/ApmHelper$1;Lcom/apm/insight/MonitorCrash;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Qhi(Lcom/bytedance/sdk/openadsdk/ApmHelper$cJ;)Lcom/bytedance/sdk/openadsdk/ApmHelper$cJ;

    .line 113
    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->cJ(Z)Z

    .line 115
    invoke-static {v2, v11}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$3;-><init>(Lcom/bytedance/sdk/openadsdk/ApmHelper$1;)V

    sget-object v2, Lcom/apm/insight/CrashType;->ALL:Lcom/apm/insight/CrashType;

    invoke-virtual {v3, v0, v2}, Lcom/apm/insight/MonitorCrash;->registerCrashCallback(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V

    .line 128
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->ROR()Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;

    move-result-object v0

    const/4 v2, 0x0

    .line 129
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Qhi(Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;)Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;

    if-eqz v0, :cond_1

    .line 131
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Sf()Lcom/bytedance/sdk/openadsdk/ApmHelper$cJ;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;->Qhi:Ljava/lang/String;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;->cJ:Ljava/lang/String;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;->ac:Ljava/lang/Throwable;

    invoke-interface {v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper$cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->cJ(Z)Z

    .line 142
    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->hm()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
