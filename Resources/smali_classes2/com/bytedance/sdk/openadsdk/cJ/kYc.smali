.class public Lcom/bytedance/sdk/openadsdk/cJ/kYc;
.super Ljava/lang/Object;
.source "WebviewTimeTrack.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;


# instance fields
.field private CJ:Ljava/lang/Boolean;

.field private Qhi:Ljava/lang/String;

.field private ROR:Lorg/json/JSONArray;

.field private Sf:Lorg/json/JSONArray;

.field private Tgh:Lorg/json/JSONObject;

.field private ac:Ljava/lang/Boolean;

.field private cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private fl:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "embeded_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi:Ljava/lang/String;

    .line 32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->ac:Ljava/lang/Boolean;

    .line 33
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->CJ:Ljava/lang/Boolean;

    .line 34
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->fl:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "embeded_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi:Ljava/lang/String;

    .line 32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->ac:Ljava/lang/Boolean;

    .line 33
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->CJ:Ljava/lang/Boolean;

    .line 34
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->fl:Ljava/lang/Boolean;

    .line 63
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 65
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Tgh:Lorg/json/JSONObject;

    .line 66
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->ROR:Lorg/json/JSONArray;

    .line 67
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Sf:Lorg/json/JSONArray;

    .line 68
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Tgh:Lorg/json/JSONObject;

    const-string p3, "webview_source"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)Lorg/json/JSONArray;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Sf:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->CJ:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Lorg/json/JSONArray;Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi(Lorg/json/JSONArray;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private Qhi(Lorg/json/JSONArray;Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 419
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 414
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    if-eqz p1, :cond_2

    .line 399
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    .line 403
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    return-void

    .line 406
    :cond_1
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)Lorg/json/JSONArray;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->ROR:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)Lorg/json/JSONObject;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Tgh:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)Z
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->hpZ()Z

    move-result p0

    return p0
.end method

.method private hpZ()Z
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->fl:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->CJ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->ac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public ABk()V
    .locals 2

    .line 457
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$14;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$14;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public CJ()V
    .locals 2

    .line 142
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$25;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$25;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public CJ(Ljava/lang/String;)V
    .locals 2

    .line 498
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$17;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$17;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Gm()V
    .locals 1

    .line 346
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->ac:Ljava/lang/Boolean;

    return-void
.end method

.method public Qhi()V
    .locals 2

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$1;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(I)V
    .locals 2

    .line 576
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$22;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$22;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(ILjava/lang/String;)V
    .locals 2

    .line 112
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$23;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$23;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 2

    .line 292
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$7;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$7;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(Ljava/lang/String;JJI)V
    .locals 10

    .line 251
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v9, Lcom/bytedance/sdk/openadsdk/cJ/kYc$5;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p4

    move-wide v6, p2

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$5;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Ljava/lang/String;JJI)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 2

    .line 180
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$28;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$28;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 350
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->fl:Ljava/lang/Boolean;

    return-void
.end method

.method public ROR()V
    .locals 2

    .line 197
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$29;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$29;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ROR(Ljava/lang/String;)V
    .locals 2

    .line 563
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$21;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$21;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sf()V
    .locals 2

    .line 210
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$2;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Tgh()V
    .locals 2

    .line 167
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$27;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$27;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Tgh(Ljava/lang/String;)V
    .locals 2

    .line 529
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$19;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$19;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 539
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public WAv()V
    .locals 2

    .line 237
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$4;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ac()V
    .locals 2

    .line 129
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$24;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$24;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ac(ILjava/lang/String;)V
    .locals 2

    .line 546
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$20;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 557
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 2

    .line 429
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$11;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$11;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cJ()V
    .locals 2

    .line 100
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$12;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$12;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cJ(ILjava/lang/String;)V
    .locals 2

    .line 442
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$13;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 2

    .line 309
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$8;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$8;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cJ(Ljava/lang/String;JJI)V
    .locals 10

    .line 271
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v9, Lcom/bytedance/sdk/openadsdk/cJ/kYc$6;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p4

    move-wide v6, p2

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$6;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Ljava/lang/String;JJI)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cJ(Lorg/json/JSONObject;)V
    .locals 2

    .line 327
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$9;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$9;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fl()V
    .locals 2

    .line 155
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$26;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$26;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fl(Ljava/lang/String;)V
    .locals 2

    .line 512
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$18;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$18;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 522
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public hm()V
    .locals 2

    .line 223
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$3;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public iMK()V
    .locals 2

    .line 474
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$15;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$15;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pA()V
    .locals 2

    .line 486
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$16;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$16;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zc()V
    .locals 2

    .line 354
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc$10;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc$10;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
