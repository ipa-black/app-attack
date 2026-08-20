.class public Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;
.super Ljava/lang/Object;
.source "AdActAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;,
        Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;,
        Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;
    }
.end annotation


# instance fields
.field private ABk:Z

.field private CJ:Ljava/lang/String;

.field private Gm:Z

.field private HzH:Lcom/bytedance/sdk/openadsdk/core/act/cJ;

.field public Qhi:Landroidx/browser/customtabs/EngagementSignalsCallback;

.field private ROR:Landroidx/browser/customtabs/CustomTabsSession;

.field private Sf:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

.field private Tgh:Landroidx/browser/customtabs/CustomTabsClient;

.field private WAv:Z

.field private ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private cJ:Landroid/content/Context;

.field private fl:Ljava/lang/String;

.field private hm:Z

.field private hpZ:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

.field private iMK:J

.field private kYc:Landroidx/browser/customtabs/CustomTabsCallback;

.field private pA:Ljava/lang/Long;

.field private zc:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Tgh:Landroidx/browser/customtabs/CustomTabsClient;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->hm:Z

    .line 55
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->WAv:Z

    .line 56
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Gm:Z

    .line 57
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->zc:Z

    .line 58
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ABk:Z

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->iMK:J

    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->HzH:Lcom/bytedance/sdk/openadsdk/core/act/cJ;

    .line 123
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Qhi:Landroidx/browser/customtabs/EngagementSignalsCallback;

    .line 177
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->kYc:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 255
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->cJ:Landroid/content/Context;

    .line 256
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 257
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->CJ:Ljava/lang/String;

    .line 258
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->fl:Ljava/lang/String;

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->iMK:J

    return-wide v0
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Gm:Z

    return p1
.end method

.method static synthetic Gm(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ABk:Z

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->iMK:J

    return-wide p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Landroidx/browser/customtabs/CustomTabsSession;)Landroidx/browser/customtabs/CustomTabsSession;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ROR:Landroidx/browser/customtabs/CustomTabsSession;

    return-object p1
.end method

.method private Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;
    .locals 2

    .line 338
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;-><init>()V

    .line 339
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->CJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 341
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->cJ(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(I)V

    const/4 p1, 0x0

    .line 343
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(Z)V

    const/16 p1, 0x8

    .line 344
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->cJ(I)V

    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;)Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sf:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->pA:Ljava/lang/Long;

    return-object p1
.end method

.method private Qhi()V
    .locals 2

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sf:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->cJ:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Tgh:Landroidx/browser/customtabs/CustomTabsClient;

    .line 294
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ROR:Landroidx/browser/customtabs/CustomTabsSession;

    .line 295
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sf:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 297
    const-string v1, "AdActAction"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Qhi(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 5

    .line 89
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Tgh:Landroidx/browser/customtabs/CustomTabsClient;

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->kYc:Landroidx/browser/customtabs/CustomTabsCallback;

    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ROR:Landroidx/browser/customtabs/CustomTabsSession;

    const/16 p1, 0x9

    .line 91
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    move-result-object p1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ROR:Landroidx/browser/customtabs/CustomTabsSession;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsSession;->isEngagementSignalsApiAvailable(Landroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 96
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ROR:Landroidx/browser/customtabs/CustomTabsSession;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Qhi:Landroidx/browser/customtabs/EngagementSignalsCallback;

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroidx/browser/customtabs/CustomTabsSession;->setEngagementSignalsCallback(Landroidx/browser/customtabs/EngagementSignalsCallback;Landroid/os/Bundle;)Z

    move-result v2

    const/4 v3, 0x1

    .line 97
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->ac(I)V

    .line 98
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi(I)V

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->CJ(I)V

    .line 101
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->cJ(I)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->cJ(I)V

    :goto_0
    move v1, v2

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->ac(I)V

    .line 107
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi(I)V

    .line 109
    :goto_1
    const-string v2, "pagact:  api="

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "  event="

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v2, v0, v3, v1}, [Ljava/lang/Object;

    .line 111
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;)V

    .line 112
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->hpZ:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

    if-eqz p1, :cond_2

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ROR:Landroidx/browser/customtabs/CustomTabsSession;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;->onBindSuccess(Landroidx/browser/customtabs/CustomTabsSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->hpZ:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

    if-eqz v0, :cond_3

    const/16 v1, 0xb

    .line 117
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;->onBindFail(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Qhi(Landroidx/browser/customtabs/CustomTabsClient;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private Qhi(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 7

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$2;

    invoke-direct {v6, p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Lorg/json/JSONObject;J)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->hm:Z

    return p1
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->WAv:Z

    return p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Ljava/lang/Long;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->pA:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->zc:Z

    return p0
.end method

.method static synthetic WAv(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Qhi()V

    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->fl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->WAv:Z

    return p1
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Landroidx/browser/customtabs/CustomTabsClient;)Landroidx/browser/customtabs/CustomTabsClient;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Tgh:Landroidx/browser/customtabs/CustomTabsClient;

    return-object p1
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->hm:Z

    return p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->zc:Z

    return p1
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->cJ:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic hm(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Gm:Z

    return p0
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;)V
    .locals 2

    .line 262
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->hpZ:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

    .line 263
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->cJ:Landroid/content/Context;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 268
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    move-result-object p1

    .line 269
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;)V

    .line 270
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->cJ:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 275
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->HzH:Lcom/bytedance/sdk/openadsdk/core/act/cJ;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/cJ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sf:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    .line 276
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->cJ:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 279
    const-string v0, "AdActAction"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->hpZ:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

    if-eqz v0, :cond_2

    const/16 v1, 0xa

    .line 281
    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;->onBindFail(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
