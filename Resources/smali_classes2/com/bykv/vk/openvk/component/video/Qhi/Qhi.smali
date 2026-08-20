.class public Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;
.super Ljava/lang/Object;
.source "MediaConfig.java"


# static fields
.field public static CJ:I = 0xa

.field public static Qhi:I = 0xa

.field public static ac:I = 0xa

.field public static cJ:I = 0xa

.field private static fl:Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static CJ()I
    .locals 1

    .line 90
    sget v0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->ac:I

    return v0
.end method

.method public static Qhi()V
    .locals 1

    .line 77
    sget-object v0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->fl:Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;->CJ()V

    :cond_0
    return-void
.end method

.method public static Qhi(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/api/Tgh/Qhi;->Qhi(Landroid/content/Context;)V

    return-void
.end method

.method public static Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;)V
    .locals 0

    .line 72
    sput-object p0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->fl:Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    return-void
.end method

.method public static Qhi(Lorg/json/JSONObject;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 47
    :cond_0
    :try_start_0
    const-string v0, "splash"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->Qhi:I

    .line 48
    const-string v0, "reward"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->cJ:I

    .line 49
    const-string v0, "brand"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->ac:I

    .line 50
    const-string v0, "other"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->CJ:I

    .line 52
    sget v0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->Qhi:I

    if-gez v0, :cond_1

    .line 53
    sput v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->Qhi:I

    .line 55
    :cond_1
    sget v0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->cJ:I

    if-gez v0, :cond_2

    .line 56
    sput v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->cJ:I

    .line 58
    :cond_2
    sget v0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->ac:I

    if-gez v0, :cond_3

    .line 59
    sput v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->ac:I

    :cond_3
    if-gez p0, :cond_4

    .line 62
    sput v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->CJ:I

    .line 64
    :cond_4
    const-string v0, "splash="

    sget p0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->Qhi:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ",reward="

    sget p0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->cJ:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ",brand="

    sget p0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->ac:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ",other="

    sget p0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->CJ:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static ac()I
    .locals 1

    .line 87
    sget v0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->cJ:I

    return v0
.end method

.method public static cJ()I
    .locals 1

    .line 83
    sget v0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->Qhi:I

    return v0
.end method

.method public static fl()I
    .locals 1

    .line 93
    sget v0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->CJ:I

    return v0
.end method
