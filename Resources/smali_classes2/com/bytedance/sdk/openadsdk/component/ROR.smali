.class public Lcom/bytedance/sdk/openadsdk/component/ROR;
.super Ljava/lang/Object;
.source "TTAppOpenAdCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/ROR$Qhi;,
        Lcom/bytedance/sdk/openadsdk/component/ROR$fl;,
        Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;,
        Lcom/bytedance/sdk/openadsdk/component/ROR$ac;
    }
.end annotation


# static fields
.field private static volatile Qhi:Lcom/bytedance/sdk/openadsdk/component/ROR;


# instance fields
.field private final CJ:Landroid/content/Context;

.field private final ac:Lcom/bytedance/sdk/openadsdk/core/tP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/tP<",
            "Lcom/bytedance/sdk/openadsdk/cJ/Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private final cJ:Lcom/bytedance/sdk/openadsdk/Qhi/cJ;

.field private final fl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR;->fl:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR;->CJ:Landroid/content/Context;

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR;->CJ:Landroid/content/Context;

    .line 102
    :goto_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/Qhi/cJ;

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {p1, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/Qhi/cJ;-><init>(IIZ)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/Qhi/cJ;

    .line 103
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->ac()Lcom/bytedance/sdk/openadsdk/core/tP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR;->ac:Lcom/bytedance/sdk/openadsdk/core/tP;

    return-void
.end method

.method public static Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/ROR;
    .locals 2

    .line 107
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/ROR;

    if-nez v0, :cond_1

    .line 108
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/ROR;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/ROR;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/ROR;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/ROR;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/ROR;

    .line 112
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 114
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/ROR;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;)V
    .locals 7

    .line 251
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v2

    .line 252
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/ROR$4;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/ROR$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/ROR;ILcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/component/ROR$ac;)V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/ROR$fl;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/ROR$fl;I)V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/ROR$fl;I)V
    .locals 3

    .line 124
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v1

    .line 129
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ac()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->cJ()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/fl/Gm;->cJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v1

    .line 131
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->CJ(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/fl/Gm;->fl(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v1

    .line 132
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/fl/Gm;->CJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v1

    const/4 v2, 0x2

    .line 133
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/fl/Gm;->ac(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/ROR$2;

    invoke-direct {v2, p2}, Lcom/bytedance/sdk/openadsdk/component/ROR$2;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/hm;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/ROR$1;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/component/ROR$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/ROR$fl;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/ROR/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/component/fl/HzH;)V

    .line 144
    invoke-interface {p2, v1}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;)Lcom/bytedance/sdk/component/fl/WAv;

    return-void
.end method

.method private ac(Lcom/bytedance/sdk/openadsdk/AdSlot;)I
    .locals 5

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "material_expiration_time"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tt_openad"

    const-wide/16 v1, -0x1

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 763
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "local cache number : "

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR;->fl:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR;->fl:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/ROR;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;)V

    return-void
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;)V
    .locals 1

    .line 621
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/ROR$Qhi;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ROR$Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;I)V

    return-void
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;)V
    .locals 7

    .line 277
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v2

    .line 278
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/ROR$5;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/ROR$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/ROR;ILcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-virtual {p0, p1, p3, v6}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;)V

    return-void
.end method


