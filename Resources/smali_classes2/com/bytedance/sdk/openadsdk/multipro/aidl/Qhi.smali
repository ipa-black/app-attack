.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;
.super Ljava/lang/Object;
.source "BinderPool.java"


# static fields
.field private static final cJ:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;


# instance fields
.field private CJ:J

.field private Qhi:Lcom/bytedance/sdk/openadsdk/IBinderPool;

.field private final Tgh:Landroid/os/IBinder$DeathRecipient;

.field private ac:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ;

.field private final fl:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->CJ:J

    .line 164
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->fl:Landroid/content/ServiceConnection;

    .line 200
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi$3;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Tgh:Landroid/os/IBinder$DeathRecipient;

    .line 48
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->CJ()V

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->CJ:J

    return-wide v0
.end method

.method private CJ()V
    .locals 1

    .line 154
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->ac()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;Lcom/bytedance/sdk/openadsdk/IBinderPool;)Lcom/bytedance/sdk/openadsdk/IBinderPool;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    return-object p1
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;
    .locals 1

    .line 52
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;

    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;)Lcom/bytedance/sdk/openadsdk/IBinderPool;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Tgh:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->CJ()V

    return-void
.end method


# virtual methods
.method public Qhi(I)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    .line 104
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi/cJ;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi/fl;->Qhi()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi/fl;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi/ROR;->cJ()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi/ROR;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi/Tgh;->Qhi()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi/Tgh;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi/Sf;->Qhi()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi/Sf;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    .line 140
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    if-eqz v1, :cond_6

    .line 141
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/IBinderPool;->queryBinder(I)Landroid/os/IBinder;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 144
    const-string v1, "TTAD.BinderPool"

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string p1, "queryBinder error"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Sf(Ljava/lang/String;)V

    :catchall_0
    :cond_6
    :goto_1
    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ;)V
    .locals 1

    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ;

    .line 89
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    if-eqz p1, :cond_0

    .line 90
    new-instance p1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi$1;

    const-string v0, "onServiceConnected2"

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;I)V

    :cond_0
    return-void
.end method

.method public ac()V
    .locals 4

    .line 75
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->fl:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->CJ:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public cJ()V
    .locals 3

    .line 60
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
