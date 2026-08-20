.class public Lcom/bytedance/sdk/openadsdk/utils/ABk;
.super Ljava/lang/Object;
.source "IPMiEventWatcher.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/oem/Qhi;


# static fields
.field private static final Qhi:Lcom/bytedance/sdk/openadsdk/utils/ABk;

.field private static ac:Z

.field private static cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ABk;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/ABk;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/utils/ABk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic CJ()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ABk;->ac:Z

    return v0
.end method

.method public static Qhi()V
    .locals 1

    .line 59
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ABk;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ABk;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    .line 66
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Qhi()V

    :cond_1
    const/4 v0, 0x0

    .line 70
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ABk;->ac:Z

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->NLs()Lcom/bytedance/sdk/openadsdk/core/model/EBS;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/EBS;->Qhi()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    sput-object p0, Lcom/bytedance/sdk/openadsdk/utils/ABk;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    .line 45
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 47
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/utils/ABk;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Qhi(Lcom/bytedance/sdk/openadsdk/oem/Qhi;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic ac()Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;
    .locals 1

    .line 29
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ABk;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    return-object v0
.end method

.method public static cJ()V
    .locals 1

    const/4 v0, 0x1

    .line 77
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ABk;->ac:Z

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;I)V
    .locals 2

    .line 86
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ABk;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 99
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->ac()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 106
    :cond_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/ABk$1;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/utils/ABk$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/ABk;I)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
