.class public Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"


# instance fields
.field final Qhi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;",
            ">;>;"
        }
    .end annotation
.end field

.field private cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi:Ljava/util/Set;

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Tgh;->Qhi(Landroid/content/Context;)V

    return-void
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 1

    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;-><init>()V

    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Tgh()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ(I)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;Landroid/view/View;Ljava/util/Set;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ(Landroid/view/View;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;Landroid/webkit/WebView;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ(Z)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;ZF)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ(ZF)V

    return-void
.end method

.method private ROR()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;->CJ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private Sf()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;->ac()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private Tgh()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;->cJ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Sf()V

    return-void
.end method

.method private cJ(I)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    if-eqz v0, :cond_0

    .line 355
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;->cJ(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private cJ(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 280
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;->Qhi(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    .line 282
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 283
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;->Qhi(Ljava/util/Set;)V

    .line 284
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private cJ(Landroid/view/View;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/ROR/Gm;",
            ">;)V"
        }
    .end annotation

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    if-nez v0, :cond_0

    .line 106
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/hm;->Qhi(Landroid/view/View;Ljava/util/Set;)Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 109
    const-string p2, "createVideoSession failed : "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    .line 110
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 111
    const-string v0, "scene"

    const-string v1, "createVideoSession"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/Tgh;->Qhi(Ljava/util/Map;)V

    return-void
.end method

.method private cJ(Landroid/webkit/WebView;)V
    .locals 3

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    if-nez v0, :cond_0

    .line 70
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/hm;->Qhi(Landroid/webkit/WebView;)Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 73
    const-string v0, "createWebViewSession failed : "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    const-string v1, "scene"

    const-string v2, "createWebViewSession"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Tgh;->Qhi(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->ROR()V

    return-void
.end method

.method private cJ(Z)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    if-eqz v0, :cond_0

    .line 331
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;->Qhi(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private cJ(ZF)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 158
    :try_start_0
    invoke-virtual {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;->Qhi(ZF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private fl()Landroid/os/Handler;
    .locals 1

    .line 42
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->cJ()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public CJ()V
    .locals 2

    .line 208
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Sf()V

    return-void

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->fl()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(I)V
    .locals 2

    .line 340
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ(I)V

    return-void

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->fl()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(JZ)V
    .locals 2

    .line 293
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ(JZ)V

    return-void

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->fl()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;JZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .locals 2

    .line 259
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    return-void

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->fl()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(Landroid/view/View;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/ROR/Gm;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ(Landroid/view/View;Ljava/util/Set;)V

    return-void

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->fl()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;Landroid/view/View;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public Qhi(Landroid/webkit/WebView;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ(Landroid/webkit/WebView;)V

    return-void

    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->fl()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public Qhi(Z)V
    .locals 2

    .line 316
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ(Z)V

    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->fl()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(ZF)V
    .locals 2

    .line 143
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ(ZF)V

    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->fl()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;ZF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ac()V
    .locals 2

    .line 175
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->ROR()V

    return-void

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->fl()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cJ()V
    .locals 2

    .line 119
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Tgh()V

    return-void

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->fl()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cJ(JZ)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;

    if-eqz v0, :cond_0

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 308
    :try_start_0
    invoke-virtual {v0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/ROR/Sf;->Qhi(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
