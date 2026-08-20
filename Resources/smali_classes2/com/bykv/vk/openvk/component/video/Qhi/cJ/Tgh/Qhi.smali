.class public Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;
.super Ljava/lang/Object;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;,
        Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$cJ;
    }
.end annotation


# static fields
.field public static final Qhi:Z


# instance fields
.field private ac:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;

.field private cJ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/Tgh/ac;->ac()Z

    move-result v0

    sput-boolean v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;->Qhi:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;->cJ:Ljava/util/HashMap;

    .line 40
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;->cJ()Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;-><init>()V

    return-void
.end method

.method public static Qhi()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;
    .locals 1

    .line 44
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$cJ;->Qhi()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;

    move-result-object v0

    return-object v0
.end method

.method private static ac()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;
    .locals 4

    .line 148
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ac;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "proxy_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 153
    :cond_0
    :try_start_0
    new-instance v1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;

    invoke-direct {v1, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v2, 0x6400000

    .line 154
    :try_start_1
    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;->Qhi(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :catch_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;->ac:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->iMK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->iMK()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v2

    .line 132
    :goto_0
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ROR;->Qhi()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ROR;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v1, v4

    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ROR;->Qhi(ZZLjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public cJ()Z
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;->ac:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 64
    :cond_0
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;->ac()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 66
    :cond_1
    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->Qhi(Z)V

    .line 67
    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->cJ(Z)V

    .line 68
    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->Qhi(I)V

    .line 69
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ROR;->Qhi()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ROR;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ROR;->CJ()V

    .line 72
    :try_start_0
    new-instance v3, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;

    invoke-direct {v3, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;)V

    iput-object v3, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;->ac:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;

    .line 73
    const-string v4, "csj_video_cache_preloader"

    invoke-virtual {v3, v4}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->setName(Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi;->ac:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh/Qhi$Qhi;->start()V

    .line 75
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ac;->Qhi()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;Landroid/content/Context;)V

    .line 76
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->ac()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->ac()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;

    move-result-object v0

    const v2, 0x9fffff

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->Qhi(I)V

    return v1

    :catch_0
    return v2
.end method