# virtual methods
.method public CJ(I)Z
    .locals 2

    .line 538
    const-string v0, "image_has_cached"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "tt_openad"

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 632
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Gm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 635
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Gm()Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->iMK()Ljava/lang/String;

    move-result-object p1

    .line 638
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/Tgh;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 639
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/ROR/Qhi;->Qhi(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 640
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public Qhi()V
    .locals 4

    .line 715
    :try_start_0
    const-string v0, "tt_openad_materialMeta"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;)V

    .line 716
    const-string v0, "tt_openad"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR;->CJ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/ROR$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/ROR$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/ROR;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 737
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 739
    :try_start_2
    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/ROR;->ac(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_2
    :cond_0
    return-void
.end method

.method public Qhi(I)V
    .locals 2

    .line 514
    const-string v0, "video_has_cached"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "tt_openad"

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 174
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR;->fl:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 181
    :cond_1
    const-string v1, "local Requesting:"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 182
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->ac(Lcom/bytedance/sdk/openadsdk/AdSlot;)I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_2

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ",The number of preloads exceeds the limit "

    filled-new-array {p1, v1, v0}, [Ljava/lang/Object;

    return-void

    .line 187
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 188
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR;->fl:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;-><init>()V

    .line 190
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;)V

    .line 192
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/model/qMt;-><init>()V

    .line 193
    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    const/4 v2, 0x2

    .line 194
    iput v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->CJ:I

    .line 195
    iput v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Sf:I

    .line 196
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR;->ac:Lcom/bytedance/sdk/openadsdk/core/tP;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/ROR$3;

    invoke-direct {v3, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/ROR$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;)V

    const/4 v0, 0x3

    invoke-interface {v2, p1, v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;)V
    .locals 4

    .line 548
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ura()J

    move-result-wide v0

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "material_expiration_time"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;->Qhi()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tt_openad"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 551
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->cJ(Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/component/ROR$ac;)V
    .locals 9

    .line 305
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v3

    .line 306
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v2

    .line 307
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Gm()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->iMK()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/Tgh;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/ROR/Qhi;->Qhi(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 316
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/ROR/Qhi;->Qhi(Ljava/io/File;)V

    .line 321
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(I)V

    .line 324
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->ac()J

    move-result-wide v0

    if-eqz p3, :cond_1

    .line 326
    invoke-virtual {p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi(J)V

    const/4 p2, 0x1

    .line 327
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi(I)V

    .line 330
    :cond_1
    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/component/ROR$ac;->Qhi()V

    const/4 p2, 0x0

    .line 333
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/ROR$fl;)V

    return-void

    .line 339
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->pM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/hpZ;->CJ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 p1, 0x64

    .line 340
    const-string p2, "OnlyWifi"

    invoke-interface {p4, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/ROR$ac;->Qhi(ILjava/lang/String;)V

    return-void

    .line 344
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    move-result-object v8

    .line 345
    const-string v0, "material_meta"

    invoke-virtual {v8, v0, p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    const-string v0, "ad_slot"

    invoke-virtual {v8, v0, p2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/ROR$6;

    move-object v0, p2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/ROR$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/ROR;ILcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/component/ROR$ac;Ljava/io/File;)V

    invoke-static {v8, p2}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;)V
    .locals 12

    .line 431
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v3

    .line 432
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v2

    .line 433
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    .line 434
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ROR()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ()I

    move-result v7

    .line 437
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ac()I

    move-result v8

    .line 438
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/bytedance/sdk/component/utils/Tgh;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v1

    .line 439
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p3, :cond_1

    .line 441
    invoke-interface {p3}, Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;->Qhi()V

    :cond_1
    return-void

    .line 445
    :cond_2
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/component/ROR/Qhi;->cJ(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 448
    invoke-virtual {p0, v4, v1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 451
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/ROR;->ac(I)V

    .line 454
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->ac()J

    move-result-wide v0

    if-eqz p2, :cond_3

    .line 456
    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi(J)V

    const/4 p1, 0x1

    .line 457
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi(I)V

    :cond_3
    const/4 p1, 0x0

    .line 460
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;)V

    return-void

    .line 464
    :cond_4
    new-instance v10, Lcom/bytedance/sdk/openadsdk/iMK/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ROR()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v4, v0}, Lcom/bytedance/sdk/openadsdk/iMK/Qhi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    new-instance v11, Lcom/bytedance/sdk/openadsdk/component/ROR$7;

    move-object v0, v11

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/ROR$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/ROR;ILcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;)V

    .line 507
    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    .line 466
    invoke-static {v10, v7, v8, v11, p1}, Lcom/bytedance/sdk/openadsdk/utils/pA;->Qhi(Lcom/bytedance/sdk/openadsdk/iMK/Qhi;IILcom/bytedance/sdk/openadsdk/utils/pA$Qhi;Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(Ljava/io/File;)V
    .locals 2

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/Qhi/cJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Qhi/cJ;->Qhi(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 696
    const-string v0, "TTAppOpenAdCacheManager"

    const-string v1, "trimFileCache fail"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 659
    const-string v0, "TTAppOpenAdCacheManager"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Tgh;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 660
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/ROR/Qhi;->cJ(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 663
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 667
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 669
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v3, :cond_3

    .line 673
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2, v5}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 676
    :cond_2
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ".0"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    return v4

    :catch_1
    move-exception p1

    .line 684
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public ROR(I)V
    .locals 3

    .line 704
    const-string v0, "material"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tt_openad_materialMeta"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v0, "material_expiration_time"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tt_openad"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v0, "video_has_cached"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v0, "image_has_cached"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Tgh(I)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 3

    .line 588
    const-string v0, "TTAppOpenAdCacheManager"

    const-string v1, "material"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tt_openad_materialMeta"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 589
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 593
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 594
    const-string p1, "message"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 595
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Qhi;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 597
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v2

    .line 600
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_0

    return-object p1

    :catch_1
    move-exception p1

    .line 608
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v2
.end method

.method public ac(I)V
    .locals 2

    .line 531
    const-string v0, "image_has_cached"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "tt_openad"

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public cJ()Ljava/lang/String;
    .locals 2

    .line 752
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getRootDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/openad_image_cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 756
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "//openad_image_cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public cJ(I)Z
    .locals 2

    .line 521
    const-string v0, "video_has_cached"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "tt_openad"

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 647
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    .line 651
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ROR()Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object p1

    .line 653
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public fl(I)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 9

    .line 557
    const-string v0, "material_expiration_time"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tt_openad"

    const-wide/16 v2, -0x1

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 559
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Tgh(I)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v4

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    cmp-long v5, v5, v0

    if-gez v5, :cond_0

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    if-nez v4, :cond_1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 569
    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->ROR(I)V

    if-eqz v4, :cond_2

    .line 573
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
