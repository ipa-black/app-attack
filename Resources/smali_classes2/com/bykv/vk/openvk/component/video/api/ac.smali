.class public Lcom/bykv/vk/openvk/component/video/api/ac;
.super Ljava/lang/Object;
.source "VideoConfig.java"


# static fields
.field private static CJ:Z = false

.field public static Qhi:Z = false

.field private static Tgh:I = 0x1

.field private static ac:Ljava/lang/String;

.field private static cJ:Landroid/content/Context;

.field private static fl:Lcom/bytedance/sdk/component/cJ/Qhi/zc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static CJ()Lcom/bytedance/sdk/component/cJ/Qhi/zc;
    .locals 4

    .line 71
    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/ac;->fl:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;

    const-string v1, "v_config"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    .line 73
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Qhi(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->cJ(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 75
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->ac(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/openvk/component/video/api/ac;->fl:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    .line 79
    :cond_0
    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/ac;->fl:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    return-object v0
.end method

.method public static Qhi()Landroid/content/Context;
    .locals 1

    .line 30
    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/ac;->cJ:Landroid/content/Context;

    return-object v0
.end method

.method public static Qhi(I)V
    .locals 0

    .line 95
    sput p0, Lcom/bykv/vk/openvk/component/video/api/ac;->Tgh:I

    return-void
.end method

.method public static Qhi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 58
    sput-object p0, Lcom/bykv/vk/openvk/component/video/api/ac;->cJ:Landroid/content/Context;

    .line 59
    sput-object p1, Lcom/bykv/vk/openvk/component/video/api/ac;->ac:Ljava/lang/String;

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/zc;)V
    .locals 0

    .line 83
    sput-object p0, Lcom/bykv/vk/openvk/component/video/api/ac;->fl:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    return-void
.end method

.method public static Qhi(Z)V
    .locals 0

    .line 67
    sput-boolean p0, Lcom/bykv/vk/openvk/component/video/api/ac;->CJ:Z

    return-void
.end method

.method public static Tgh()I
    .locals 1

    .line 99
    sget v0, Lcom/bykv/vk/openvk/component/video/api/ac;->Tgh:I

    return v0
.end method

.method public static ac()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/api/ac;->CJ:Z

    return v0
.end method

.method public static cJ()Ljava/lang/String;
    .locals 3

    .line 38
    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/ac;->ac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ac;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ttad_dir"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/openvk/component/video/api/ac;->ac:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :catchall_0
    :cond_1
    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/ac;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public static fl()Z
    .locals 1

    .line 91
    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/api/ac;->Qhi:Z

    return v0
.end method
